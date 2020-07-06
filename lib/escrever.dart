import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'model/diario_model.dart';

class EscreverNoDiario extends StatefulWidget {
  @override
  _EscreverNoDiarioState createState() => _EscreverNoDiarioState();
}

class _EscreverNoDiarioState extends State<EscreverNoDiario> {
  //controles para os campos de texto
  TextEditingController txtTitulo = TextEditingController();
  TextEditingController txtDescricao = TextEditingController();

  //instância do Firebase
  var db = Firestore.instance;

  void getDocumento(String idDocumento) async {
    //Recuperar o documento no Firestore
    DocumentSnapshot doc =
        await db.collection("diario").document(idDocumento).get();

    setState(() {
      txtTitulo.text = doc.data["titulo"];
      txtDescricao.text = doc.data["descricao"].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    //
    // Recuperar o ID do documento
    //
    final String idDocumento = ModalRoute.of(context).settings.arguments;

    if (idDocumento != null) {
      if (txtTitulo.text == "" && txtDescricao.text == "") {
        getDocumento(idDocumento);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("O que de novo aconteceu? "),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: txtTitulo,
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1.5),
              decoration: InputDecoration(
                labelText: "Titulo",
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            TextField(
              maxLines: 3,
              controller: txtDescricao,
              style: TextStyle(
                  color: Colors.blueGrey, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                labelText: "Descricao",
                contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
              ),
            ),
            // SizedBox(
            //   height: 60,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                    color: Colors.blueAccent,
                    child: Text("salvar",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    onPressed: () {
                      //
                      // Inserir ou Atualizar
                      //
                      if (idDocumento == null) {
                        inserir(
                            context,
                            Diario(idDocumento, txtTitulo.text,
                                txtDescricao.text));
                      } else {
                        atualizar(
                            context,
                            Diario(idDocumento, txtTitulo.text,
                                txtDescricao.text));
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 120,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.blueAccent,
                    child: Text("cancelar",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  //
  // ATUALIZAR
  //
  void atualizar(BuildContext context, Diario diario) async {
    await db
        .collection("diario")
        .document(diario.id)
        .updateData({"titulo": diario.titulo, "descricao": diario.descricao});
    Navigator.pop(context);
  }

  //
  // INSERIR
  //
  void inserir(BuildContext context, Diario diario) async {
    await db.collection("diario").add({
      "titulo": diario.titulo,
      "descricao": diario.descricao,
    });
    Navigator.pop(context);
  }
}

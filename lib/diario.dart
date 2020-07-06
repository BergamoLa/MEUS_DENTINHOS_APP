import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'model/diario_model.dart';

class MeuDiario extends StatefulWidget {
  @override
  _MeuDiarioState createState() => _MeuDiarioState();
}

class _MeuDiarioState extends State<MeuDiario> {
  //Conexão Fluter+Firebase
  final db = Firestore.instance;
  final String colecao = "diario";

  //Lista dinâmica para manipulação dos dados
  List<Diario> lista = List();

  //Stream para "ouvir" o Firebase
  StreamSubscription<QuerySnapshot> listen;
  @override
  void initState() {
    super.initState();

    //cancelar o listen, caso a coleção esteja vazia.
    listen?.cancel();

    //retornar dados da coleção e inserir na lista dinâmica
    listen = db.collection(colecao).snapshots().listen((res) {
      setState(() {
        lista = res.documents
            .map((doc) => Diario.fromMap(doc.data, doc.documentID))
            .toList();
      });
    });
  }

  @override
  void dispose() {
    listen?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diário dos dentinhos"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      //
      // APRESENTAÇÃO DOS DADOS
      //
      body: StreamBuilder<QuerySnapshot>(

          //fonte de dados
          stream: db.collection(colecao).snapshots(),

          //exibição dos dados
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());

              default:
                //documentos retornados do Firebase
                List<DocumentSnapshot> docs = snapshot.data.documents;
                return ListView.builder(
                    itemCount: docs.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          lista[index].titulo,
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            lista[index].descricao,
                            style: TextStyle(fontSize: 16),
                            maxLines: 400,
                          ),
                        ),
                        trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              _deletar(context, docs[index], index);
                            }),
                        onTap: () {
                          Navigator.pushNamed(context, "/telae",
                              arguments: lista[index].id);
                        },
                      );
                    });
            }
          }),

      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        elevation: 0,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, "/telae", arguments: null);
        },
      ),
      backgroundColor: Colors.white,
    );
  }

  //deletar item
  void _deletar(BuildContext context, DocumentSnapshot doc, int posicao) {
    showPlatformDialog(
      context: context,
      builder: (_) => BasicDialogAlert(
        title: Text("Tem certeza que deseja excluir?"),
        actions: <Widget>[
          BasicDialogAction(
            title: Text("Sim"),
            onPressed: () {
              //deletar o item no Firebase
              db.collection(colecao).document(doc.documentID).delete();

              //atualizar a lista
              setState(() {
                lista.removeAt(posicao);
              });
              Navigator.pop(context);
            },
          ),
          BasicDialogAction(
            title: Text("Não"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'model/userapi_model.dart';

class TelaUsuario extends StatelessWidget {
  final Future<List<Usuario>> dados;
  TelaUsuario({Key key, this.dados}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuários"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: FutureBuilder<List<Usuario>>(
            future: dados,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                //apresentar o resultado

                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: ListTile(
                            leading: Image.network(snapshot.data[index].foto),
                            title: Text(snapshot.data[index].nome),
                            subtitle: Text(snapshot.data[index].celular),
                          ));
                    });
              } else if (snapshot.hasError) {
                return Center(child: Text("ERRO: ${snapshot.error}"));
              }
              return Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meus_dentinhosapp/model/userapi_model.dart';

class UsuarioService{
  Future< List<Usuario> > getUsuarios() async{

    List<Usuario> usuarios = new List<Usuario>();

    try{
      final resposta = await http.get("https://randomuser.me/api/?exc=gender,login,location,dob,registered,phone,id,nat&noinfo&results=10");
      //print(resposta.body);

      List<dynamic> lista = json.decode(resposta.body)["results"];
      lista.forEach((e) { 
        usuarios.add(Usuario.fromJson(e));
      });

    }catch(erro){
      throw Exception("ERRO: Não foi possível retornar os dados.");
    }
    return usuarios;

  }
}
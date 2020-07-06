import 'package:flutter/material.dart';
import 'services/auth.dart';

class RegistrarPage extends StatefulWidget {
  @override
  _RegistrarPageState createState() => _RegistrarPageState();
}

class _RegistrarPageState extends State<RegistrarPage> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String senha = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registre-se',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 8, left: 40, right: 40),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset("img/Robo.png"),
                ),
                TextFormField(
                  validator: (val) => val.isEmpty ? 'Digite o e-mail' : null,
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                  decoration: InputDecoration(
                    labelText: "Login",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w200,
                      fontSize: 16,
                    ),
                  ),
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  validator: (val) => val.length < 6
                      ? 'Digite uma senha de no mínimo 6 digitos '
                      : null,
                  onChanged: (val) {
                    setState(() => senha = val);
                  },
                  //keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w200,
                      fontSize: 16,
                    ),
                  ),
                  style: TextStyle(fontSize: 10),
                ),
                RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.blue,
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      dynamic result = await _auth.registerWithEmailAndPassword(
                          email, senha);

                      if (result == null) {
                        setState(
                            () => error = 'por favor digite um email valido');
                      } else {
                        setState(
                            () => error = 'Cadastro realizado com sucesso! ');
                        Navigator.pushNamed(context, '/telal');
                      }
                    }
                  },
                ),
                RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.blue,
                  child: Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  error,
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          )),
    );
  }
}

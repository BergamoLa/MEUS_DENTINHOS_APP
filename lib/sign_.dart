import 'package:flutter/material.dart';
import 'package:meus_dentinhosapp/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String senha = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 60, left: 40, right: 40),
              color: Colors.white,
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 128,
                      height: 128,
                      child: Image.asset("img/Robo.png"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (val) =>
                          val.isEmpty ? 'Digite o e-mail' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                      decoration: InputDecoration(
                        labelText: "Login",
                        labelStyle: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
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
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          dynamic result = await _auth
                              .signInWithEmailAndPassword(email, senha);

                          if (result == null) {
                            setState(() => error =
                                'Não é possivel logar com essas credenciais');
                          } else {
                            setState(() => error = 'sucesso');
                            Navigator.pushNamed(context, '/telaesco');
                          }
                        }
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red),
                    ),
                    Container(
                      height: 40,
                      child: FlatButton(
                        child: Text(
                          "Cadastre-se",
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "telaca");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

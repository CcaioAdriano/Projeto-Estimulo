import 'package:flutter/material.dart';
import "package:fluttertoast/fluttertoast.dart";

class Cadastro extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Cadastro'),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                      autofocus: true,
                      keyboardType: TextInputType.name,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "Razão Social",
                        labelStyle: TextStyle(color: Colors.black),
                      )),
                  Divider(),
                  TextField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "CNPJ",
                        labelStyle: TextStyle(color: Colors.black),
                      )),
                  Divider(),
                  TextField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.black),
                      )),
                  Divider(),
                  TextField(
                      autofocus: true,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.black),
                      )),
                  Divider(
                    height: 70.0,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: ButtonTheme(
                            height: 60.0,
                            child: RaisedButton(
                              onPressed: () => {_succesMenssage()},
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(15.0)),
                              child: Text(
                                "Cadastre-se",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

//MENSAGEM DE SUCESSO-----
  void _succesMenssage() {
    Fluttertoast.showToast(
        backgroundColor: Colors.green,
        msg: 'Usuário cadastrado, com sucesso!',
        toastLength: Toast.LENGTH_LONG);
  }
}

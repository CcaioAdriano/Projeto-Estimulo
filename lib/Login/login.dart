import 'package:estimulo/main.dart';
import 'package:estimulo/Login/cadastro.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Estimulo 2.0 '),
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
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "CNPJ",
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
                          flex: 1,
                          child: ButtonTheme(
                            height: 60.0,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: RaisedButton(
                                onPressed: () => {
                                  //CONDIÇÃO--------------
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()))
                                },
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(15.0)),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ButtonTheme(
                            height: 60.0,
                            child: RaisedButton(
                              onPressed: () => {
                                //CONDIÇÃO-------------------
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Cadastro()))
                              },
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
}

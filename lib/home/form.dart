import 'package:flutter/material.dart';
import "package:fluttertoast/fluttertoast.dart";

/*class MyFormHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormHome(),
    );
  }
}*/

class FormHome extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<FormHome> {
  int _radioValue1 = -1;
  int correctScore = 0;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue2 = value;
    });
  }

  void _handleRadioValueChange3(int value) {
    setState(() {
      _radioValue3 = value;
    });
  }

  void _handleRadioValueChange4(int value) {
    setState(() {
      _radioValue4 = value;
    });
  }

  void _handleRadioValueChange5(int value) {
    setState(() {
      _radioValue5 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      padding: EdgeInsets.all(8.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
          Widget>[
        // 1
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        Divider(height: 5.0, color: Colors.black),
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        Text(
          '1) Tenho assistido vídeos do(s) módulo(s) para saber os pontos à serem melhorados na minha empresa?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Radio(
              value: 0,
              groupValue: _radioValue1,
              onChanged: _handleRadioValueChange1,
            ),
            Text(
              'Nunca',
              style: TextStyle(fontSize: 16.0),
            ),
            Radio(
              value: 1,
              groupValue: _radioValue1,
              onChanged: _handleRadioValueChange1,
            ),
            Text(
              'As vezes',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Radio(
              value: 2,
              groupValue: _radioValue1,
              onChanged: _handleRadioValueChange1,
            ),
            Text(
              'Com frequência',
              style: TextStyle(fontSize: 16.0),
            ),
            Radio(
              value: 3,
              groupValue: _radioValue1,
              onChanged: _handleRadioValueChange1,
            ),
            Text(
              'Sempre',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
        Divider(
          height: 5.0,
          color: Colors.black,
        ),

        // 2
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            '2) Fiz anotações dos principais pontos a serem melhorados?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              Radio(
                value: 0,
                groupValue: _radioValue2,
                onChanged: _handleRadioValueChange2,
              ),
              Text(
                'Nunca',
                style: TextStyle(fontSize: 16.0),
              ),
              Radio(
                value: 1,
                groupValue: _radioValue2,
                onChanged: _handleRadioValueChange2,
              ),
              Text(
                'As vezes',
                style: TextStyle(fontSize: 16.0),
              ),
              Radio(
                value: 2,
                groupValue: _radioValue2,
                onChanged: _handleRadioValueChange2,
              ),
              Text(
                'Com frequência',
                style: TextStyle(fontSize: 16.0),
              ),
              Radio(
                value: 3,
                groupValue: _radioValue2,
                onChanged: _handleRadioValueChange2,
              ),
              Text(
                'Sempre',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
          Divider(
            height: 5.0,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '3) Realizo reuniões com as pessoas chave para debater os pontos a serem melhorados?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: 0,
                      groupValue: _radioValue3,
                      onChanged: _handleRadioValueChange3,
                    ),
                    Text(
                      'Nunca',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                      value: 1,
                      groupValue: _radioValue3,
                      onChanged: _handleRadioValueChange3,
                    ),
                    Text(
                      'As vezes',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                      value: 2,
                      groupValue: _radioValue3,
                      onChanged: _handleRadioValueChange3,
                    ),
                    Text(
                      'Com frequência',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                      value: 3,
                      groupValue: _radioValue3,
                      onChanged: _handleRadioValueChange3,
                    ),
                    Text(
                      'Sempre',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                Divider(
                  height: 5.0,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '4) As pessoas tem colocado em prática os pontos à serem melhorados?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        Radio(
                          value: 0,
                          groupValue: _radioValue4,
                          onChanged: _handleRadioValueChange4,
                        ),
                        Text(
                          'Nunca',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Radio(
                          value: 1,
                          groupValue: _radioValue4,
                          onChanged: _handleRadioValueChange4,
                        ),
                        Text(
                          'As vezes',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Radio(
                          value: 2,
                          groupValue: _radioValue4,
                          onChanged: _handleRadioValueChange4,
                        ),
                        Text(
                          'Com frequência',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Radio(
                          value: 3,
                          groupValue: _radioValue4,
                          onChanged: _handleRadioValueChange4,
                        ),
                        Text(
                          'Sempre',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '5) Houve resultado significativo nas mudanças realizadas na empresa?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: <Widget>[
                            Radio(
                              value: 0,
                              groupValue: _radioValue5,
                              onChanged: _handleRadioValueChange5,
                            ),
                            Text(
                              'Nunca',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Radio(
                              value: 1,
                              groupValue: _radioValue5,
                              onChanged: _handleRadioValueChange5,
                            ),
                            Text(
                              'As vezes',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Radio(
                              value: 2,
                              groupValue: _radioValue5,
                              onChanged: _handleRadioValueChange5,
                            ),
                            Text(
                              'Com frequência',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Radio(
                              value: 3,
                              groupValue: _radioValue5,
                              onChanged: _handleRadioValueChange5,
                            ),
                            Text(
                              'Sempre',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                        Divider(
                          height: 5.0,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        RaisedButton(
                          onPressed: validateAnswers,
                          child: Text(
                            'Enviar formulario',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                          color: Theme.of(context).accentColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
        ]),
      ]),
    )));
  }

  void validateAnswers() {
    if (_radioValue1 == -1 ||
        _radioValue2 == -1 ||
        _radioValue3 == -1 ||
        _radioValue4 == -1 ||
        _radioValue5 == -1) {
      Fluttertoast.showToast(
          backgroundColor: Colors.red,
          msg: 'Preencha todas as questões, por favor',
          toastLength: Toast.LENGTH_SHORT);
    } else {
      Fluttertoast.showToast(
          backgroundColor: Colors.green,
          msg: 'Formulário enviado para análise, com sucesso!',
          toastLength: Toast.LENGTH_LONG);
    }
  }
}

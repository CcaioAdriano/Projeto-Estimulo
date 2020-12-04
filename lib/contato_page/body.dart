import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ContatoBody extends StatefulWidget {
  @override
  _ContatoBodyState createState() => _ContatoBodyState();
}

class _ContatoBodyState extends State<ContatoBody> {
  bool receberNovidades = false;
  bool naoReceberNovidades = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: Container(
                padding: EdgeInsets.all(5),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nome',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Sans Medium',
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: Container(
                padding: EdgeInsets.all(5),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Telefone',
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Sans Medium',
                    ),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: Container(
                padding: EdgeInsets.all(5),
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Sans Medium',
                      ),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.blue,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text('Deseja receber nossas novidades?'),
            Padding(
              padding: EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        CircularCheckBox(
                            value: receberNovidades,
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            onChanged: (bool x) {
                              setState(() {
                                receberNovidades = !receberNovidades;
                                naoReceberNovidades = false;
                              });
                            }),
                        Text('Sim')
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        CircularCheckBox(
                            value: naoReceberNovidades,
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            onChanged: (bool x) {
                              setState(() {
                                naoReceberNovidades = !naoReceberNovidades;
                                receberNovidades = false;
                              });
                            }),
                        Text('Não')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: Container(
                padding: EdgeInsets.all(5),
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'OpenSans',
                    ),
                    maxLength: 200,
                    textCapitalization: TextCapitalization.sentences,
                    maxLines: 5,
                    maxLengthEnforced: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Mensagem',
                      hintMaxLines: 200,
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Sans Medium',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Container(
                width: 400,
                height: 50,
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    _succesMenssage();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'ENVIAR',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

//MENSAGEM DE SUCESSO-----
  void _succesMenssage() {
    Fluttertoast.showToast(
        backgroundColor: Colors.green,
        msg: 'Feedback enviado, com sucesso!',
        toastLength: Toast.LENGTH_LONG);
  }
}

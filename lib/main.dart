import 'package:estimulo/home/contact.dart';
import 'package:estimulo/home/form.dart';
import 'package:estimulo/home/viewHome.dart';
import 'package:estimulo/Login/login.dart';
import 'package:flutter/material.dart';

void main() {
  //executa o app
  runApp(MyApp());
}

//Tela de login do projeto
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Login());
  }
}

//Pagina inicial do projeto
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage(
      title: 'Estimulo 2.0',
    ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //estado principal da home, onde ficam a appbar e os cards
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.content_paste)),
                Tab(
                  icon: Icon(Icons.email),
                ),
              ],
            ),
            title: Text(widget.title),
          ),
          body: TabBarView(
            children: [ViewHome(), FormHome(), Contact()],
          ),
        ),
      ),
    );
  }
}

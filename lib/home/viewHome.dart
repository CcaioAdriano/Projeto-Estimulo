import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewHome extends StatelessWidget {
  //---------------classe de renderização da home
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          //---------------------------------CARD
          flex: 1,
          fit: FlexFit.tight,
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Colors.grey[400],
                  )),
              child: Container(
                alignment: Alignment(0.0, 0.0),
                child: ListTile(
                  onTap: () {
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Financeiro()),
                    );*/
                    _launchInBrowser(
                        'https://www.youtube.com/watch?v=OZbX8XjaUTk&list=PLlX5xeBziJ1UeQurpjdDK4_WBiSuLgQOX');
                  },
                  leading: Icon(
                    Icons.video_collection,
                    color: Colors.blue,
                  ),
                  title: (new Text(
                    'Módulo Financeiro',
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  )),
                  subtitle: Text(
                    'Neste módulo você irá aprender como administrar melhor sua empresa no aspecto financeiro, alem disso, você aprenderá técnicas para alavancar o setor financeiro de sua empresa ',
                    textAlign: TextAlign.justify,
                  ),
                  isThreeLine: true,
                ),
              ),
            ),
          ),
        ), //---------------------------------
        Flexible(
          //---------------------------------CARD
          flex: 1,
          fit: FlexFit.tight,
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Colors.grey[400],
                  )),
              child: Container(
                alignment: Alignment(0.0, 0.0),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(
                        'https://www.youtube.com/watch?v=vqdnQqLgGRo&list=PLHz_AreHm4dmmqFmLT17KMjoaE0Y4LqRv');
                  },
                  leading: Icon(
                    Icons.video_collection,
                    color: Colors.blue,
                  ),
                  title: (new Text(
                    'Módulo de Comunicação e Marketing',
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  )),
                  subtitle: Text(
                    'Neste módulo você irá aprender técnicas, que iram turbinar a divulgação de sua empresa nos dias atuais. ',
                    textAlign: TextAlign.justify,
                  ),
                  isThreeLine: true,
                ),
              ),
            ),
          ),
        ), //---------------------------------
        Flexible(
          //---------------------------------CARD
          flex: 1,
          fit: FlexFit.tight,
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Colors.grey[400],
                  )),
              child: Container(
                alignment: Alignment(0.0, 0.0),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(
                        'https://www.youtube.com/watch?v=waeKEAbDcUI&list=PLuqZ2xtIWeMhHzZ9ppakWmCjY_XvNnJ7c');
                  },
                  leading: Icon(
                    Icons.video_collection,
                    color: Colors.blue,
                  ),
                  title: (new Text(
                    'Módulo de Gestão de RH',
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  )),
                  subtitle: Text(
                    'Neste módulo você irá aprender diversar formas sobre como adminitrar bem seus colaboradores, de forma com que eles se sintam confortaveis fisicamente, e mentalmente em seu ambiente de trabalho. ',
                    textAlign: TextAlign.justify,
                  ),
                  isThreeLine: true,
                ),
              ),
            ),
          ),
        ), //---------------------------------
        Flexible(
          //---------------------------------CARD
          flex: 1,
          fit: FlexFit.tight,
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    color: Colors.grey[400],
                  )),
              child: Container(
                alignment: Alignment(0.0, 0.0),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(
                        'https://www.youtube.com/watch?v=OrWWoNu5mOE&list=PLAdEu5NtlLkZ0Z_wOjLFMw_mcOOt0Afjv');
                  },
                  leading: Icon(
                    Icons.video_collection,
                    color: Colors.blue,
                  ),
                  title: (new Text(
                    'Módulo de Tecnologia e inovação',
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  )),
                  subtitle: Text(
                    'Neste módulo você irá aprender sobre como administar de forma responsavel e segura, umas das áreas mais importantes para o crescimento de sua empresa a área de tecnologia. ',
                    textAlign: TextAlign.justify,
                  ),
                  isThreeLine: true,
                ),
              ),
            ),
          ),
        ) //---------------------------------
      ],
    );
  }
}

//metodo que cria uma rota para o youtube
Future<void> _launchInBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    );
  } else {
    throw 'Could not launch $url';
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'José Matias Lemes Filho'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> litems = [];
  final TextEditingController dados = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: bodyPrincipal(),
    );
  }

  Widget bodyPrincipal() => Column(
        children: [
          listaDeIcones(),
          imagens(),
        ],
      );

  Widget imagens() {
    return Column(
      children: [
        Container(
          color: Colors.purple,
          height: 50.0,
          width: 50.0,
          child: Center(child: Text("Oi")),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                  fit: BoxFit.cover),
              border: Border.all(
                color: Colors.black54,
                width: 8,
              )),
          height: 150.0,
          width: 150.0,
        ),
        Padding(
          padding: EdgeInsets.all(58.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.green,
                height: 15.0,
                width: 15.0,
              ),
              Container(
                color: Colors.yellow,
                height: 15.0,
                width: 15.0,
              ),
              Container(
                color: Colors.red,
                height: 15.0,
                width: 15.0,
              ),
            ],
          ),
        ),
        Container(
          color: Colors.red,
          height: 150.0,
          width: 150.0,
        ),
      ],
    );
  }

  Widget listaDeIcones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.favorite,
          color: Colors.pink,
          size: 24.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
        Icon(
          Icons.audiotrack,
          color: Colors.green,
          size: 30.0,
        ),
        Icon(
          Icons.beach_access,
          color: Colors.blue,
          size: 36.0,
        ),
      ],
    );
  }
}

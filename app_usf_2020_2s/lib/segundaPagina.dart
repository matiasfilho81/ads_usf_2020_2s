import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'commom/appColors.dart';

class SegundaPagina extends StatefulWidget {
  static const routeName = 'Segunda_Pagina';
  @override
  _SegundaPaginaState createState() => _SegundaPaginaState();
}

class _SegundaPaginaState extends State<SegundaPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text("Olá! Segunda página"),
        ));
  }
}

import 'package:app_usf_2020_2s/commom/appColors.dart';
import 'package:app_usf_2020_2s/fadeAnimation.dart';
import 'package:app_usf_2020_2s/primeiraPagina.dart';
import 'package:app_usf_2020_2s/rotationAnimation.dart';
import 'package:app_usf_2020_2s/segundaPagina.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      PrimeiraPagina.routeName: (context) => PrimeiraPagina(),
      SegundaPagina.routeName: (context) => SegundaPagina(),
      FadeAnimation.routeName: (context) => FadeAnimation(),
      RotationAnimation.routeName: (context) => RotationAnimation()
    },
    home: build(),
  ));
}

build() {
  return SafeArea(
    child: Scaffold(
      appBar: AppBar(
        title: Text("Página de Transação"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed(animationTypeList[index]);
                },
                leading: CircleAvatar(
                  backgroundColor: AppColors.backgndAvatar,
                  child: Text("${index + 1}"),
                ),
                title: Text(animationTypeList[index].toString()),
              ),
            ),
          );
        },
        itemCount: animationTypeList.length,
      ),
    ),
  );
}

var animationTypeList = [
  PrimeiraPagina.routeName,
  SegundaPagina.routeName,
  FadeAnimation.routeName,
  RotationAnimation.routeName,
];

class ReturnPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Yoooooooooo !'),
      ),
    );
  }
}

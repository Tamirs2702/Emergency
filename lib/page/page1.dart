import 'package:flutter/material.dart';
import 'package:Emergency/page/page2.dart';
main() {
  runApp(MaterialApp(
    home: Page1(),
  ));
}

class Page1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Align(
        alignment: Alignment.bottomCenter,
        child: RaisedButton(
          child: Text('Gal Tuval Zain kfiz '),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
      ),
    );
    
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

import 'package:flutter/material.dart';
import 'package:third/screens/home_page.dart';


class SecondScreen extends StatelessWidget {

  String text;

  SecondScreen(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Second Screen'
        ),
      //   leading: const IconButton(
      //     icon: Icon(Icons.home),
      //     onPressed: () {
      //       Navigator.pop(context, [MyHomePage]);
      //     },
      //   ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }
}

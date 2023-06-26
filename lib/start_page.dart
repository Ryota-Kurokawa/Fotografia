import 'package:flutter/material.dart';
import 'first_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 154, 210, 255),
        body: Column(children: [
          const Padding(padding: EdgeInsets.only(top: 150)),
          Image.asset("images/IMG_7346.png"),
          const Padding(padding: EdgeInsets.only(top: 80)),
          Image.asset("images/IMG_7343.png"),
          const Padding(padding: EdgeInsets.only(top: 50)),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const FirstPage()));
              },
              child: Text("Fotografiaを始める"),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(210, 50), backgroundColor: Colors.green)),
        ]));
  }
}

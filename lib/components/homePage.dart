import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 697,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("guitarbg.jpg"), fit: BoxFit.fill)),
      ),
      Container(
        height: 697,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Colors.black.withOpacity(0.3)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "I am ",
                style: TextStyle(color: Colors.white, fontSize: 38),
              ),
              TextSpan(
                text: "Sayan Chakraborty",
                style: TextStyle(color: Colors.white, fontSize: 38),
              ),
            ])),
            SizedBox(
              height: 30,
            ),
            Text(
              "Software Developer",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            Text(
              "Musician",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            Text(
              "Tech Enthusiast",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Let me take you through the stuff I do...",
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      )
    ]);
  }
}

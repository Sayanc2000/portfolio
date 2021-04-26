import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  final GlobalKey musicKey;
  Music({this.musicKey});
  @override
  Widget build(BuildContext context) {
    return Container(
      key: musicKey,
      height: 700,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 3,
                  width: 70,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffedb85c), Colors.black],
                          end: Alignment.centerLeft,
                          begin: Alignment.centerRight)),
                ),
                Text(
                  " Music ",
                  style: TextStyle(color: Color(0xffedb85c), fontSize: 40),
                ),
                Container(
                  height: 3,
                  width: 70,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffedb85c), Colors.black],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Work extends StatelessWidget {
  final GlobalKey workKey;
  Work({this.workKey});
  @override
  Widget build(BuildContext context) {
    return Container(
      key: workKey,
      height: 600,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffedb85c)),
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
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)),
                ),
                Text(
                  " Work ",
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
                Container(
                  height: 3,
                  width: 70,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffedb85c), Colors.black],
                          end: Alignment.centerLeft,
                          begin: Alignment.centerRight)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

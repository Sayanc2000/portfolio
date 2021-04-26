import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioweb/services/urlServices.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffedb85c),
      height: 200,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  launchURL("https://github.com/Sayanc2000");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                      size: 20,
                    ),
                    Text(
                      "  Github",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  launchURL(
                      "https://www.youtube.com/channel/UCHjzIAEubfDN4HAqNqc1_ug");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.black,
                      size: 20,
                    ),
                    Text(
                      "  Youtube",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  launchURL("https://www.instagram.com/sc_muffinz/");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.black,
                      size: 20,
                    ),
                    Text(
                      "  Instagram",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  launchURL(
                      "https://www.linkedin.com/in/sayan-chakraborty-a0522a193/");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.black,
                      size: 20,
                    ),
                    Text(
                      "  LinkedIn",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "©2021 Sayan Chakraborty",
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolioweb/components/footer.dart';
import 'package:portfolioweb/components/homePage.dart';
import 'package:portfolioweb/components/music.dart';
import 'package:portfolioweb/components/work.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        fontFamily: 'Roboto',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color.fromARGB(255, 0, 0, 0),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController _scrollController = new ScrollController();
  final musicKey = GlobalKey();
  final workKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Hello,",
            style: TextStyle(fontSize: 22),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  _scrollController.animateTo(
                    0.0,
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 300),
                  );
                },
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  RenderBox box = workKey.currentContext.findRenderObject();
                  Offset position = box.localToGlobal(Offset.zero);
                  _scrollController.animateTo(
                    position.dy - 50,
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 300),
                  );
                },
                child: Text("Work", style: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  RenderBox box = musicKey.currentContext.findRenderObject();
                  Offset position = box.localToGlobal(Offset.zero);
                  _scrollController.animateTo(
                    position.dy - 50,
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 300),
                  );
                },
                child: Text("Music", style: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  _scrollController.animateTo(
                    _scrollController.position.maxScrollExtent,
                    curve: Curves.easeOut,
                    duration: const Duration(milliseconds: 300),
                  );
                },
                child: Text(
                  "Contact",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                HomePage(),
                Work(
                  workKey: workKey,
                ),
                Music(
                  musicKey: musicKey,
                ),
                Footer()
              ],
            )));
  }
}

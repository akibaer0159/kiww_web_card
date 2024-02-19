import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffdf7),
      body: Center(
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 100, 20, 0),
                    child: Text(
                      "테스트 테스트",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.indigo, fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage("pick.jpg"),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                    child: Text(
                      "위치정보 위치정보",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.indigo, fontSize: 20),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 92,
                        child: ColoredBox(color: Colors.indigo),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 8, 5, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 80,
                          child: ColoredBox(color: Color(0xffE5B80B)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(7, 10, 7, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 80,
                          child: ColoredBox(color: Colors.indigo),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(9, 730, 9, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: detailWidget(),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: ColoredBox(color: Colors.transparent),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ColoredBox(color: Colors.indigo),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget detailWidget() {
    return SizedBox(
      width: double.infinity,
      height: 5000,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "감사합니다 감사합니다\n고마워요",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

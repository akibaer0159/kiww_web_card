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
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
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
            const Expanded(
              child: Image(
                image: AssetImage("pick.jpg"),
              ),
            ),
            const SizedBox(
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
                  borderRadius: BorderRadius.circular(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 80,
                    child: ColoredBox(color: Colors.indigo),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 80,
                      child: ColoredBox(color: Colors.amberAccent),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 80,
                      child: ColoredBox(color: Colors.indigo),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

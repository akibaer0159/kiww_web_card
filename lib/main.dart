import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:url_launcher/url_launcher.dart';

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
  double heightMargin = 0;
  double width = 0;

  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();
    heightMargin = MediaQuery.of(context).size.height;
    heightMargin -= 60;
    width = MediaQuery.of(context).size.width;
    width -= 170;

    await NaverMapSdk.instance.initialize();
  }

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
                  height: 170,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 70, 20, 0),
                    child: Text(
                      "배기웅\n이가은",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.indigo, fontSize: 25),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/main_2.png"
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                    child: Text(
                      "2024. 03. 31 SUN AM 11:30\n벨라비타",
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
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(9, heightMargin, 9, 0),
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
        alignment: Alignment.topLeft,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
            ),
            Text(
              "평생을 같이하고 싶은 사람을 만났습니다.\n서로 아껴주고 이해하며\n사랑 배풀며 살고싶습니다.\n저희 약속 위에 따뜻한 격려로 축복해 주셔서\n힘찬 출발의 디딤이 되어 주십시오.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.indigo,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            launchUrl(Uri.parse("tel://010-5653-0159"));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "신랑에게 연락하기",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                              Image.asset(
                                width: 40,
                                height: 40,
                                "assets/call.png",
                                color: Colors.indigoAccent,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            launchUrl(Uri.parse("tel://010-5653-0159"));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "신부에게 연락하기",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.indigoAccent,
                                ),
                              ),
                              Image.asset(
                                width: 40,
                                height: 40,
                                "assets/call.png",
                                color: Colors.indigoAccent,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Image.asset(
                      width: width,
                      "assets/image_1.png",
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 20,
                      ),
                      child: Image.asset(
                        width: width + 100,
                        "assets/image_2.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Image.asset(
                        width: width + 100,
                        "assets/image_3.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 20,
                      ),
                      child: Image.asset(
                        width: width,
                        "assets/image_4.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Image.asset(
                        width: width + 50,
                        "assets/image_5.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "오시는 길",
                      style: TextStyle(fontSize: 25, color: Colors.indigoAccent,),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    child: NaverMap(
                      options: const NaverMapViewOptions(
                        initialCameraPosition: NCameraPosition(
                            target: NLatLng(127.0394774,37.5086751),
                            zoom: 10,
                            bearing: 0,
                            tilt: 0
                        ),
                      ), // 지도 옵션을 설정할 수 있습니다.
                      forceGesture: true,
                      onMapReady: (controller) {},
                      onMapTapped: (point, latLng) {},
                      onSymbolTapped: (symbol) {},
                      onCameraChange: (position, reason) {},
                      onCameraIdle: () {},
                      onSelectedIndoorChanged: (indoor) {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

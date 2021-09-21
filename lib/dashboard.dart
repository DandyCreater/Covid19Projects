import 'dart:async';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/common/helper.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  String positif = "";
  String sembuh = "";
  String dirawat = "";
  String meninggal = "";
  var jam = "";

  FirebaseAuth auth = FirebaseAuth.instance;

  startJam() {
    Timer.periodic(new Duration(seconds: 1), (_) {
      var tanggal = new DateTime.now();
      var formatedjam = new DateFormat().format(tanggal);
      setState(() {
        jam = formatedjam;
      });
    });
  }

  getData() async {
    var response =
        await http.get(Uri.parse("https://api.kawalcorona.com/indonesia/"));
    var jsonData = jsonDecode(response.body);

    positif = jsonData[0]['positif'];
    sembuh = jsonData[0]['sembuh'];
    dirawat = jsonData[0]['dirawat'];
    meninggal = jsonData[0]['meninggal'];

    setState(() {});
  }

  @override
  void initState() {
    setState(() {
      getData();
      startJam();
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget positifSizedBox() => SizedBox(
          width: SizeConfig.ScreenWidth,
          height: 100,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.white, Colors.blue]),
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  width: 100,
                  child: LottieBuilder.network(
                      "https://assets3.lottiefiles.com/packages/lf20_vPnn3K.json"),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text("Jumlah Kasus Positif ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600)),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          positif + " Kasus",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );

    Widget iconSizedBox() => SizedBox(
          height: 120,
          width: 200,
          child: LottieBuilder.network(
              "https://assets7.lottiefiles.com/packages/lf20_niraarym.json"),
        );

    Widget sembuhSizedBox() => SizedBox(
          width: SizeConfig.ScreenWidth,
          height: 100,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.white, Colors.blue]),
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  width: 100,
                  child: LottieBuilder.network(
                      "https://assets10.lottiefiles.com/packages/lf20_q0nn8kie.json"),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text("Jumlah Pasien Sembuh ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600)),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          sembuh + " Jiwa",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );

    Widget dirawatSizedBox() => SizedBox(
          width: SizeConfig.ScreenWidth,
          height: 100,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.white, Colors.blue]),
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  width: 100,
                  child: LottieBuilder.network(
                      "https://assets9.lottiefiles.com/packages/lf20_mR5H7A.json"),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text("Jumlah Pasien Dirawat ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600)),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          dirawat + " Jiwa",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );

    Widget meninggalSizedBox() => SizedBox(
          width: SizeConfig.ScreenWidth,
          height: 100,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.white, Colors.blue]),
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: LottieBuilder.network(
                      "https://assets8.lottiefiles.com/packages/lf20_ajqHuf.json"),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text("Jumlah Pasien Meninggal ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600)),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          meninggal + " Jiwa",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.indigo,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(100))),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(100))),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              width: SizeConfig.ScreenWidth,
              height: SizeConfig.ScreenHeight,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Informasi Covid-19",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: iconSizedBox(),
                      ),
                      SizedBox(height: 60),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Data Update per tanggal : ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          jam,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        ListView(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            positifSizedBox(),
                            SizedBox(
                              height: 10,
                            ),
                            sembuhSizedBox(),
                            SizedBox(
                              height: 10,
                            ),
                            dirawatSizedBox(),
                            SizedBox(
                              height: 10,
                            ),
                            meninggalSizedBox(),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

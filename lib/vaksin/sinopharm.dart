import 'package:flutter/material.dart';
import 'package:flutter_application_4/common/helper.dart';
import 'package:lottie/lottie.dart';

class sinopharm extends StatefulWidget {
  const sinopharm({Key key}) : super(key: key);

  @override
  _sinopharmState createState() => _sinopharmState();
}

class _sinopharmState extends State<sinopharm> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.lightGreen,
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
                      color: Colors.lightGreen,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(100))),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.all(20),
              height: SizeConfig.ScreenHeight,
              width: SizeConfig.ScreenWidth,
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        "Sinopharm",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: LottieBuilder.network(
                                    "https://assets7.lottiefiles.com/packages/lf20_d2iuvfbu.json"),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 140,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 5,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          top: 5, left: 10, right: 5),
                                      child: Text(
                                        "- Mengandung virus SARS-CoV-2",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 5),
                                      child: Text(
                                        "- Vaksin Sinopharm di teliti oleh Sinopharm atau China International Pharmaceutical Group.",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 240,
                            width: SizeConfig.ScreenWidth,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 10, right: 5),
                                  child: Text(
                                    "- Dapat diberikan kepada orang berusia 18-58 tahun yang sedang dalam kondisi sehat.",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 5),
                                  child: Text(
                                    "- Belum diketahui efektivitas dan keamanan vaksin ini untuk lansia berusia di atas 60 tahun.",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "- Dosis dalam sekali suntik adalah 0,5 ml",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 5),
                                  child: Text(
                                    "- Vaksin diberikan sebanyak 2 kali dengan jarak 21-28 hari",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 5),
                                  child: Text(
                                    "- Vaksin Sinopharm memiliki efisiensi 78 persen. Didapatkan imunogenositas 14 hari setelah suntikan kedua untuk netralisasi antibodi yakni 99,92 persen untuk dewasa dan lansia 100 persen.",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        width: SizeConfig.ScreenWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Text(
                            "- Uji klinis fase ketiga di Indonesia menunjukan nilai efikasi vaksin",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 220,
                        width: SizeConfig.ScreenWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(top: 5, left: 10, right: 10),
                              child: Text(
                                  "Beberapa efek samping yang bisa terjadi setelah menerima vaksin Sinopharm adalah:",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Rasa Sakit",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Kemerahan",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Sakit Kepala",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Nyeri Otot",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Diare",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Nyeri Otot",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Sakit Kepala",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Mual",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Muntah",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 80,
                        width: SizeConfig.ScreenWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          child: Text(
                            "Pemberian vaksin untuk penderita penyakit paru-paru, seperti asma, PPOK, atau TBC, akan ditunda sampai kondisinya terkontrol.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ],
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

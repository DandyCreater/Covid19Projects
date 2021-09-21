import 'package:flutter/material.dart';
import 'package:flutter_application_4/common/helper.dart';
import 'package:lottie/lottie.dart';

class astrazeneca extends StatefulWidget {
  const astrazeneca({Key key}) : super(key: key);

  @override
  _astrazenecaState createState() => _astrazenecaState();
}

class _astrazenecaState extends State<astrazeneca> {
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
                  color: Colors.amber[300],
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
                      color: Colors.amber[300],
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
                        "AstraZeneca",
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
                                height: 150,
                                width: 150,
                                child: LottieBuilder.network(
                                    "https://assets5.lottiefiles.com/packages/lf20_noMu1C.json"),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                        "- Berasal dari virus hasil rekayasa genetika (viral vector).",
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
                                        "- Bekerja dengan cara menstimulasi atau memicu tubuh untuk membentuk antibodi yang dapat melawan infeksi virus SARS-Cov-2.",
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
                            height: 225,
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
                                    "- Vaksin diberikan sebanyak 2 kali dengan jarak 4-12 minggu.",
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
                                    "- Jika pernah terpapar Covid-19, vaksin dapat diberikan setidaknya 6 bulan setelah pasien sembuh.",
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
                                    "- Untuk mengantisipasi terjadinya KIPI (Kejadian ikutan pascaimunisasi) yang serius, penerima vaksin akan diminta untuk tinggal selama 30 menit sesudah divaksin.",
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
                                    child: Text(
                                        "-Nyeri, hangat, gatal, atau memar di area suntikan",
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
                                    child: Text("-Tidak enak badan",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Tubuh terasa lelah",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Nyeri otot dan sendi",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Nyeri Otot dan sendi",
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
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("-Demam",
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

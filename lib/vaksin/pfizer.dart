import 'package:flutter/material.dart';
import 'package:flutter_application_4/common/helper.dart';
import 'package:lottie/lottie.dart';

class pfizer extends StatefulWidget {
  const pfizer({Key key}) : super(key: key);

  @override
  _pfizerState createState() => _pfizerState();
}

class _pfizerState extends State<pfizer> {
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
                  color: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.red,
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
                      color: Colors.red,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(100))),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(100))),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              height: SizeConfig.ScreenHeight,
              width: SizeConfig.ScreenWidth,
              child: ListView(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          "Vaksin Pfizer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: LottieBuilder.network(
                                "https://assets5.lottiefiles.com/temp/lf20_ksLTeM.json"),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 300,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.black, width: 4),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 5, top: 10),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "- mRNA Vaksin",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.indigo),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "- Diberikan di otot lengan atas",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.indigo),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "- 2 kali suntikan, jarak 21 hari",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.indigo),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "- Jika ada halangan Vaksin kedua maksimal 42 hari dari Vaksin pertama",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.indigo),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: LottieBuilder.network(
                            "https://assets8.lottiefiles.com/packages/lf20_p2evb1ab.json"),
                      ),
                      Container(
                        width: SizeConfig.ScreenWidth,
                        height: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 5),
                            borderRadius: BorderRadius.circular(12)),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "Vaksin Pfizer menggunakan teknologi mRNA",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.indigo),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: SizeConfig.ScreenWidth,
                        height: 155,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text(
                            "Sesudah disuntikkan, vaksin akan melatih sel tubuh kita cara membuat spike protein, yang akan memicu respon imun/pembentukan antibodi dalam tubuh kita.",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.indigo),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: SizeConfig.ScreenWidth,
                        height: 135,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text(
                            "Hasil akhir : tubuh kita terlatih bagaimana melindungi dirinya dari infeksi berikutnya (jika kita terpapar virus dikemudian hari)",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.indigo),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: SizeConfig.ScreenWidth,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(15),
                          child: Text(
                            "Vaksin Pfizer Efektif",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: SizeConfig.ScreenWidth,
                        height: 165,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Text(
                            "Sesudah Suntikan 2 dosis Vaksin Pfizer 95% efektif mencegah Covid-19 (Polack FP, 2021) Vaksin Pfizer 96% efektif untuk mencegah rawat RS oleh Varian Delta",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.indigo),
                          ),
                        ),
                      )
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

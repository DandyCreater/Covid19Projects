import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/common/helper.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class info extends StatefulWidget {
  const info({Key key}) : super(key: key);

  @override
  _infoState createState() => _infoState();
}

class _infoState extends State<info> {
  getData() async {
    var response = await http
        .get(Uri.parse("https://api.kawalcorona.com/indonesia/provinsi"));
    var jsonData = jsonDecode(response.body);

    List<Data> datas = [];

    for (var u in jsonData) {
      var attributes = u['attributes'];
      Data data = Data(attributes["Provinsi"], attributes["Kasus_Posi"],
          attributes["Kasus_Semb"], attributes["Kasus_Meni"]);
      datas.add(data);
    }

    print(datas.length);
    return datas;
  }

  List<Data> display = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final number = NumberFormat("#,##0", "en_us");
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
        child: Container(
          child: Card(
            child: FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Center(
                      child: Container(
                        height: 500,
                        width: 200,
                        child: Column(
                          children: [
                            Container(
                              child: LottieBuilder.network(
                                  "https://assets1.lottiefiles.com/packages/lf20_youmdi9r.json"),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Loading ...",
                                style: TextStyle(fontSize: 30),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return Stack(
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
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(100))),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(100))),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 50),
                              alignment: Alignment.center,
                              child: Text(
                                "List Kota",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w800),
                              )),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Stack(
                          children: [
                            ListView.builder(
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, i) {
                                return SizedBox(
                                  width: SizeConfig.ScreenWidth,
                                  height: 100,
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Colors.indigo,
                                            Colors.blueAccent
                                          ]),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.blue.withOpacity(0.3)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                child: Text(
                                                  snapshot.data[i].Provinsi
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  'Positif : ' +
                                                      number
                                                          .format(snapshot
                                                              .data[i]
                                                              .Kasus_Posi)
                                                          .toString() +
                                                      " Kasus",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                child: Text(
                                                  'Sembuh : ' +
                                                      number
                                                          .format(snapshot
                                                              .data[i]
                                                              .Kasus_Semb)
                                                          .toString() +
                                                      ' Kasus',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  'Meninggal : ' +
                                                      number
                                                          .format(snapshot
                                                              .data[i]
                                                              .Kasus_Meni)
                                                          .toString() +
                                                      " Kasus",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Data {
  final String Provinsi;
  final int Kasus_Posi, Kasus_Semb, Kasus_Meni;
  Data(this.Provinsi, this.Kasus_Posi, this.Kasus_Meni, this.Kasus_Semb);
}

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));
String dataModelToJson(DataModel data) => jsonEncode(data.toJson());

class DataModel {
  DataModel({
    this.Provinsi,
    this.Kasus_Posi,
    this.Kasus_Semb,
    this.Kasus_Meni,
  });
  String Provinsi;
  int Kasus_Posi;
  int Kasus_Semb;
  int Kasus_Meni;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        Provinsi: json["Provinsi"],
        Kasus_Posi: json["Kasus_Posi"],
        Kasus_Semb: json["Kasus_Semb"],
        Kasus_Meni: json["Kasus_Meni"],
      );
  Map<String, dynamic> toJson() => {
        "Provinsi": Provinsi,
        "Kasus_Posi": Kasus_Posi,
        "Kasus_Semb": Kasus_Semb,
        "Kasus_Meni": Kasus_Meni,
      };
}

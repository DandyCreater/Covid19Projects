import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/common/helper.dart';
import 'package:flutter_application_4/vaksin/astrazeneca.dart';
import 'package:flutter_application_4/vaksin/pfizer.dart';
import 'package:flutter_application_4/vaksin/sinopharm.dart';
import 'package:flutter_application_4/vaksin/sinovac.dart';
import 'package:lottie/lottie.dart';

class news extends StatefulWidget {
  const news({Key key}) : super(key: key);

  @override
  _newsState createState() => _newsState();
}

class _newsState extends State<news> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Widget vaksinLogo() => SizedBox(
          width: 200,
          height: 150,
          child: LottieBuilder.network(
              "https://assets6.lottiefiles.com/packages/lf20_p2evb1ab.json"),
        );

    Widget firstVaksin() => SizedBox(
        width: SizeConfig.ScreenWidth,
        height: 200,
        child: Container(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => sinovac()));
            },
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      child: LottieBuilder.network(
                          "https://assets5.lottiefiles.com/packages/lf20_DLUXUI.json"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Sinovac",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.indigo, Colors.red]),
              borderRadius: BorderRadius.circular(10),
              color: Colors.red.withOpacity(0.3)),
        ));

    Widget secondVaksin() => SizedBox(
        width: SizeConfig.ScreenWidth,
        height: 200,
        child: Container(
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => sinopharm()));
            },
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      child: LottieBuilder.network(
                          "https://assets7.lottiefiles.com/packages/lf20_d2iuvfbu.json"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Sinopharm",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.indigo, Colors.blue]),
              borderRadius: BorderRadius.circular(10),
              color: Colors.red.withOpacity(0.3)),
        ));

    Widget thirdVaksin() => SizedBox(
        width: SizeConfig.ScreenWidth,
        height: 200,
        child: Container(
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => astrazeneca()));
            },
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      child: LottieBuilder.network(
                          "https://assets5.lottiefiles.com/packages/lf20_noMu1C.json"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "AstaZeneca",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.indigo, Colors.yellow]),
              borderRadius: BorderRadius.circular(10),
              color: Colors.red.withOpacity(0.3)),
        ));

    Widget fourthVaksin() => SizedBox(
        width: SizeConfig.ScreenWidth,
        height: 200,
        child: Container(
          child: FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => pfizer()));
            },
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      child: LottieBuilder.network(
                          "https://assets5.lottiefiles.com/temp/lf20_ksLTeM.json"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Pfizer",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.indigo, Colors.green]),
              borderRadius: BorderRadius.circular(10),
              color: Colors.red.withOpacity(0.3)),
        ));

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
                  color: Colors.indigo,
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
                      color: Colors.indigo,
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
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      child: Text(
                    "Informasi Vaksin",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
                  vaksinLogo(),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: firstVaksin(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: secondVaksin(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: thirdVaksin(),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: fourthVaksin(),
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

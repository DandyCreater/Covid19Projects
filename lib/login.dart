import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_4/AppMain.dart';
import 'package:flutter_application_4/common/helper.dart';
import 'package:flutter_application_4/dashboard.dart';
import 'package:flutter_application_4/registrasi.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class login extends StatefulWidget {
  const login({Key key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Widget emailTextFormField() => TextFormField(
          controller: emailController,
          maxLines: 1,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              isDense: true,
              isCollapsed: true,
              filled: true,
              fillColor: Colors.blue.withOpacity(0.2),
              focusColor: Colors.white,
              contentPadding: EdgeInsets.fromLTRB(13, 13, 0, 13),
              hintText: "Email/Handphone",
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.blue.withOpacity(0.2),
                  )),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.red, width: 2)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.blue, width: 2),
              )),
        );

    Widget passwordTextFormField() => TextFormField(
          controller: passwordController,
          maxLines: 1,
          textInputAction: TextInputAction.next,
          obscureText: true,
          decoration: InputDecoration(
            isDense: true,
            isCollapsed: true,
            fillColor: Colors.blue.withOpacity(0.2),
            focusColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(13, 13, 0, 13),
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.blue, width: 2)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.red, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.blue)),
          ),
        );

    Widget loginButton() => SizedBox(
          width: SizeConfig.ScreenWidth,
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo)),
            onPressed: () async {
              try {
                await _firebaseAuth.signInWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text);
                Fluttertoast.showToast(
                        msg: "Login Successfull",
                        gravity: ToastGravity.CENTER,
                        backgroundColor: Colors.green)
                    .then((value) => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => AppMain())));
              } on FirebaseAuthException catch (error) {
                Fluttertoast.showToast(
                    msg: error.message,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.red);
              }
            },
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
        );

    Widget daftarButton() => SizedBox(
          width: SizeConfig.ScreenWidth,
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => registrasi()));
            },
            child: Text(
              "Daftar",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        );

    Widget animasi() => SizedBox(
          width: 200,
          height: 200,
          child: LottieBuilder.network(
              'https://assets4.lottiefiles.com/packages/lf20_8fBXZH.json'),
        );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          width: SizeConfig.ScreenWidth,
          height: SizeConfig.ScreenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "MENU LOGIN",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(alignment: Alignment.center, child: animasi()),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Username: ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              emailTextFormField(),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password :",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              passwordTextFormField(),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: loginButton(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: daftarButton(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

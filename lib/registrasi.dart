import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_4/common/helper.dart';
import 'package:flutter_application_4/login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class registrasi extends StatefulWidget {
  const registrasi({Key key}) : super(key: key);

  @override
  _registrasiState createState() => _registrasiState();
}

class _registrasiState extends State<registrasi> {
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController passwordcheckController =
      new TextEditingController();

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Widget emailTextFormField() => TextFormField(
        controller: emailController,
        maxLines: 1,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            isCollapsed: true,
            isDense: true,
            filled: true,
            fillColor: Colors.blue.withOpacity(0.2),
            focusColor: Colors.white,
            contentPadding: EdgeInsets.fromLTRB(13, 13, 0, 13),
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.blue, width: 2)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.red, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.blue.withOpacity(0.2)))),
      );

  Widget passwordTextFormField() => TextFormField(
        controller: passwordController,
        maxLines: 1,
        textInputAction: TextInputAction.next,
        obscureText: true,
        decoration: InputDecoration(
            isCollapsed: true,
            isDense: true,
            filled: true,
            fillColor: Colors.blue.withOpacity(0.2),
            focusColor: Colors.white,
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
                borderSide: BorderSide(color: Colors.blue.withOpacity(0.2)))),
      );

  Widget passwordcheckTextFormField() => TextFormField(
        controller: passwordcheckController,
        maxLines: 1,
        textInputAction: TextInputAction.next,
        obscureText: true,
        decoration: InputDecoration(
            isCollapsed: true,
            isDense: true,
            filled: true,
            fillColor: Colors.blue.withOpacity(0.2),
            focusColor: Colors.white,
            contentPadding: EdgeInsets.all(20.0),
            hintText: 'Confirm Password',
            hintStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.blue, width: 2)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.red, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.blue.withOpacity(0.2)))),
      );

  Widget daftarButton() => SizedBox(
        width: SizeConfig.ScreenWidth,
        height: 50,
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.indigo)),
          onPressed: () async {
            try {
              await _firebaseAuth.createUserWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text);
              Fluttertoast.showToast(
                      msg: "User Created",
                      gravity: ToastGravity.CENTER,
                      backgroundColor: Colors.green)
                  .then((value) => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => login())));
            } on FirebaseAuthException catch (error) {
              Fluttertoast.showToast(
                  msg: error.message,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.red);
            }
          },
          child: Text(
            'Daftar',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      );

  Widget animasi() => SizedBox(
        height: 200,
        width: 200,
        child: LottieBuilder.network(
            "https://assets9.lottiefiles.com/packages/lf20_u8o7BL.json"),
      );

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
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
                  "Registration Form",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              animasi(),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email :',
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
                child: Text('Password :'),
              ),
              SizedBox(
                height: 10,
              ),
              passwordTextFormField(),
              SizedBox(
                height: 30,
              ),
              daftarButton(),
            ],
          ),
        ),
      ),
    );
  }
}

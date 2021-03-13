import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Login.dart';
import 'package:flutter/gestures.dart';
import 'inputBox.dart';
import 'InputBoxNum.dart';

// void main() {
//   runApp(SignUpW());
// }

class SignUpW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Padding(
          padding: const EdgeInsets.only(left:19.0),
          child: Text('Creating New Account',
          style: TextStyle(
            color: Color(0xFF0C2551),
            fontFamily: 'ProductSans',
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),),
        ),
      ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, top: 40),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Cardo',
                        fontSize: 35,
                        color: Color(0xFF0C2551),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                //
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, top: 20),
                    child: Text(
                      'Sign Up With',
                      style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                //
                SizedBox(
                  height: 15,
                ),
                //
                Container(
                  margin: EdgeInsets.only(left: 38),
                  child: Row(
                    children: [
                      Test_Button(
                        char: 'G',
                      ),
                    ],
                  ),
                ),
                //
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, top: 10),
                    child: Text(
                      'Or Complete these',
                      style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                //
                SizedBox(
                  height: 20,
                ),
                CustomInputbox(
                  inputHint: 'Name',
                  label: 'Name',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomInputbox(
                  inputHint: 'example@example.com',
                  label: 'Email',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomInputbox(
                  inputHint: '8+ Characters',
                  label: 'Password',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomInputbox(
                  inputHint: '8+ Characters',
                  label: 'Same as Above',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomInputboxNum(
                  inputHint: '+**_____',
                  label: 'Phone No.',
                ),
                SizedBox(
                  height: 30,
                ),

                Text(
                  'Creating an account means you\'re okay with\nour Terms of Service and Privacy Policy',
                  style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff8f9db5).withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Container(
                      width: scrWidth * 0.85,
                      height: 75,
                      decoration: BoxDecoration(
                          color: Color(0xff0962ff),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Create an Account',
                          style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Already have an access?',
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff8f9db5),
                      ),
                    ),
                    TextSpan(
                      text: ' Sign In',
                      recognizer: TapGestureRecognizer()..onTap = () => { print("HY"),
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage())),},
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0962ff),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Test_Button extends StatelessWidget {
  Test_Button({this.char});
  String char;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 58,
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          color: Color(0xffffff),
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                offset: Offset(12, 11),
                blurRadius: 26,
                color: Color(0xffaaaaaa).withOpacity(0.1))
          ]),
      child: Center(
        child: Text(char,
            style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 29,
                fontWeight: FontWeight.bold,
                color: Color(0xff0962FF))),
      ),
    );
  }
}

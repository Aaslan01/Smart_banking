import 'package:flutter/material.dart';
import 'inputBox.dart';
import 'passwordChnage.dart';
import 'InputBoxNum.dart';
class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Content(),
    );
  }
}



class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Padding(
          padding: const EdgeInsets.only(left:23.0),
          child: Text('Forget Password',
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
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top:30),
                    child: Text(
                      "Account Recovery",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Cardo',
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF0C2551),
                      ),
                    ),
                  ),
                ),
                //
                SizedBox(
                  height: 20,
                ),
                //
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:50.0),
                    child: Text("Enter email of your account",
                    style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      color: Color(0xff8f9db2),
                    ),
                    ),
                  ),
                ),
                //
                SizedBox(
                  height: 17,
                ),
                //
                SimpleInput(
                  inputHint: 'example@example.com',
                ),
                //
                SizedBox(
                  height: 20,
                ),
                //
                InkWell(onTap: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                }, child: Container(
                  height: 50,
                  width: scrWidth*0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff0962ff),
                  ),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                )),
                //
                SizedBox(
                  height: 50,
                ),
                //
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:50.0),
                    child: Text("Send 6-Digits code to your email address",
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff8f9db5),
                      ),
                    ),
                  ),
                ),
                //
                SizedBox(
                  height: 20,
                ),
                //
                SimpleinputNum(
                  inputHint: '6-Digits',
                ),
                SizedBox(
                  height: 20,
                ),
                //
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left:50.0),
                    child: Text("Send 6-Digits code to your Phone Number",
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff8f9db5),
                      ),
                    ),
                  ),
                ),
                //
                SizedBox(
                  height: 20,
                ),
                //
                SimpleinputNum(
                  inputHint: '6-Digits',
                ),
                SizedBox(
                  height: 10,
                ),
                //
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>passwordChange()));
                }, child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right:40),
                    child: Container(
                      height: 50,
                      width: scrWidth*0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff0962ff),
                      ),
                      child: Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
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


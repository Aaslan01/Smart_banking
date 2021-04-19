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
          child: text1(
            label: 'Forget Password', colour: Color(0xFF0C2551),fontF: 'ProductSans', wei: FontWeight.bold, size: 25,
          ),
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
                    child: text1(
                      label:"Account Recovery", colour: Color(0xFF0C2551),fontF:'Cardo',wei: FontWeight.w900,size: 25
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
                    child: text1(label: "Enter email of your account", colour:Color(0xff8f9db2),fontF:'ProductSans', wei: FontWeight.bold,size: 18,

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
                    child: text1(label:"Next",colour: Colors.white, fontF: 'ProductSans', wei: FontWeight.w700,size:20,
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
                    child: text1(label:"Send 6-Digits code to your email address",colour: Color(0xff8f9db5),  fontF: 'ProductSans', wei: FontWeight.bold, size: 15,
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
                    child: text1(label: "Send 6-Digits code to your Phone Number",colour: Color(0xff8f9db5),fontF: 'ProductSans',wei:  FontWeight.bold,size: 15),
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
                        child:text1(label: "Confirm",colour: Colors.white,fontF: 'ProductSans',wei:  FontWeight.w700,size: 20),

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

class text1 extends StatelessWidget {

  text1({@required this.label , @required this.colour, @required this.fontF,@required this.wei, @required this.size});

  final String label;
  final Color colour;
  final String fontF;
  final FontWeight wei;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(label,
      style: TextStyle(
          color: colour,
          fontFamily: fontF,
          fontWeight: wei,
          fontSize: size,
      ),);
  }
}


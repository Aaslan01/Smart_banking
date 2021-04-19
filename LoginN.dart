import 'SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:login/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'ForgetPassword.dart';
import 'Front.dart';


import 'inputBox.dart';

const ConColor1 =  LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff0962ff),
      Colors.black38,
    ]
);


class HomePage1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrheight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: scrheight*0.4,
                  decoration: BoxDecoration(
                      gradient: ConColor1,
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(1, ImageCon(image1: AssetImage('assets/images/light-1.png'))),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.3, ImageCon(image1: AssetImage('assets/images/light-2.png'))),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 80),
                          child: Center(
                            child: Text("Login",
                              style:  TextStyle(
                                  fontFamily: 'Cardo',
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.only(top:20,bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            SimpleInput(inputHint: "Enter Valid Email",),
                            SizedBox(height: 10,),
                            SimpleInputP(inputHint: 'Password',),
                          ],
                        ),
                      )),
                      SizedBox(height: 30,),
                      FadeAnimation(2,FlatButton(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: ConColor1,
                          ),
                          child: Center(child: Text("Login", style: TextStyle(color: Colors.black87,
                              fontWeight: FontWeight.bold,fontSize: 25, fontFamily: "ProductSans"),
                          ),
                          ),
                        ),
                        onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>mainC()),);
                        },
                      ),),
                      SizedBox(height: 20,),
                      Column(
                        children: [
                          InkWell(
                            child: Center(child: Text("Forgot Password", style: TextStyle(color: Color(0xff0962ff),
                                fontWeight: FontWeight.bold, fontSize: 25),
                            ),),
                            onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                            },
                          ),
                          SizedBox(height: 20,),
                          InkWell(
                            child: Center(child: Text("Create New Account", style: TextStyle(color: Color(0xff0962ff),
                                fontWeight: FontWeight.w400, fontSize: 20),
                            ),),
                            onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpW()),);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

class ImageCon extends StatelessWidget {

  ImageCon({@required this.image1});

  AssetImage image1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: image1,
          )
      ),
    );
  }
}

//
// class AccPass extends StatelessWidget {
//
//   AccPass({@required this.text,@required this.colour,@required this.size,@required this.link});
//
//   String text;
//   Color colour;
//   double size;
//   Navigator link;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       child: Center(child: Text(text, style: TextStyle(color: colour,
//           fontWeight: FontWeight.bold, fontSize: size),
//       ),),
//       onTap: (){
//         Navigator.push(context, MaterialPageRoute(builder: (context)=>link));
//       },
//     );
//   }
// }
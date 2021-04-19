import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Accounts.dart';
import 'Login.dart';
import 'inputBox.dart';
import 'LoginN.dart';
class passwordChange extends StatelessWidget {
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
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align1(label: 'Enter New Password',colour: Color(0xff0962ff), fontF: 'ProductSans',wei: FontWeight.normal,size: 25,),
                SizedBox(
                  height: 10,
                ),
                SimpleInput(
                  inputHint: "8+ Characters",
                ),
                Align1(label:  'Re-Enter',colour: Color(0xff0962ff), fontF: 'ProductSans',wei: FontWeight.normal,size: 25,),

                SizedBox(
                  height: 10,
                ),
                SimpleInput(
                  inputHint: "8+ Characters",
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (content)=>HomePage1()));
                  },
                  child: Container(
                    height: 50,
                    width: scrWidth*0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        color: Color(0xff0962ff)
                    ),
                    child: Center(
                      child: text1(label: "Update Password",colour: Colors.white,fontF: "ProductSans",wei: FontWeight.bold,size: 20),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Align1 extends StatelessWidget {
  Align1({@required this.label , @required this.colour, @required this.fontF,@required this.wei, @required this.size});

  final String label;
  final Color colour;
  final String fontF;
  final FontWeight wei;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left:40,top: 50),
        child: Text(
          label,
          style: TextStyle(
              fontSize: size,
              fontFamily: fontF,
              fontWeight: wei,
              color: colour
          ),
        ),
      ),
    );
  }
}
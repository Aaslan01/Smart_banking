import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'inputBox.dart';

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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left:40,top: 50),
                    child: Text(
                      'Enter New Password',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.normal,
                          color: Color(0xff0962ff)
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SimpleInput(
                  inputHint: "8+ Characters",
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left:40,top: 25),
                    child: Text(
                      'Re-Enter',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.normal,
                          color: Color(0xff0962ff)
                      ),
                    ),
                  ),
                ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (content)=>Homepage()));
                  },
                  child: Container(
                    height: 50,
                    width: scrWidth*0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        color: Color(0xff0962ff)
                    ),
                    child: Center(
                      child: Text("Update Password",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "ProductSans"
                      )),
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

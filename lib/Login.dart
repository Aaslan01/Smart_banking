import 'SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:login/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'ForgetPassword.dart';
import 'Front.dart';
import 'settings.dart';



void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    home: Homepage(),
  )
);

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Image.asset('assets/images/pink_floyd.jpg').color,
     resizeToAvoidBottomInset: false,
     backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/pink_floyd.jpg'),
                  fit: BoxFit.fill
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Text("LOGIN",
                      style: TextStyle(
                        fontFamily: 'Cardo',
                        fontSize: 35,
                        color: Color(0xFFafa6db),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Padding(
                padding: EdgeInsets.only(left: 20,top: 40,right: 20,bottom: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                    FadeAnimation(1.3, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 12,
                              offset: Offset(0,8),
                            )
                          ]

                        ),
                     child:FadeAnimation(2, Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                          ),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Email",
                              hintStyle: TextStyle(color: Colors.grey
                              ),

                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                      SizedBox(height: 15,),
                      FadeAnimation(1.3, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 12,
                                offset: Offset(0,8),
                              )
                            ]
                        ),
                        child: FadeAnimation(2, Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white12,
                          ),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey)
                            ),
                          ),
                        ),
                        ),
                      ),),
                      SizedBox(height: 30),
                      FadeAnimation(1.3
                        ,FlatButton(
                          child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Colors.redAccent,
                                Colors.blue,
                              ]
                            )
                          ),
                          child: Center(child: Text("Login", style: TextStyle(color: Colors.black54,
                              fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          ),
                      ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DataPage()),);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    InkWell(
                      child: Center(child: Text("Forgot Password", style: TextStyle(color: Colors.white38,
                          fontWeight: FontWeight.bold, fontSize: 25),
                      ),),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));
                      },
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      child: Center(child: Text("Create New Account", style: TextStyle(color: Colors.white38,
                          fontWeight: FontWeight.w400, fontSize: 20),
                      ),),
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpW()),);
                      },
                    ),
                   ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

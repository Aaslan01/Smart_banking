
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ScreenSize.dart';
class DataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Content(),
    );
  }
}

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  int _currentIndex = 0;
  final List<Widget> _children = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Padding(
          padding: const EdgeInsets.only(left: 23.0),
          child: Text('Change',
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: displayWidth(context) * 0.9,
                    height: displayHeight(context) * 0.33,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          //stops: [0.1, 0.7, 0.9],
                          colors: [
                            // Colors.black38,
                            //Color(0xFF0C2551),
                            Colors.black,
                            Colors.blue,
                          ]
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(children: [
                          Align(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20, left: 30),
                              child: Text('Left to spend',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'ProductSans'
                                  )
                              ),
                            ),
                          ),
                          SizedBox(
                            width: displayWidth(context) * 0.4,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              size: 35,
                            ),
                          ),
                        ],),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: RichText(text: TextSpan(
                                children: [
                                  TextSpan(text: "Rs. ",
                                      style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontSize: 35,
                                        color: Colors.black,
                                      )
                                  ),
                                  TextSpan(text: "7,290",
                                      style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontSize: 35,
                                        color: Colors.black,
                                      )
                                  ),
                                ]
                            ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: RichText(text: TextSpan(
                                children: [
                                  TextSpan(text: "Of Your Rs: ",
                                      style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontSize: 20,
                                        color: Colors.black,
                                      )
                                  ),
                                  TextSpan(text: "45,000",
                                      style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontSize: 25,
                                        color: Color(0xff0962FF),
                                      )
                                  ),
                                  TextSpan(text: " Target- 13 Days",
                                      style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontSize: 20,
                                        color: Colors.black,
                                      )
                                  ),
                                ]
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(padding: EdgeInsets.only(left: 30, bottom: 10),
                    child: Text(
                      'Daily Insights',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'ProductSans',
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0962ff),
                      ),
                    ),),
                ),
                Container(
                  height: displayHeight(context) * 0.3,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 8),
                        height: 175,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black38,
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              //stops: [0.1, 0.7, 0.9],
                              colors: [
                                // Colors.black38,
                                //Color(0xFF0C2551),
                                Colors.black,
                                Colors.blue,
                              ]
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text('Spotify',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ProductSans',
                                  fontSize: 35,
                                ),
                              ),
                            ),
                            Divider(
                              height: 10,
                              thickness: 5,
                              endIndent: 10,
                              indent: 10,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: RichText(text: TextSpan(
                                    children: [
                                      TextSpan(text: "Rs. ",
                                          style: TextStyle(
                                            fontFamily: 'ProductSans',
                                            fontSize: 25,
                                            color: Colors.black,
                                          )
                                      ),
                                      TextSpan(text: "990",
                                          style: TextStyle(
                                            fontFamily: 'ProductSans',
                                            fontSize: 25,
                                            color: Color(0xff0962ff),
                                          )
                                      ),
                                    ]
                                ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('Upcoming debt on May 11',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ProductSans',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            InkWell(
                              child: Container(
                                width: 90,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xff0962ff),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('View',
                                    style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 8),
                        height: 175,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black38,
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              //stops: [0.1, 0.7, 0.9],
                              colors: [
                                // Colors.black38,
                                //Color(0xFF0C2551),
                                Colors.black,
                                Colors.blue,
                              ]
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text('Netflix',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ProductSans',
                                  fontSize: 35,
                                ),
                              ),
                            ),
                            Divider(
                              height: 10,
                              thickness: 5,
                              endIndent: 10,
                              indent: 10,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: RichText(text: TextSpan(
                                    children: [
                                      TextSpan(text: "Rs. ",
                                          style: TextStyle(
                                            fontFamily: 'ProductSans',
                                            fontSize: 25,
                                            color: Colors.black,
                                          )
                                      ),
                                      TextSpan(text: "250",
                                          style: TextStyle(
                                            fontFamily: 'ProductSans',
                                            fontSize: 25,
                                            color: Color(0xff0962ff),
                                          )
                                      ),
                                      TextSpan(text: " Per Screen",
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontSize: 20,
                                              color: Colors.black
                                          )
                                      ),
                                    ]
                                ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('Limited Offer',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ProductSans',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            InkWell(
                              child: Container(
                                width: 90,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xff0962ff),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('View',
                                    style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 8),
                        height: 175,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black38,
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              //stops: [0.1, 0.7, 0.9],
                              colors: [
                                // Colors.black38,
                                //Color(0xFF0C2551),
                                Colors.black,
                                Colors.blue,
                              ]
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text('YouTube',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ProductSans',
                                  fontSize: 35,
                                ),
                              ),
                            ),
                            Divider(
                              height: 10,
                              thickness: 5,
                              endIndent: 10,
                              indent: 10,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: RichText(text: TextSpan(
                                    children: [
                                      TextSpan(text: "Rs. ",
                                          style: TextStyle(
                                            fontFamily: 'ProductSans',
                                            fontSize: 25,
                                            color: Colors.black,
                                          )
                                      ),
                                      TextSpan(text: "990",
                                          style: TextStyle(
                                            fontFamily: 'ProductSans',
                                            fontSize: 25,
                                            color: Color(0xff0962ff),
                                          )
                                      ),
                                    ]
                                ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('Upcoming debt on May 11',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ProductSans',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            InkWell(
                              child: Container(
                                width: 90,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Color(0xff0962ff),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text('View',
                                    style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              backgroundColor: Colors.lightGreen,
              title: Text("home", style: TextStyle(color: Colors.white),)),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance),
              backgroundColor: Colors.lightGreen,
              title: Text("Account", style: TextStyle(color: Colors.white),)),
          BottomNavigationBarItem(icon: Icon(Icons.compare_arrows_sharp),
              backgroundColor: Colors.lightGreen,
              title: Text("Transection", style: TextStyle(color: Colors.white),)),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
              backgroundColor: Colors.lightGreen,
              title: Text("Setting", style: TextStyle(color: Colors.white),)),
        ],
      ),
    );
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/ScreenSize.dart';


class Accounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: DataA(),
    );
  }
}

class DataA extends StatefulWidget {
  @override
  _DataAState createState() => _DataAState();
}

class _DataAState extends State<DataA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Padding(
          padding: const EdgeInsets.only(left: 23.0),
          child: Text('Accounts',
            style: TextStyle(
                color: Color(0xFF0C2551),
                fontFamily: 'ProductSans',
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              size: 35,
              color: Color(0xff0962ff),
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Current Accounts',
                      style: TextStyle(
                        fontSize: 28,
                          color: Color(0xff0962ff),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ProductSans'
                      )),

                       RichText(text: TextSpan(
                         children: [
                           TextSpan(text: "Rs. ",
                               style: TextStyle(
                                 fontFamily: 'ProductSans',
                                 fontSize: 20,
                                 color: Colors.black,
                               )
                           ),
                           TextSpan(text: "7,290",
                               style: TextStyle(
                                 fontFamily: 'ProductSans',
                                 fontSize: 25,
                                 color: Colors.black,
                               )
                           ),
                         ]
                       ),
                       ),
                    ],
                  ),
                ),
                Container(
                  height: displayHeight(context)*0.15,
                  width: displayWidth(context)*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                    // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
                    // fit: BoxFit.cover)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text('Bank AlFalah',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff0962ff),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ProductSans'
                            )),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(text: "Rs. ",
                                  style: TextStyle(
                                    fontFamily: 'ProductSans',
                                    fontSize: 20,
                                    color: Colors.black,
                                  )
                              ),
                              TextSpan(text: "7,290",
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
                    ],
                  ),
                  ),
                SizedBox(height: 10,),
                Container(
                  height: displayHeight(context)*0.15,
                  width: displayWidth(context)*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                    // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
                    // fit: BoxFit.cover)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text('MCB',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff0962ff),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ProductSans'
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(text: "Rs. ",
                                  style: TextStyle(
                                    fontFamily: 'ProductSans',
                                    fontSize: 20,
                                    color: Colors.black,
                                  )
                              ),
                              TextSpan(text: "290",
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
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: displayHeight(context)*0.15,
                  width: displayWidth(context)*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                    // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
                    // fit: BoxFit.cover)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text('HBL',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff0962ff),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ProductSans'
                            )),
                      ),
                      SizedBox(
                        //width: displayWidth(context)*0.17,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(text: "Rs. ",
                                  style: TextStyle(
                                    fontFamily: 'ProductSans',
                                    fontSize: 20,
                                    color: Colors.black,
                                  )
                              ),
                              TextSpan(text: "990",
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, top: 25,right: 15,bottom:15 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Online Services ',
                          style: TextStyle(
                              fontSize: 28,
                              color: Color(0xff0962ff),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ProductSans'
                          )),
                      RichText(text: TextSpan(
                          children: [
                            TextSpan(text: "Rs. ",
                                style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 20,
                                  color: Colors.black,
                                )
                            ),
                            TextSpan(text: "30,000",
                                style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 25,
                                  color: Colors.black,
                                )
                            ),
                          ]
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: displayHeight(context)*0.15,
                  width: displayWidth(context)*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                    // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
                    // fit: BoxFit.cover)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text('PayPal',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff0962ff),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ProductSans'
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: RichText(text: TextSpan(
                            children: [
                              TextSpan(text: "Rs. ",
                                  style: TextStyle(
                                    fontFamily: 'ProductSans',
                                    fontSize: 20,
                                    color: Colors.black,
                                  )
                              ),
                              TextSpan(text: "23,780",
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

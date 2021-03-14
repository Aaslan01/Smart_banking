import 'package:flutter/material.dart';
import 'ScreenSize.dart';


class ExpenditureC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: ExpenditureData(),
    );
  }
}

class ExpenditureData extends StatefulWidget {
  @override
  _ExpenditureDataState createState() => _ExpenditureDataState();
}

class _ExpenditureDataState extends State<ExpenditureData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Padding(
          padding: const EdgeInsets.only(left:19.0),
          child: Text('Monthly Expenditures List',
            style: TextStyle(
                color: Color(0xFF0C2551),
                fontFamily: 'ProductSans',
                fontWeight: FontWeight.bold,
                fontSize: 25,
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
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left:10.0),
                     child: Text('Total Expenditures',
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
                           TextSpan(text: "2,73,400",
                               style: TextStyle(
                                 fontFamily: 'ProductSans',
                                 fontSize: 25,
                                 color: Colors.black,
                               )
                           ),
                         ]
                     ),
                     ),
                   ),
                 ],
               ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top:10),
                  height: displayHeight(context)*0.15,
                  width: displayWidth(context)*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                    // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
                    // fit: BoxFit.cover)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                          child: Icon(
                            Icons.home,
                            size: 40,
                          ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Text('House',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.bold,
                            ),),
                          )),

                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: RichText(text: TextSpan(
                                children: [
                                  TextSpan(text: "Rs. ",
                                      style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontSize: 20,
                                        color: Colors.black,
                                      )
                                  ),
                                  TextSpan(text: "1,07,000",
                                      style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontSize: 23,
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
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top:10),
                  height: displayHeight(context)*0.15,
                  width: displayWidth(context)*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                    // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
                    // fit: BoxFit.cover)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.shopping_bag,
                          size: 40,
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Text('Shopping',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'ProductSans',
                                fontWeight: FontWeight.bold,
                              ),),
                          )),

                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: RichText(text: TextSpan(
                              children: [
                                TextSpan(text: "Rs. ",
                                    style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 20,
                                      color: Colors.black,
                                    )
                                ),
                                TextSpan(text: "22,455",
                                    style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 23,
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
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top:10),
                  height: displayHeight(context)*0.15,
                  width: displayWidth(context)*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                    // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
                    // fit: BoxFit.cover)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.local_grocery_store,
                          size: 40,
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Text('Grocery',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'ProductSans',
                                fontWeight: FontWeight.bold,
                              ),),
                          )),

                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: RichText(text: TextSpan(
                              children: [
                                TextSpan(text: "Rs. ",
                                    style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 20,
                                      color: Colors.black,
                                    )
                                ),
                                TextSpan(text: "23,000",
                                    style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 23,
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
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top:10),
                  height: displayHeight(context)*0.15,
                  width: displayWidth(context)*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                    // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
                    // fit: BoxFit.cover)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.emoji_transportation,
                          size: 40,
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Text('Transport',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'ProductSans',
                                fontWeight: FontWeight.bold,
                              ),),
                          )),

                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: RichText(text: TextSpan(
                              children: [
                                TextSpan(text: "Rs. ",
                                    style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 20,
                                      color: Colors.black,
                                    )
                                ),
                                TextSpan(text: "12,000",
                                    style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 23,
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
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top:10),
                  height: displayHeight(context)*0.15,
                  width: displayWidth(context)*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                    // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
                    // fit: BoxFit.cover)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.list_alt_outlined,
                          size: 40,
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Text('Bills',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'ProductSans',
                                fontWeight: FontWeight.bold,
                              ),),
                          )),

                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: RichText(text: TextSpan(
                              children: [
                                TextSpan(text: "Rs. ",
                                    style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 20,
                                      color: Colors.black,
                                    )
                                ),
                                TextSpan(text: "97,000",
                                    style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 23,
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
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top:10),
                  height: displayHeight(context)*0.15,
                  width: displayWidth(context)*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                    // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
                    // fit: BoxFit.cover)
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.fact_check_outlined,
                          size: 40,
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Text('Others',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'ProductSans',
                                fontWeight: FontWeight.bold,
                              ),),
                          )),

                      Expanded(
                        flex: 2,
                        child: Padding(
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
                                TextSpan(text: "12,000",
                                    style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontSize: 23,
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


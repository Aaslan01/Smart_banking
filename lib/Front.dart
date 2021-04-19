
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ScreenSize.dart';


class mainC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: MainData(),
    );
  }
}

class MainData extends StatefulWidget {
  @override
  _MainDataState createState() => _MainDataState();
}

class _MainDataState extends State<MainData> {
  int _currentIndex = 0;
  final List<Widget> _children = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Padding(
          padding: const EdgeInsets.only(left: 23.0),
          child: text1(label: 'Change', colour: Color(0xFF0C2551), fontF: 'ProductSans', wei: FontWeight.bold, size:  25)
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
                    decoration:  BoxDecoration(
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
                          child: Front_Align1(span1:"Rs. ",span1size: 35,span3: "7,290",span3size: 45,)

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Front_Align1(span1:"Of Your Rs: ",span1size: 20,span2:"45,092",span2size: 25,span3: " Target-13 Days",span3size: 20,)
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(padding: EdgeInsets.only(left: 30, bottom: 10),
                    child: text1(label: 'Daily Insights',  colour:  Color(0xff0962ff),fontF: 'ProductSans',wei: FontWeight.bold, size: 20)
                  ),
                ),
                Container(
                  height: displayHeight(context) * 0.3,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 20,),
                      insights_Container(label: "Spotify", span1: "Rs. ", span2: "990", paddingT: "Upcoming debt on May 11",LinkT: "View",),
                      insights_Container(label: "Netflix", span1: "Rs. ", span2: "250", span3: "Per Screen",paddingT: "Limited Offer",LinkT: "View",),
                      insights_Container(label: "YouTube", span1: "Rs. ", span2: "1100", paddingT: "Upcoming debt on May 11",LinkT: "View",),
                      SizedBox(width: 15,),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
      );
  }
}

class insights_Container extends StatelessWidget {

  insights_Container({@required this.label, @required this.span1, this.span2, this.span3, @required this.paddingT, @required this.LinkT});
  final String label;
  final String span1;
  final String span2;
  final String span3;
  final String paddingT;
  final String LinkT;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Text(label,
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
                    TextSpan(text: span1,
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 25,
                          color: Colors.black,
                        )
                    ),
                    TextSpan(text: span2,
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 25,
                          color: Color(0xff0962ff),
                        )
                    ),
                    TextSpan(text: span3,
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
            child: text1(label: paddingT,colour: Colors.black,fontF: 'ProductSans',wei: FontWeight.bold,size: 20)

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
                child: text1(label: LinkT,colour: Colors.white,fontF: 'ProductSans',wei: FontWeight.bold,size: 20)
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Front_Align1 extends StatelessWidget {
  Front_Align1({this.span1,this.span1size,this.span2,this.span2size,this.span3,this.span3size});
final String span1; final double span1size;
final String span2; final double span2size;
final String span3; final double span3size;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(text: TextSpan(
          children: [
            TextSpan(text: span1,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: span1size,
                  color: Colors.black,
                )
            ),
            TextSpan(text: span2,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: span2size,
                  color: Color(0xff0962FF),
                )
            ),
            TextSpan(text: span3,
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: span3size,
                  color: Colors.black,
                )
            ),
          ]
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

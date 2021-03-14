import 'package:flutter/material.dart';
import 'ScreenSize.dart';


class SettingC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: SettingData(),
    );
  }
}

class SettingData extends StatefulWidget {
  @override
  _SettingDataState createState() => _SettingDataState();
}

class _SettingDataState extends State<SettingData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Padding(
          padding: const EdgeInsets.only(left:19.0),
          child: Text('Settings',
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
                buildContainer(nameSetting: 'Setting',
                IconD: Icons.settings,),
                buildContainer(nameSetting: 'Privacy & Security',
                  IconD: Icons.lock_outlined,),
                buildContainer(nameSetting: 'About',
                  IconD: Icons.account_balance_outlined),



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
  //
  // Container buildContainer(BuildContext context) {
  //   String nameSetting;
  //   IconData iconD;
  //
  //   buildContainer({this.nameSetting, this.ic});
  //   return Container(
  //              // margin: EdgeInsets.only(left:10),
  //               padding: EdgeInsets.all(10),
  //               height: displayHeight(context)*0.09,
  //               width: displayWidth(context),
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(10),
  //                 //color: Colors.black,
  //                 gradient: LinearGradient(
  //                     begin: Alignment.topLeft,
  //                     end: Alignment.bottomRight,
  //                     //stops: [0.1, 0.7, 0.9],
  //                     colors: [
  //                       // Colors.black38,
  //                       //Color(0xFF0C2551),
  //                       Colors.black,
  //                       Colors.white,
  //                     ]
  //                 ),
  //                 // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
  //                 // fit: BoxFit.cover)
  //               ),
  //               child: Row(
  //                 children: [
  //                   Expanded(
  //                     flex: 1,
  //                     child: Icon(iconD,
  //                       size: 25,
  //                       color: Colors.white,
  //                     ),
  //                   ),
  //                   Expanded(
  //                       flex: 6,
  //                       child: Container(
  //                         child: Text('House',
  //                           style: TextStyle(
  //                             fontSize: 25,
  //                             fontFamily: 'ProductSans',
  //                             fontWeight: FontWeight.bold,
  //                             color: Colors.white,
  //                           ),),
  //                       )),
  //
  //                 ],
  //               ),
  //             );
  // }
}

class buildContainer extends StatelessWidget {
  String nameSetting;
  IconData IconD;

  buildContainer({this.nameSetting,this.IconD});
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left:10),
      padding: EdgeInsets.all(10),
      height: displayHeight(context)*0.09,
      width: displayWidth(context),
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(10),
        //color: Colors.black,
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            //stops: [0.1, 0.7, 0.9],
            colors: [
              // Colors.black38,
              //Color(0xFF0C2551),
              Colors.black,
              Colors.white,
            ]
        ),
        // image: DecorationImage(image: AssetImage('assets/images/Spotify.png'),
        // fit: BoxFit.cover)
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Icon(IconD,
              size: 25,
              color: Colors.white,
            ),
          ),
          Expanded(
              flex: 6,
              child: Container(
                child: Text('House',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'ProductSans',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
              )),

        ],
      ),
    );
  }
}


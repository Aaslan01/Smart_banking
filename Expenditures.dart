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
          child: text1(label:'Monthly Expenditures List',colour:Color(0xFF0C2551),fontF:'ProductSans',size: 25),
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
                     child: text1(label: 'Total Expenditures', colour: Color(0xff0962ff), fontF: 'ProductSans', wei: FontWeight.bold, size: 25)

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
                ExpenditureCon(icon: Icons.home,Tlabel: "House",span2: "1,07,000",),
                ExpenditureCon(icon:  Icons.shopping_bag,Tlabel: 'Shopping',span2: "22,455",),
                ExpenditureCon(icon:  Icons.local_grocery_store,Tlabel: 'Grocery',span2: "23,000",),
                ExpenditureCon(icon: Icons.emoji_transportation,Tlabel: 'Transport',span2: "12,000",),
                ExpenditureCon(icon: Icons.list_alt_outlined,Tlabel: 'Bills',span2: "97,000",),
                ExpenditureCon(icon:  Icons.fact_check_outlined,Tlabel: 'Others',span2: "12,000",),
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

class ExpenditureCon extends StatelessWidget {

  ExpenditureCon({@required this.icon,@required this.Tlabel, @required this.span2});
  final IconData icon;
  final String Tlabel;
  final String span2;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                icon,
                size: 40,
              ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                child: text1(label: Tlabel, colour: null, fontF: 'ProductSans', wei: FontWeight.bold, size: 30)

              )),

          Expanded(
              flex: 3,
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
                      TextSpan(text: span2,
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

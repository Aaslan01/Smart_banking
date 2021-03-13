import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dailyExpenses.dart';
import 'package:flutter/widgets.dart';

class FrontView extends StatefulWidget {
  @override
  _FrontViewState createState() => _FrontViewState();
}

class _FrontViewState extends State<FrontView> {
  @override
  List<Transaction> transationList = [
    Transaction(
        time: '06.32', purose: 'Starbucks', cost: '6.86'),
    Transaction(
        time: '11.42', purose: 'Nike', cost: '916.86'),
    Transaction(
        time: '06.09',
        purose: 'Apple',
        cost: '3656.86'),
    Transaction(
        time: '02.02', purose: 'H&M', cost: '76.86'),
    Transaction(
        time: '06.32', purose: 'Starbucks', cost: '6.86'),
    Transaction(
        time: '11.42', purose: 'Nike', cost: '916.86'),
    Transaction(
        time: '06.09',
        purose: 'Apple',
        cost: '3656.86'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smart Banking"),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),
      ),
      body:SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Available Amount ",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('25,200',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                            width: 10
                        ),
                        Text('RS',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: (){},
                          child: Icon(Icons.arrow_upward_sharp,
                            size: 40,
                            color: Color(0xFFafa6db),
                          ),

                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FloatingActionButton(
                          onPressed: (){},
                          child: Icon(Icons.arrow_downward_sharp,
                            size: 40,
                            color: Color(0xFFafa6db),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(40), topEnd: Radius.circular(40))
                ),
                margin: EdgeInsets.only(left: 10,right: 10),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex:1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Today',
                          style: GoogleFonts.lato(
                            color: Colors.grey[600],
                            fontSize: 35,
                            fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            for (Transaction transaction in transationList)
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(3)),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      transaction.time,
                                      style: GoogleFonts.lato(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      transaction.purose,
                                      style: GoogleFonts.lato(
                                          color: Colors.grey[700],
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Text(
                                      '\$ ${transaction.cost}',
                                      style: GoogleFonts.lato(
                                          color: Colors.grey[700],
                                          fontSize: 22,
                                          fontWeight: FontWeight.w900),
                                    )
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),backgroundColor: Colors.red, title: Text("home")),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), title: Text("Accounts")),
          BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text("Setting")
          )
        ],
      ),
    );
  }
}

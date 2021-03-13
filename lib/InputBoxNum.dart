import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputboxNum extends StatefulWidget {
  String label;
  String inputHint;
  KeyboardSide keyBoardType;
  CustomInputboxNum({this.label, this.inputHint});
  @override
  _CustomInputboxState createState() => _CustomInputboxState();
}

class _CustomInputboxState extends State<CustomInputboxNum> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 50, bottom: 8),
            child: Text(
              widget.label,
              style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 15,
                color: Color(0xff8f9db5),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: TextFormField(
              keyboardType: TextInputType.number,
              obscureText: widget.inputHint == '8+ Characters' ? true : false,
              //obscureText: widget.label == 'Re-Enter Password' ? true : false,
              onEditingComplete: () {},
              style: TextStyle(
                fontSize: 19,
                color: Color(0xff0962ff),
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: widget.inputHint,
                hintStyle: TextStyle(
                  fontSize: 19,
                  color: Colors.grey[350],
                  fontWeight: FontWeight.w600,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 27, horizontal: 25),
                focusColor: Color(0xff0962ff),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                  borderSide: BorderSide(
                    color: Color(0xff0962ff),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                  borderSide: BorderSide(
                    color: Colors.grey[350],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}

class SimpleinputNum extends StatefulWidget {
  String inputHint;
  SimpleinputNum({this.inputHint});
  @override
  _SimpleinputNumState createState() => _SimpleinputNumState();
}

class _SimpleinputNumState extends State<SimpleinputNum> {

  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: TextFormField(
              keyboardType: TextInputType.number,
              maxLength: 6,

              onEditingComplete: () {},
              style: TextStyle(
                fontSize: 19,
                color: Color(0xff0962ff),
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: widget.inputHint,
                hintStyle: TextStyle(
                  fontSize: 19,
                  color: Colors.grey[350],
                  fontWeight: FontWeight.w600,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 27, horizontal: 25),
                focusColor: Color(0xff0962ff),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                  borderSide: BorderSide(
                    color: Color(0xff0962ff),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                  borderSide: BorderSide(
                    color: Colors.grey[350],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}


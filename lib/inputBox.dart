import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class CustomInputbox extends StatefulWidget {
  String label;
  String inputHint;
  CustomInputbox({this.label, this.inputHint});
  @override
  _CustomInputboxState createState() => _CustomInputboxState();
}

class _CustomInputboxState extends State<CustomInputbox> {
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
              )
          ),
        ),
      ],
    );
  }
}

class SimpleInput extends StatefulWidget {
  String inputHint;
  SimpleInput({this.inputHint});
  @override
  _SimpleInputState createState() => _SimpleInputState();
}

class _SimpleInputState extends State<SimpleInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: TextFormField(
              obscureText: widget.inputHint == '8+ Characters' ? true : false,
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
                  color: Colors.black38,
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
              )
          ),
        ),
      ],
    );
  }
}


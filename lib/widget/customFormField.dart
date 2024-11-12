import 'package:flutter/material.dart';

class Customformfield extends StatelessWidget {
  Customformfield({super.key,required this.txt,required this.icon,required this.cont});
  String txt;
  IconData icon;
  TextEditingController cont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 30,
      child: TextFormField(
        controller: cont,
        validator: (value) {
          if(cont.text == null || cont.text.isEmpty){
            return "field is required";
          }
          else
            return null;
        },
        decoration: InputDecoration(
          hintText: txt,
          suffix: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final String errorFunction;
  final Function onChanged;
  final TextInputType keyboardType;
  final IconData iconData;
  
  
  const TextFieldWidget(Key key, this.text, this.errorFunction, this.onChanged, this.keyboardType, this.iconData) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
         contentPadding: EdgeInsets.symmetric(vertical: 0),
          errorText: errorFunction == null ? null : errorFunction,
          errorBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
          ),
          labelText: text,
          labelStyle: TextStyle(color: Colors.grey, fontSize: 15.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
          ),
          prefixIcon: Icon(iconData, color: Colors.grey),),
      textAlign: TextAlign.left,
      style: TextStyle(fontSize: 25.0, color: Colors.black),
    );
  }
}

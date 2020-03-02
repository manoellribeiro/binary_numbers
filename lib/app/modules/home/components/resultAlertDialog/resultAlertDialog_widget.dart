import 'package:flutter/material.dart';

class ResultAlertDialogWidget extends StatelessWidget {

  final Key key;
  final String resultNumber;

  ResultAlertDialogWidget(this.resultNumber, this.key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      titlePadding: EdgeInsets.all(0),
      contentPadding: EdgeInsets.all(10),
      title: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xff0AF9ED),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            )
          ),
          child: Center(child: Text("Resultado", style: TextStyle(color: Colors.white, fontSize: 20),)) ),
      content: Text(resultNumber, textAlign: TextAlign.center,),
      actions: <Widget>[
        FlatButton(
          child: Text("Refazer"),
          onPressed: (){
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
        FlatButton(
          child: Text("Ok"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

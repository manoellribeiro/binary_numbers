import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:problema_dois_digistarts/app/modules/home/components/textField/textField_widget.dart';
import 'package:problema_dois_digistarts/app/modules/home/home_controller.dart';

import 'components/resultAlertDialog/resultAlertDialog_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Operações com \n números binários"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = HomeController();


  _showDialog(){
    return showDialog(
        context: context,
        builder: (_){
          return ResultAlertDialogWidget(controller.resultText
              );
        });
  }


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff0AF9ED),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(widget.title,
                 style: TextStyle(fontSize: 25,
                    color: Colors.white,),
                  textAlign: TextAlign.center,),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                    width: screenWidht*0.9,
                    height: screenHeight*0.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                  Observer(
                    builder: (_){
                      return TextFieldWidget(
                  "Primeiro número binário",
                  controller.validateFirstBinaryNumberValue(),
                  controller.getFirstBinaryNumberValue,
                  TextInputType.number,
                  Icons.filter_1);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10)
                    ),
                  Observer(
                    builder: (_){
                      return TextFieldWidget(
                  "Segundo número binário",
                  controller.validateSecondBinaryNumberValue(),
                  controller.getSecondBinaryNumberValue,
                  TextInputType.number,
                  Icons.filter_2);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Observer(
                        builder: (_){
                          return Align(
                            alignment: Alignment.centerLeft,
                            child: DropdownButton<String>(
                                isExpanded: false,
                                elevation: 0,
                                hint: Text(controller.hintText),
                                icon: Icon(Icons.arrow_drop_down),
                                items: controller.operationsTypes.map((String dropDownStringItem){
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.trip_origin, size: 10),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5),
                                        ),
                                        Text(dropDownStringItem)
                                      ],
                                    )
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  controller.hintText = value;
                                }
                            ),
                          );
                        },
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      height: screenHeight*0.08,
                      width: screenWidht*0.9 - 10,
                      child: Observer(
                        builder: (_){
                          return RaisedButton(
                            color: Color(0xff0AF9ED),
                            disabledColor: Colors.grey,
                            onPressed: ((controller.validateFirstBinaryNumberForm) & (controller.validateSecondBinaryNumberForm)) ?(){
                              controller.calculate();
                              _showDialog();
                            }: null,
                            child: Text(
                              "Realizar operação",
                              style:
                              TextStyle(color: Colors.white, fontSize: 25)),
                            );
                        },),
                      ),
                    ),
                        ],
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

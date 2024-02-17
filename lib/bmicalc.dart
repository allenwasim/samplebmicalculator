
import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculator(){
    h_value=double.parse(height.text);
    w_value=double.parse(weight.text);
   result=w_value/(h_value*h_value);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title: const Text('Bmicalculator')),
    backgroundColor: Colors.indigo,
    body:Column(mainAxisAlignment:MainAxisAlignment.center,children: [

      SizedBox(width: 200,child: Center(child: TextField(
        controller: height,
        decoration:  InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Enter weight',
        ),
      ),),),

    SizedBox(width: 200,child: Center(child: TextField(
      controller: weight,
      decoration:  InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Enter weight',
      ),
    ),),)
     ,
      TextButton(
          onPressed: (){
        setState((){
          calculator();
      });
      },
          child: Text('Calculate')),
        Text(result.toString()),
     ]),
    );
  }
}

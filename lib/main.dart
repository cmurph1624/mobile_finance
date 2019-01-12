import 'package:flutter/material.dart';
import 'package:mobile_finance/model/budgetremaining_service.dart';
import 'package:mobile_finance/ui/home.dart';
import 'package:mobile_finance/ui/remainingbudget.dart';
import 'package:mobile_finance/ui/transaction.dart';


//void main() {
//  runApp(new MaterialApp(
//    title: "BMI Calculator",
//    // ignore: argument_type_not_assignable
//    //home: new Transaction(),
//    home: new RemainingBudget(br: LoadRemainingBudget())
//  ));
//}

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new RemainingBudget(br: LoadRemainingBudget())
    );
  }
}


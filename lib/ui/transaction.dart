import 'package:flutter/material.dart';
import 'package:mobile_finance/model/category_service.dart';
import 'package:mobile_finance/model/transaction.dart';
import 'package:mobile_finance/model/transaction_service.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  final TextEditingController _descriptionController = new TextEditingController();
  final TextEditingController _amountController = new TextEditingController();
  final TextEditingController _amountTypeController = new TextEditingController();
  final TextEditingController _groupController = new TextEditingController();
  final TextEditingController _typeController = new TextEditingController();

  void _submitValues(){
    TransactionItem t = new TransactionItem();
    t.description = _descriptionController.text;
    t.amount = double.tryParse(_amountController.text);
    t.group = _groupController.text;
    t.type = _typeController.text;
    updateTransaction(t);
  }

  @override
  void initState(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
      appBar: new AppBar(
        title: new Text('Transaction'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(2.5),
          children: <Widget>[
            TextField(
              controller: _descriptionController,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                labelText: "Description",
              ),
              style: transactionStyle()
            ),
            new TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                labelText: "Amount",
              ),
              style: transactionStyle(),
            ),
            new TextField(
              controller: _groupController,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                labelText: "Category",
              ),
              style: transactionStyle(),
            ),
            new TextField(
              controller: _typeController,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                labelText: "Type",
              ),
              style: transactionStyle(),
            ),

          new Padding(
            padding: new EdgeInsets.all(5.6),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new RaisedButton(
                  onPressed: _submitValues,
                  textColor: Colors.white,
                  color: Colors.red,
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    "Submit",
                  )
              )
            ]
          )

          ],
        )
      )
    );
  }
}

List<DropdownMenuItem<String>> getCatagoryDropDownMenuItems(){
  CategoryService c = new CategoryService();
  List<String> ls = c.GetCategoryItems();
  List<DropdownMenuItem<String>> items = new List();

  for (String cat in ls){
    items.add(new DropdownMenuItem(
      value: cat,
      child: new Text(cat)
    ));
  }
  return items;
}

TextStyle transactionStyle() {
  return new TextStyle(
      color: Colors.black,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 25
  );
}
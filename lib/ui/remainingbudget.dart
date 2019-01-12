import 'package:flutter/material.dart';
import 'package:mobile_finance/model/budgetremaining.dart';
import 'package:mobile_finance/ui/transaction.dart';




class RemainingBudget extends StatelessWidget {
  final Future<List<BudgetRemainingItem>> br;
  RemainingBudget({Key key, this.br}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Budget"),
          centerTitle: true,
        ),
        body: new FutureBuilder(
            future: br,
            builder: (BuildContext context, AsyncSnapshot snapshot)
            {
              if(snapshot.hasData){
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index){
                      return _makeCard(snapshot.data[index].category, snapshot.data[index].remaining);
                      //return ListTile(title: Text(snapshot.data[index].category),);
                    }
                    );
              }else{
                return Container(
                  child: Center(
                  child: Text
                  ("Loading...")
                  ),
                );
              }
            }
            ),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Transaction())
                  );
                })
    );
  }
}

Card _makeCard(String _title, double _remainingAmount){
  final makeCard = Card(
    elevation: 8.0,
    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    child: Container(
      decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
      child: _makeListTile(_title, _remainingAmount),
    ),
  );

  return makeCard;
}


ListTile _makeListTile(String _title, double _remainingAmount){
  final makeListTile = ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.autorenew, color: Colors.white),
      ),
      title: Text(
        _title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[
//          Icon(Icons.linear_scale, color: Colors.yellowAccent),
          Text("\$$_remainingAmount", style: TextStyle(color: Colors.white, fontSize: 20))
        ],
      ),
      trailing:
      Icon(Icons.description, color: Colors.white, size: 30.0));

    return makeListTile;
}

class TransactionItem{
  int id;
  String description;
  double amount;
  String group;
  String type;

  TransactionItem({this.id, this.description, this.amount, this.group, this.type});

  factory TransactionItem.fromJson(Map<String, dynamic> parsedJson){
    return TransactionItem(
      id: parsedJson['id'],
      description: parsedJson['description'],
      amount: parsedJson['amount'],
      group: parsedJson['group'],
      type: parsedJson['type']
    );
  }
}


//class MockTransaction{
//  static final MockTransaction
//  factory
//}

class BudgetRemainingItem{
  String category;
  DateTime budgetBegin;
  DateTime budgetEnd;
  double beginningAmount;
  double amountUsed;
  double remaining;

  BudgetRemainingItem({this.category, this.budgetBegin, this.budgetEnd, this.beginningAmount, this.amountUsed, this.remaining});

  factory BudgetRemainingItem.fromJson(Map<String, dynamic> parsedJson){
      return BudgetRemainingItem(

      );

  }
}
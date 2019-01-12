
import 'package:mobile_finance/model/budgetremaining.dart';

Future <List<BudgetRemainingItem>> LoadRemainingBudget() async{
  List<BudgetRemainingItem> ls = new List<BudgetRemainingItem>();
  ls.add(CreateNewItem("Misc", new DateTime(2018, 12, 5), 500.0, 250.0, 250.0));
  ls.add(CreateNewItem("Rent", new DateTime(2018, 12, 5), 1000.0, 1000.0, 0.0));
  ls.add(CreateNewItem("Insurance", new DateTime(2018, 12, 5), 250.0, 250.0, 0));
  ls.add(CreateNewItem("Gas", new DateTime(2018, 12, 5), 150.0, 75.0, 75.0));
  ls.add(CreateNewItem("Food", new DateTime(2018, 12, 5), 400, 405.0, -5.0));
  return ls;
}

BudgetRemainingItem CreateNewItem(String category,
                                  DateTime budgetEnd,
                                  double beginningAmount,
                                  double amountUsed,
                                  double remaining) {

  BudgetRemainingItem b = new BudgetRemainingItem(category: category,
                                                  budgetEnd: budgetEnd,
                                                  beginningAmount: beginningAmount,
                                                  amountUsed: amountUsed,
                                                  remaining: remaining);

  return b;
}
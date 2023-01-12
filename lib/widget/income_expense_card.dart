import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ExpenseData {
  final String label;
  final String amuont;
  final IconData icon;

  const ExpenseData(this.label, this.amuont, this.icon);
}

class IncomeExpenseCard extends StatelessWidget {
  final ExpenseData expenseData;
  const IncomeExpenseCard({super.key, required this.expenseData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: defaultSpacing),
      padding: const EdgeInsets.all(defaultSpacing),
      decoration: BoxDecoration(
        color: expenseData.label == 'Income' ? primaryDark : Colors.red,
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultRadius),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(expenseData.label),
                Text(expenseData.amuont),
              ],
            ),
          ),
          Icon(expenseData.icon)
        ],
      ),
    );
  }
}

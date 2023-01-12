import 'package:flutter/material.dart';
import 'package:phixlab_money/utils/constants.dart';
import 'package:phixlab_money/widget/income_expense_card.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          children: [
            const SizedBox(
              height: defaultSpacing * 4,
            ),
            Row(
              children: const [
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData:
                        ExpenseData('Income', '\$2,000.00', Icons.arrow_upward),
                  ),
                ),
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData: ExpenseData(
                        'OutCome', '\$1,500.00', Icons.arrow_downward),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

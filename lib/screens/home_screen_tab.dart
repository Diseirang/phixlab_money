import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../widget/income_expense_card.dart';

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
            ListTile(
              title: const Text('Hey! Seirang!'),
              leading: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(defaultRadius),
                ),
                child: Image.asset('assets/images/avatar2.jpg'),
              ),
              trailing: Image.asset('assets/icons/bell.png'),
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    '\$4,000.00',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: fontSizeHeading,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  const SizedBox(
                    height: defaultSpacing / 2,
                  ),
                  Text(
                    'Total balance',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: fontLight,
                        ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData: ExpenseData(
                        'Income', '\$2,000.00', Icons.arrow_upward_rounded),
                  ),
                ),
                // SizedBox(
                //   width: defaultSpacing,
                // ),
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData: ExpenseData(
                        'Expense', '-\$400.00', Icons.arrow_downward_rounded),
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

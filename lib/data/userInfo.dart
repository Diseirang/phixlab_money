enum TransactionType {
  outflow,
  inflow,
}

enum ItemCategoryType {
  fashion,
  grocery,
  payments,
}

class UserInfo {
  final String name;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transactions;

  const UserInfo({
    required this.name,
    required this.totalBalance,
    required this.inflow,
    required this.outflow,
    required this.transactions,
  });
}

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  const Transaction(
    this.categoryType,
    this.transactionType,
    this.itemCategoryName,
    this.itemName,
    this.amount,
    this.date,
  );
}

const List<Transaction> transactions1 = [
  Transaction(
    ItemCategoryType.fashion,
    TransactionType.outflow,
    'Shoes',
    'Puma Sneaker',
    '\$3,500.00',
    'Jan, 23',
  ),
  Transaction(
    ItemCategoryType.fashion,
    TransactionType.outflow,
    'T-Shirt',
    'Puma Tiger',
    '\$2,500.00',
    'Feb, 24',
  ),
];
const List<Transaction> transactions2 = [
  Transaction(
    ItemCategoryType.fashion,
    TransactionType.inflow,
    'Payments',
    'Transfer from Eden',
    '\$13,500.00',
    'Sept, 23',
  ),
  Transaction(
    ItemCategoryType.fashion,
    TransactionType.inflow,
    'Food',
    'Chicken Wing',
    '\$2,500.00',
    'Feb, 24',
  ),
];

const userdata = UserInfo(
    name: 'Seirang',
    totalBalance: '\$4,548.00',
    inflow: '\$4,000.00',
    outflow: '\$1,500.00',
    transactions: []);

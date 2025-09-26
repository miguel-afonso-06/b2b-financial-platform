import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import '../models/transaction.dart';
import '../utils/data_converter.dart';

class TransactionCard extends StatelessWidget {
  // 2. The error 'Undefined class Transaction' will also disappear once the import is fixed.
  final Transaction transaction;

  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    // Implement your card UI here, using 'this.transaction' data.
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(transaction.name),
        subtitle: Text(DataConverter.dateTimeToString(transaction.dateTime)),
        trailing: Text(DataConverter.doubleToCurrency(transaction.amount, currencyCode: transaction.currency)),
      ),
    );
  }
}
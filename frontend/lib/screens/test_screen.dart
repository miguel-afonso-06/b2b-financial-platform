import 'package:flutter/material.dart';
import 'package:frontend/widgets/transaction_card.dart';
import 'package:frontend/models/transaction.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sampleTransaction = Transaction(
      uuid: '1234',
      dateTime: DateTime.now(),
      name: 'Office Supplies',
      description: 'Paper, Clips and Pencils',
      flow: 'expense',
      category: 'Operations',
      type: 'one-time',
      amount: 150.00,
      currency: 'USD',
      status: 'completed',
      account: 'Business Checking',
      user: 'John Doe',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Widget Preview')),
      body: Center(
        child: TransactionCard(transaction: sampleTransaction),
      ),
    );
  }
}

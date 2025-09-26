import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/widgets/transaction_card.dart';
import 'package:frontend/models/transaction.dart';

void main() {
  testWidgets('TransactionCard displays correct text', (WidgetTester tester) async {
    // Create a sample transaction
    final sampleTransaction = Transaction(
      uuid: '1234-5678',
      dateTime: DateTime.now(),
      name: 'Office Supplies',
      description: 'Pens, paper and stapples.',
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

    // Pass it to the widget
    await tester.pumpWidget(
      MaterialApp(
        home: TransactionCard(transaction: sampleTransaction),
      ),
    );

    // Now you can run your tests
    expect(find.text('Office Supplies'), findsOneWidget);
    expect(find.textContaining('USD'), findsOneWidget);
  });
}

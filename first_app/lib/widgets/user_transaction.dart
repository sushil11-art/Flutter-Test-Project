import 'package:first_app/widgets/new_transaction.dart';
import 'package:first_app/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction("T1", "My New shoes", 56.66, DateTime.now()),
    Transaction("T2", "My new phone", 455.66, DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        DateTime.now().toString(), txTitle, txAmount, DateTime.now());
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}

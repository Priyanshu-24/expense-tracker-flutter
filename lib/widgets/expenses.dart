import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
      title: 'Title 1',
      amount: 10.00,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Title 2',
      amount: 50.00,
      date: DateTime.now(),
      category: Category.travel,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('Chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpense),
          ),
        ],
      ),
    );
  }
}

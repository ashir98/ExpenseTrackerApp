import 'package:expense_tracker_app/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExpenseTracker());
}
class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
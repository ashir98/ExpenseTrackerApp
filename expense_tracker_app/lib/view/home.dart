import 'package:expense_tracker_app/widgets/add_button.dart';
import 'package:expense_tracker_app/widgets/top_card.dart';
import 'package:expense_tracker_app/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        centerTitle: true,
      ),


      body: Column(
        children: [

          TopNeuCard(
            balance: "\$10,000",
            income: "\$5,000",
            expense: "\$2,000",
          ),

          Expanded(
            child: Container(
              child:  Center(
                child: Column(
                  children: [
                    TransactionTile(
                      transactionName: "Shopping",
                      amout: "1000",
                      incomeOrexpense: "expense",
                    ),
                  
                  ],
                ),
              ),
            ),
          ),


          AddButton()


          
        ],
      ),
    );
  }
}
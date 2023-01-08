// ignore_for_file: must_be_immutable, sort_child_properties_last

import 'package:flutter/material.dart';

class TopNeuCard extends StatelessWidget {

  String balance, income, expense;
  TopNeuCard({required this.balance, required this.income,required this.expense,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("B A L A N C E",style: TextStyle(color: Colors.grey[600],fontSize: 16),),
            Text(balance, style: TextStyle(color: Colors.grey[800], fontSize: 40),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_downward_rounded, color: Colors.green,),
                      )
                    ),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Text("Income",style: TextStyle(color: Colors.grey.shade600,fontSize: 16)),
                        SizedBox(height: 5,),
                        Text(income,style: TextStyle(color: Colors.grey.shade800,fontSize: 18))
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_upward_rounded, color: Colors.red,),
                      )
                    ),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Text("Expense",style: TextStyle(color: Colors.grey.shade600,fontSize: 16)),
                        SizedBox(height: 5,),
                        Text(expense,style: TextStyle(color: Colors.grey.shade800,fontSize: 18))
                      ],
                    ),
                  ],
                )
              ],
          ),
            )
          ],
        ),


        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(4.0, 4.0),
              blurRadius: 15,
              color: Colors.grey.shade500,
              spreadRadius: 1
            ),
            const BoxShadow(
              offset: Offset(-4.0, -4.0),
              blurRadius: 15,
              color: Colors.white,
              spreadRadius: 1
            )
          ]
        ),
      ),
    );
  }
}
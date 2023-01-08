import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TransactionTile extends StatelessWidget {

  String transactionName, amout, incomeOrexpense ;
  TransactionTile({required this.transactionName, required this.amout, required this.incomeOrexpense,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Container(
                          padding: EdgeInsets.all(15),
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Colors.grey.shade200
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      shape: BoxShape.circle
                                    ),
                                    child: Text("\$",style: TextStyle(fontSize: 18,color: Colors.white),)
                                    ),
                                    SizedBox(width: 8,),
                                  Text(transactionName,style: TextStyle(color: Colors.grey.shade800, fontSize: 18),),
                                ],
                              ),
                              Text((incomeOrexpense=='expense'?'-':'+')+'\$'+amout,

                              style: TextStyle(color: incomeOrexpense=='expense'?Colors.red:Colors.green, fontSize: 17),
                              
                              )

                            ],
                          ),
                        ),
    );
  }
}
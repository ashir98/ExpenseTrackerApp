import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                shape: BoxShape.circle
              ),
              child: const Center(
                child: Text("+",style: TextStyle(color: Colors.white, fontSize: 25),),
              ),
            ),
    );
  }
}
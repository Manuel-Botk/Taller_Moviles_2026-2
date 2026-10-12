import 'package:flutter/material.dart';
import '../widgets/numeric_counter.dart';

class LaboratoryScreen extends StatelessWidget {
  const LaboratoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF1B2627),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0x6614E8B4), width: 2),
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Sube tu nivel de poder',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE8ECE9),
                ),
              ),
              SizedBox(height: 16),
              NumericCounter(),
            ],
          ),
        ),
      ),
    );
  }
}
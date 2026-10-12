import 'package:flutter/material.dart';

class PromotionalBanner extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color colorStart; 
  final Color colorEnd; 
  final String buttonText;

  const PromotionalBanner({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.colorStart,
    required this.colorEnd,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [colorStart, colorEnd],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF121417),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  description,
                  style: const TextStyle(color: Color(0xFF2A1F05)),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF121417),
                    foregroundColor: const Color(0xFFE5A91E),
                  ),
                  child: Text(buttonText),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),

          Container(
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
              color: Color(0xFF121417),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 44, color: const Color.fromARGB(255, 224, 220, 193)),
          ),
        ],
      ),
    );
  }
}
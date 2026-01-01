import 'package:flutter/material.dart';

class ExcerciseListeTile extends StatelessWidget {
  final icon;
  final String excerciseName;
  final int numberOfExcercises;
  final color;

  const ExcerciseListeTile({
    super.key,
    required this.icon,
    required this.excerciseName,
    required this.numberOfExcercises,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: color,
                  child: Icon(icon, size: 30, color: Colors.white),
                ),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    excerciseName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 3),
                  Text(
                    '$numberOfExcercises Exercises',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  const Data({
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Icon(icon),
            ),
            const SizedBox(width: 10.0),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}

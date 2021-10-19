import 'package:flutter/material.dart';

class DataField extends StatelessWidget {
  const DataField(this.header, this.text);

  final String header;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: const TextStyle(fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 5.0),
        Container(
          padding: const EdgeInsets.only(left: 10.0),
          alignment: Alignment.centerLeft,
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFf1f3fd),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(text),
        ),
      ],
    );
  }
}

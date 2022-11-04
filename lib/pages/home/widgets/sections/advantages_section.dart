import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  Widget buildAdvantages(String title, String subtitle) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(subtitle, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: [
          buildAdvantages('+45.000 alunos', 'Didática garantida'),
          buildAdvantages('+45.000 alunos', 'Didática garantida'),
          buildAdvantages('+45.000 alunos', 'Didática garantida'),
        ],
      ),
    );
  }
}

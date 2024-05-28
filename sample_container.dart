import 'package:flutter/material.dart';

class SampelContainer extends StatelessWidget {
  const SampelContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(left: 30, top: 30),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.purple,
        border: Border.all(width: 4, color: Colors.yellow),
        borderRadius: BorderRadius.circular(100),
      ),
      child: const Text('Selamat hari kenaikan'),
    );
  }
}

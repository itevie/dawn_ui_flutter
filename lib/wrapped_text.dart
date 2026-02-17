import 'package:flutter/material.dart';

class WrappedText extends StatelessWidget {
  final String text;

  const WrappedText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(text, softWrap: true, overflow: TextOverflow.visible),
    );
  }
}

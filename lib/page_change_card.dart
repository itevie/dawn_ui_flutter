import 'package:dawn_ui_flutter/dawn_ui.dart';
import 'package:flutter/material.dart';

class PageChangeCard extends StatelessWidget {
  final Widget child;
  final Function() onTap;

  const PageChangeCard({super.key, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MyCard(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [child, Icon(Icons.chevron_right)],
      ),
    );
  }
}

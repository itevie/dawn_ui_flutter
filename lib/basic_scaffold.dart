import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final Widget name;
  final Widget? fab;

  const BaseScaffold({
    super.key,
    required this.name,
    this.fab,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: name),

      floatingActionButton: fab,

      body: body,
    );
  }
}

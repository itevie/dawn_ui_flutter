import 'package:flutter/material.dart';

class DawnFutureBuilder<T> extends StatelessWidget {
  final Future<T> future;
  final Widget Function()? loading;
  final Widget Function(Object error)? error;
  final Widget Function(T value) complete;

  const DawnFutureBuilder({
    super.key,
    required this.future,
    this.loading,
    this.error,
    required this.complete,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return loading != null ? loading!() : CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return error != null
              ? error!(snapshot.error!)
              : Text("Error: ${snapshot.error}");
        } else {
          return complete(snapshot.data as T);
        }
      },
    );
  }
}

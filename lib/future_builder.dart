import 'package:flutter/material.dart';

class DawnFutureBuilder<T> extends StatelessWidget {
  final Future<T> future;
  final Widget Function()? onLoading;
  final Widget Function(Object error)? onError;
  final Widget Function(T value) onComplete;

  const DawnFutureBuilder({
    super.key,
    required this.future,
    required this.onComplete,
    this.onLoading,
    this.onError,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return onLoading != null ? onLoading!() : CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return onError != null
              ? onError!(snapshot.error!)
              : Text("Error: ${snapshot.error}");
        } else {
          return onComplete(snapshot.data as T);
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<T?> showErrorDialog<T>(BuildContext context, String message) {
  return showDialog<T>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Error'),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text('GOT IT'),
        ),
      ],
    ),
  );
}

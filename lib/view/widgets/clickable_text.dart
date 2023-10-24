import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  const ClickableText({
    super.key,
    required this.title,
    required this.callback,
  });

  final String title;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Text(title),
    );
  }
}

import 'package:flutter/material.dart';

class BoxedTitle extends StatelessWidget {
  BoxedTitle({super.key, required this.title, this.fontSize, this.fontWeight});

  final String title;
  double? fontSize;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    fontSize ??= Theme.of(context).textTheme.bodyText1!.fontSize;
    fontWeight ??= Theme.of(context).textTheme.bodyText1!.fontWeight;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: const Color.fromRGBO(90, 90, 90, 0.7),
      ),
      padding: const EdgeInsets.all(3),
      child: Text(
        title,
        style: TextStyle(
            color: const Color.fromRGBO(255, 253, 208, 1),
            fontSize: fontSize,
            fontWeight: fontWeight),
      ),
    );
  }
}

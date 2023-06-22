import 'package:flutter/material.dart';

class NpcButton extends StatelessWidget {
  const NpcButton({
    Key? key,
    this.text,
    required this.onTap,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  final Function()? onTap;
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;

  factory NpcButton.solidBlue({
    Key? key,
    String? text,
    required Function() onTap,
  }) {
    return NpcButton(
      onTap: onTap,
      text: text,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: backgroundColor),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text ?? 'Click', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: textColor)),
            ],
          ),
        ),
      ),
    );
  }
}

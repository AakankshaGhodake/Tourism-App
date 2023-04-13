import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
    PaddingWidget(
    {required this.color, required this.onPressed, required this.text});

    final Color color;
    final VoidCallback onPressed;
    final String text;

    @override
    Widget build(BuildContext context) {
        return Container(
                decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: TextButton(
                onPressed: onPressed,
                child: Text(
                text,
                style: TextStyle(color: Colors.white),
        ),
      ),
    );
    }
}

import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  InputText({required this.name,required this.onChanged,required this.dotSign});
  final String name;
  final Function(String) onChanged;
  final bool dotSign;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: TextField(
          obscureText: dotSign,
          onChanged: onChanged,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: 'Enter your $name',hintStyle: TextStyle(fontWeight: FontWeight.bold),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ));
  }
}

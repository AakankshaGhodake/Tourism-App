import 'package:flutter/material.dart';

import '../models/InputText.dart';
import '../models/padding.dart';
import 'login_screen.dart';
class LogOutScreen extends StatefulWidget {
  static const id='LogOutScreen';
  @override
  State<LogOutScreen> createState() => _LogOutScreenState();
}

class _LogOutScreenState extends State<LogOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    'images/tourism.jpg',
                    height: 250,
                  )),
            ),
            SizedBox(height: 30,),
            Center(child: Text('Do You Want to Log out',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
            PaddingWidget(
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                text: 'LogOut'),
          ],
        ),
      ),
    );
  }
}

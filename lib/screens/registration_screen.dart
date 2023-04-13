import 'package:flutter/material.dart';
import 'package:smart_tourism/models/padding.dart';
import 'package:smart_tourism/models/inputText.dart';
import 'package:smart_tourism/screens/login_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
    static const String id = 'register_screen';

    @override
    State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
    late String email;
    late String password;
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
        InputText(
                name: 'Email',
                dotSign: false,

                onChanged: (value) {
                email = value;
                }),
        InputText(
                name: 'Password',
                dotSign: true,
                onChanged: (value) {
                password = value;
                }),
        PaddingWidget(
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {
          Navigator.pushNamed(context, LogInScreen.id,arguments: {'email':email,'password':password});
        },
        text: 'Register'),
          ],
        ),
      ),
    );
    }
}

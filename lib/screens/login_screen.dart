import 'package:flutter/material.dart';
import 'package:smart_tourism/screens/tabs_screen.dart';
import './registration_screen.dart';
import 'package:smart_tourism/models/InputText.dart';
import 'package:smart_tourism/models/padding.dart';

class LogInScreen extends StatelessWidget {
  static const String id = 'login_screen';
  // final String email;
  // final String password;
 late String enteredPassword;
 late String enteredEmail;


  // LogInScreen();

  Widget build(BuildContext context) {
    final regArgs =
    ModalRoute
        .of(context)!
        .settings
        .arguments as Map<String, String>;
    final email = regArgs['email'];
    final password = regArgs['password'];
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
                  enteredEmail = value;
                }),
            InputText(
                dotSign: true,
                name: 'Password',
                onChanged: (value) {
                 enteredPassword= value;
                }),
            PaddingWidget(
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {
                  if(enteredPassword==password&&enteredEmail==email) {
                    Navigator.of(context).pushNamed(TabsScreen.routeName);
                  }else{
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("Wrong email or password"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              color: Theme.of(context).colorScheme.primary,
                              padding: const EdgeInsets.all(14),
                              child: Center(child: const Text("Okay",style: TextStyle(color: Colors.white),)),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
                text: 'Log In'),
          ],
        ),
      ),
    );
  }
}

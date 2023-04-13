import 'package:flutter/material.dart';
import './login_screen.dart';
import './registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:smart_tourism/models/padding.dart';

class WelcomeScreen extends StatefulWidget {
    static const String id = 'welcome_screen';

    @override
    State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
    late AnimationController controller;

    // late  Tween<Color?> animation;
    late Animation animation;

    @override
    void initState() {
        controller =
                AnimationController(vsync: this, duration: Duration(seconds: 2));
        animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
        // animation=ColorTween(begin: Colors.red,end: Colors.blue);
        // controller.reverse(from: 1.0);
        controller.forward();

        controller.addListener(() {
            setState(() {
                // print(animation.value);
            });
        });
        // TODO: implement initState
        super.initState();
    }

    @override
    void dispose() {
        controller.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
                backgroundColor: Colors.white,
                body: SafeArea(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
        Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
        Hero(
                tag: 'logo',
                child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
        child: Image.asset(
                'images/tourism.jpg',
                height: animation.value * 130,
                      )),
                ),
        AnimatedTextKit(
                animatedTexts: [
        TyperAnimatedText(
                'SMART TOURISM',
                textStyle: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: Theme.of(context).colorScheme.secondary),
        textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
        PaddingWidget(
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {
            // Navigator.pushNamed(context, LogInScreen.id);
        },
        text: 'Log In'),
        PaddingWidget(
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {
            Navigator.pushNamed(context, RegistrationScreen.id);
        },
        text: 'Register'),
          ],
        ),
      ),
    );
    }
}

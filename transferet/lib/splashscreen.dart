import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:transferet/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.push(
      context,
      PageTransition(
        child: const Transferet(),
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds: 600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/l.png',
              height: 180,
              width: 180,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'TRANSFERET',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

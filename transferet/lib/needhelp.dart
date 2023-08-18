import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:transferet/home.dart';

class NeedHelp extends StatefulWidget {
  const NeedHelp({super.key});

  @override
  State<NeedHelp> createState() => _NeedHelpState();
}

class _NeedHelpState extends State<NeedHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.all(10),
          child: Image.asset(
            'assets/images/l.png',
            fit: BoxFit.contain,
            height: 42,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu, color: Colors.black),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle_outlined),
          )
        ],
      ),
      drawer: NavigationDrawer(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Image.asset(
              'assets/Logo.png',
              fit: BoxFit.contain,
              height: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 40),
            child: MaterialButton(
              child: const Row(
                children: [
                  Icon(Icons.home_rounded),
                  SizedBox(width: 10),
                  Text('Home'),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const Transferet(),
                    type: PageTransitionType.leftToRightWithFade,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: MaterialButton(
              child: const Row(
                children: [
                  Icon(Icons.info_outline_rounded),
                  SizedBox(width: 10),
                  Text('About Us'),
                ],
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: MaterialButton(
              child: const Row(
                children: [
                  Icon(Icons.miscellaneous_services_rounded),
                  SizedBox(width: 10),
                  Text('Services'),
                ],
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: MaterialButton(
              child: const Row(
                children: [
                  Icon(Icons.apps_rounded),
                  SizedBox(width: 10),
                  Text('Blogs'),
                ],
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: MaterialButton(
              child: const Row(
                children: [
                  Icon(Icons.work_rounded),
                  SizedBox(width: 10),
                  Text('Career'),
                ],
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: MaterialButton(
              child: const Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 10),
                  Text('Contact Us'),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

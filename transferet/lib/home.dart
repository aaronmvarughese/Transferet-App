import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:transferet/needhelp.dart';
import 'package:transferet/tracking.dart';

class Transferet extends StatefulWidget {
  const Transferet({super.key});

  @override
  State<Transferet> createState() => TransferetState();
}

class TransferetState extends State<Transferet> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/Untitled-1.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: 370,
                height: 170,
                decoration: BoxDecoration(
                  color: const Color(0x7fff8c00),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Can't find your delivery?",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        "Enter your Tracking ID",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.5,
                                color: Colors.black,
                              ),
                            ),
                            focusedErrorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            contentPadding: const EdgeInsets.all(10),
                            isDense: true,
                            suffixIcon: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        child: const Track(),
                                        type: PageTransitionType
                                            .rightToLeftWithFade));
                              },
                              icon: const Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const NeedHelp(),
                          type: PageTransitionType.rightToLeftWithFade,
                        ),
                      );
                    },
                    child: Container(
                      width: 170,
                      height: 160,
                      decoration: BoxDecoration(
                        color: const Color(0x7fffbf00),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Need Help?',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Request for an issue on your delivery',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: 170,
                    height: 160,
                    decoration: BoxDecoration(
                      color: const Color(0x7fffbf00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

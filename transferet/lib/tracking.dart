import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:transferet/home.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 390,
                height: 250,
                decoration: BoxDecoration(
                  color: const Color(0xffff8c00),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          BackButton(
                            color: Colors.white,
                          ),
                          Text(
                            'Tracking Details',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          '#Profile Details',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Status',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Tracking History',
                style: TextStyle(
                    fontFamily: 'Metropolis',
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_challenge/constants.dart';
import 'package:ui_challenge/post.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UIChallengeEasy(),
    ),
  );
}

class UIChallengeEasy extends StatelessWidget {
  const UIChallengeEasy({super.key});

  @override
  Widget build(BuildContext context) {
    return const WelcomeScreen();
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [mainClr, altClr],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            const Center(),
            Positioned(
              top: -20.0,
              right: -60.0,
              child: Image.asset('assets/asset1png.png'),
            ),
            Positioned(
              bottom: -50.0,
              left: -120.0,
              child: Image.asset('assets/asset2.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Center(child: Image.asset('assets/dash.png')),
                    const Text(
                      'Welcome To\nFlutter Forward Extended',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const FractionallySizedBox(
                      widthFactor: .5,
                      child: Center(
                        child: Text(
                          'Get Started >>',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: mainClr,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: mainClr,
                    size: 25.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: mainClr,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: mainClr,
                    fontSize: 15.0,
                    letterSpacing: 1,
                  ),
                  hintTextDirection: TextDirection.ltr,
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: const [
                  Text('The latest  '),
                  Expanded(
                    child: Divider(
                      color: mainClr,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Expanded(
                child: ListView(
                  children: const [
                    Post(),
                    Post(),
                    Post(),
                    Post(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

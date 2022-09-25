import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        child: IndexedStack(
          index: initialIndex,
          children: [
            Container(
              height: _height,
              width: _width,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const FlutterLogo(size: 172),
                  const SizedBox(height: 12),
                  const Text(
                    "Welcome to My Flutter App",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(flex: 3),
                      CircleAvatar(
                        radius: (initialIndex == 0) ? 10 : 6,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 18),
                      CircleAvatar(
                        radius: (initialIndex == 1) ? 10 : 6,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 18),
                      CircleAvatar(
                        radius: (initialIndex == 2) ? 10 : 6,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 18),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            initialIndex++;
                          });
                        },
                        child: const Text(
                          "Next ->",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();

                      await prefs.setBool('isWelcomed', true);

                      Navigator.of(context).pushReplacementNamed('/');
                    },
                    child: const Text(
                      "SKIP",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: _height,
              width: _width,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const FlutterLogo(size: 172),
                  const SizedBox(height: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "In this App you'll find NOTHING \nother than this welcome page.",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(flex: 3),
                      CircleAvatar(
                        radius: (initialIndex == 0) ? 10 : 6,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 18),
                      CircleAvatar(
                        radius: (initialIndex == 1) ? 10 : 6,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 18),
                      CircleAvatar(
                        radius: (initialIndex == 2) ? 10 : 6,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 18),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            initialIndex++;
                          });
                        },
                        child: const Text(
                          "Next ->",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();

                      await prefs.setBool('isWelcomed', true);

                      Navigator.of(context).pushReplacementNamed('/');
                    },
                    child: const Text(
                      "SKIP",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: _height,
              width: _width,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FlutterLogo(size: 172),
                  const SizedBox(height: 12),
                  const Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(flex: 3),
                      CircleAvatar(
                        radius: (initialIndex == 0) ? 10 : 6,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 18),
                      CircleAvatar(
                        radius: (initialIndex == 1) ? 10 : 6,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 18),
                      CircleAvatar(
                        radius: (initialIndex == 2) ? 10 : 6,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(width: 18),
                      const Spacer(),
                      TextButton(
                        onPressed: () async {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();

                          await prefs.setBool('isWelcomed', true);

                          Navigator.of(context).pushReplacementNamed('/');
                        },
                        child: const Text(
                          "Next ->",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

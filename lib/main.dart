import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page2(),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff76974A),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      SizedBox(width: 15),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 30,
                      ),
                      Spacer(),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          "/tree.png",
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.8,
                        ),
                      ),
                      const Positioned(
                        bottom: 100,
                        left: 30,
                        child: Text(
                          "Scavandanian Plant Glass Pot",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Positioned(
                        bottom: 78,
                        left: 30,
                        child: Text(
                          "wall street",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const Positioned(
                        bottom: 55,
                        left: 30,
                        child: Text(
                          "wall street",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * (7 / 100),
                color: const Color(0xff76974A),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(height: 20),
                          Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(height: 20),
                          Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text("Green"),
                      Text("Plants"),
                      item(),
                      item(),
                      item(),
                      item(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget item() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "tree.png",
            width: 250,
            height: 300,
          ),
          // SizedBox(height: 8),
          Text("asdfg sdf"),
          SizedBox(height: 3),
          Text("asdfg sdf uaystv oaie uhff liaser hwpoi oi rfj h"),
          SizedBox(height: 3),
          Text("20"),
        ],
      ),
    );
  }
}

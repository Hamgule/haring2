import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/palette.dart';
import 'join_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'ha',
                  style: TextStyle(
                    color: Palette.themeColor2,
                    fontFamily: 'MontserratBold',
                    fontSize: 150.0,
                    fontWeight: FontWeight.bold,
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(5.0, 5.0),
                    //     blurRadius: 10.0,
                    //     color: Colors.black38,
                    //   ),
                    // ],
                  ),
                ),
                Text(
                  'ring',
                  style: TextStyle(
                    color: Palette.themeColor1,
                    fontFamily: 'MontserratBold',
                    fontSize: 150.0,
                    fontWeight: FontWeight.bold,
                    // shadows: [
                    //   Shadow(
                    //     offset: Offset(5.0, 5.0),
                    //     blurRadius: 10.0,
                    //     color: Colors.black38,
                    //   ),
                    // ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 200.0,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'create',
                      style: TextStyle(
                        color: Palette.themeColor2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 200.0,
                  child: OutlinedButton(
                    onPressed: () {
                      Get.to(const JoinPage());
                    },
                    child: const Text(
                      'join',
                      style: TextStyle(
                        color: Palette.themeColor1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

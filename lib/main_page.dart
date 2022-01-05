import 'package:flutter/material.dart';

import 'config/palette.dart';

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
                    fontSize: 120.0,
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
                    fontSize: 120.0,
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
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'create',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(

                  ),
                ),
                SizedBox(width: 50),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                      'join'
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

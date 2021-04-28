import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  final String _versionName = 'V1.0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'lib/images/splash_screen_icon.jpg',
                          height: 300,
                          width: 300,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Container(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Spacer(),
                          Text(_versionName),
                          Spacer(
                            flex: 4,
                          ),
                          Text('CatApp'),
                          Spacer(),
                        ],
                      )
                    ],
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

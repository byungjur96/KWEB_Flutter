import 'package:flutter/cupertino.dart';

void main() {
  return runApp(MyCupertinoApp());
}


class MyCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoHomePage(),
    );
  }
}

class CupertinoHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino layout demo'),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CupertinoButton.filled(
                  child: Text('CALL'),
                  onPressed: () { /** */ },
                ),
                CupertinoButton(
                  child: Text('ROUTE'),
                  onPressed: () { /** */ },
                ),
                CupertinoButton(
                  child: Text('SHARE'),
                  onPressed: () { /** */ },
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                    'Alps. Situated 1,578 meters above sea level, it is one of the '
                    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                    'half-hour walk through pastures and pine forest, leads you to the '
                    'lake, which warms to 20 degrees Celsius in the summer. Activities '
                    'enjoyed here include rowing, and riding the summer toboggan run.',
                softWrap: true,
                style: TextStyle(fontSize: 14.0),
              ),
            )
          ],
        )
      ),
    );
  }
}

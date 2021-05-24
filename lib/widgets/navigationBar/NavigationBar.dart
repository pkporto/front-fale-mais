import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amberAccent,
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0,0.0),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem('Home'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem('SignIn'),
              SizedBox(
                width: 60,
              ),
              _NavBarItem('Login')
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}

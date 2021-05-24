import 'package:flutter/material.dart';
import 'package:front_fale/widgets/button/ButtonW.dart';
import 'package:front_fale/widgets/form/FormView.dart';
import 'package:front_fale/widgets/navigationBar/NavigationBar.dart';
import 'package:front_fale/widgets/center/CenteredView.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Center(
                child: FormView(),
              )
            )
          ],
        ),
      ),
    );
  }
}

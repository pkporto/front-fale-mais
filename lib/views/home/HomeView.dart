import 'package:flutter/material.dart';
import 'package:front_fale/widgets/button/ButtonW.dart';
import 'package:front_fale/widgets/form/FormView.dart';
import 'package:front_fale/widgets/navigationBar/NavigationBar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                  child: FormView(),
              )
            ],

      ),
        ),
    );
  }
}

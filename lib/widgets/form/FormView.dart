import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:front_fale/widgets/form/DropdownOrigin.dart';
import 'package:provider/provider.dart';
import 'package:front_fale/stores/calculate.store.dart';

class FormView extends StatefulWidget {
  // const CourseDetails({Key key}) : super(key: key);
  @override
  _FormViewState createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  @override
  Widget build(BuildContext context) {
    final calculateStore = Provider.of<Calculate>(context);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Escolha o seu plano fale mais e descubra as vantagens de assina-los!',
            style: TextStyle(fontSize: 21, height: 1.7),
          ),
          SizedBox(
            height: 30,
          ),

          DropdownOrigin(),
          SizedBox(
            height: 30,
          ),

          Observer(builder: (_) =>
              Text('${calculateStore.result}')
          ),
        ],
      ),
    );
  }
}

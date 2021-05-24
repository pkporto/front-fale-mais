import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:front_fale/stores/calculate.store.dart';

class ButtonW extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final calculateStore = Provider.of<Calculate>(context);
    return InkWell(
      onTap: (){
          calculateStore.getPrice(011, 016, 20, 'Fale Mais 30');
      },
      child: Container(

        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Text(
          'Calcular valor do plano',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 31, 229, 146),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}

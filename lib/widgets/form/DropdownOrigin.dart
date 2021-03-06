import 'package:flutter/material.dart';
import 'package:front_fale/stores/calculate.store.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class DropdownOrigin extends StatefulWidget {
  @override
  _DropdownOriginState createState() => _DropdownOriginState();
}

class _DropdownOriginState extends State<DropdownOrigin> {
  TextEditingController minutesController = TextEditingController();
  String dropdownValue = '011';
  String dropdownValue2 = '011';
  String dropdownValue3 = 'Fale Mais 30';
  List listItem = [
    "011", "016", "017", "018"
  ];
  var calculateStore;

  @override
  Widget build(BuildContext context) {
    calculateStore = Provider.of<Calculate>(context);

    return Form(
      child: Column(
        children: [ Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selecione a origem:  '),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Color.fromARGB(255, 31, 229, 146),),
              underline: Container(
                height: 2,
                color: Color.fromARGB(255, 31, 229, 146),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['011', '016', '017', '018']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(width: 20,),
            Text('Selecione o destino:  '),
            DropdownButton<String>(
              value: dropdownValue2,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Color.fromARGB(255, 31, 229, 146),),
              underline: Container(
                height: 2,
                color: Color.fromARGB(255, 31, 229, 146),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue2 = newValue!;
                });
              },
              items: <String>['011', '016', '017', '018']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(width: 20,),
            Text('Selecione o plano:  '),
            DropdownButton<String>(
              value: dropdownValue3,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Color.fromARGB(255, 31, 229, 146),),
              underline: Container(
                height: 2,
                color: Color.fromARGB(255, 31, 229, 146),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue3 = newValue!;
                });
              },
              items: <String>['Fale Mais 30', 'Fale Mais 60','Fale Mais 120']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),


          ],
        ),
          SizedBox(width: 24.0,),

         Center(
           child: Padding(
             padding: const EdgeInsets.fromLTRB(80, 12, 80, 20),
             child: TextFormField(
               validator: (value) {
                 if (value!.isEmpty)  {
                   showAlertDialog1(context, 'A origem e o destino precdasser diferentes.');
                 }
               },
                controller: minutesController,
                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  labelText: 'Quantos minutos?',
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w200),
                  border: OutlineInputBorder(),
                ),
              ),
           ),
         ),
          SizedBox(width: 24.0,),
          InkWell(
            onTap: (){

              validarCampos(dropdownValue,dropdownValue2, int.parse(minutesController.text), dropdownValue3);
            },
            child: Container(

              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
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
          )],),
    );
  }


  void validarCampos(String origin, String destiny, int time, String plan) async {
    if (minutesController.text == '' ) {
      showAlertDialog1(context, 'Preencha os minutos.');
    } else {
      if (origin == destiny) {
        showAlertDialog1(context, 'A origem e o destino precisam ser diferentes.');
      } else {

          calculateStore.getPrice(int.parse(origin),int.parse(dropdownValue2), time, plan);

      }
    }
  }



  showAlertDialog1(BuildContext context, String text)
  {
    // configura o button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text(text),
      // content: Text("N??o perca a promo????o."),
      actions: [
        okButton,
      ],
    );
    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }
}

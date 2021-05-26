import 'package:flutter/material.dart';
import 'package:front_fale/widgets/center/CenteredView.dart';
import 'package:front_fale/widgets/navigationBar/NavigationBar.dart';

class LoginView extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: CenteredView(
        Column(
          children: <Widget>[
            NavigationBar(),
            Padding(
                padding: EdgeInsets.all(size.height > 770 ? 64 : size.height > 670 ? 32 : 16 ),
              child: Center(
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25)
                    )
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: _formKey,
                        child: ListView(shrinkWrap: true, children: [
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              labelText: 'Digite o email',
                              labelStyle: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.w200),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          TextFormField(
                            controller: senhaController,
                            decoration: InputDecoration(
                              labelText: 'Digite a senha',
                              labelStyle: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.w200),
                              border: OutlineInputBorder(),
                            ),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      child: RaisedButton(
                          child: Text("Entrar"),
                          onPressed: () {
                            // validarCampos(emailController.text, senhaController.text);
                          }),
                    )
                  ]),

                  ),
                ),
              ),

          ],
        ),
      ),

    );
  }
}



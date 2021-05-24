import 'package:flutter/material.dart';
import 'package:front_fale/views/home/HomeView.dart';
import 'package:provider/provider.dart';
import 'package:front_fale/stores/calculate.store.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Calculate>(create: (_)=>Calculate(),),
      ],
      child:MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Open Sans',
            )),
        debugShowCheckedModeBanner: false,
        home:HomeView(),
      ) ,
    );
  }
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//             primarySwatch: Colors.blue,
//             textTheme: Theme.of(context).textTheme.apply(
//                   fontFamily: 'Open Sans',
//                 )),
//         home: HomeView());
//   }
// }

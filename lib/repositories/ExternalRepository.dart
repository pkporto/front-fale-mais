import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:front_fale/RoutesAPI/RoutesAPI.dart';
import 'package:front_fale/models/ResponseAPI.dart';

// import 'package:sigveiculos_app/models/CarModel.dart';
// import 'package:sigveiculos_app/models/ClienteModel.dart';
// import 'package:sigveiculos_app/models/RespostaAPI.dart';
// import 'package:sigveiculos_app/rotasAPI/RotasAPI.dart';
import 'package:http/http.dart' as http;

import 'package:front_fale/services/SecureStorage.dart';

class ExternalRepository {
  final SecureStorage secureStorage = SecureStorage();

  // Future logar(String email, String senha) async {
  //   var resposta = await http
  //       .post(RotasAPI.post_login, body: {"email": email, "senha": senha});
  //   if (resposta.statusCode == 200) {
  //     var json = jsonDecode(resposta.body);
  //     RespostaAPI respostaAPI = RespostaAPI.fromJson(json);
  //
  //     secureStorage.writeData("token", respostaAPI.dados);
  //
  //     return true;
  //   }
  //   return 'true';
  // }
  //


  Future<String> calculate(int origin, int destiny,int time, String plan ) async {
    print('entrou no calculate');

    var resposta = await http
        .get(Uri.parse('http://localhost:7777/calculate' + '?origin=${origin.toString()}&destiny=${destiny.toString()}&time=${time.toString()}&plan=${plan}') );

    if (resposta.statusCode == 200 || resposta.statusCode == 201  ) {
      var json = jsonDecode(resposta.body);
      ResponseAPI respostaAPI = await ResponseAPI.fromJson(json);

      // secureStorage.writeData("token", respostaAPI.dados);
      print(resposta.body);
      print(respostaAPI.data);
      return respostaAPI.data;
    }else{
      print(resposta.body);
      throw Exception('Deu ruim');
    }
  }



}
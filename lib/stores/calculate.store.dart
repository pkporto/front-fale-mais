import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:front_fale/repositories/ExternalRepository.dart';
import 'package:mobx/mobx.dart';

part 'calculate.store.g.dart';

class Calculate = _Calculate with _$Calculate;

abstract class _Calculate with Store {
  var _externalRepository = ExternalRepository();
  @observable
  var todos = ObservableList<String>();

  @observable
  String result = '' ;

  @action
   Future<String> getPrice(int origin, int destiny,int time, String plan) async {
    print('entrou');
    result = await _externalRepository.calculate(origin, destiny, time, plan) as String;
    return result;
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Calculate on _Calculate, Store {
  final _$todosAtom = Atom(name: '_Calculate.todos');

  @override
  ObservableList<String> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<String> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$resultAtom = Atom(name: '_Calculate.result');

  @override
  String get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  final _$getPriceAsyncAction = AsyncAction('_Calculate.getPrice');

  @override
  Future<String> getPrice(int origin, int destiny, int time, String plan) {
    return _$getPriceAsyncAction
        .run(() => super.getPrice(origin, destiny, time, plan));
  }

  @override
  String toString() {
    return '''
todos: ${todos},
result: ${result}
    ''';
  }
}

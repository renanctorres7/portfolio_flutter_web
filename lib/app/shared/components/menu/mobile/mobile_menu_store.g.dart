// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_menu_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MobileMenuStore on _MobileMenuStoreBase, Store {
  final _$valueAtom = Atom(name: '_MobileMenuStoreBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_MobileMenuStoreBaseActionController =
      ActionController(name: '_MobileMenuStoreBase');

  @override
  void increment() {
    final _$actionInfo = _$_MobileMenuStoreBaseActionController.startAction(
        name: '_MobileMenuStoreBase.increment');
    try {
      return super.increment();
    } finally {
      _$_MobileMenuStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}

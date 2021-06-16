// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_web_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarouselWebStore on _CarouselWebStoreBase, Store {
  final _$valueAtom = Atom(name: '_CarouselWebStoreBase.value');

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

  final _$animateSliderAsyncAction =
      AsyncAction('_CarouselWebStoreBase.animateSlider');

  @override
  Future<void> animateSlider(int index, PageController pageController) {
    return _$animateSliderAsyncAction
        .run(() => super.animateSlider(index, pageController));
  }

  final _$_CarouselWebStoreBaseActionController =
      ActionController(name: '_CarouselWebStoreBase');

  @override
  void increment() {
    final _$actionInfo = _$_CarouselWebStoreBaseActionController.startAction(
        name: '_CarouselWebStoreBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CarouselWebStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}

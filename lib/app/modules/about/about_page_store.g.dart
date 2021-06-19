// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AboutPageStore on _AboutPageStoreBase, Store {
  final _$imageUrlAtom = Atom(name: '_AboutPageStoreBase.imageUrl');

  @override
  String get imageUrl {
    _$imageUrlAtom.reportRead();
    return super.imageUrl;
  }

  @override
  set imageUrl(String value) {
    _$imageUrlAtom.reportWrite(value, super.imageUrl, () {
      super.imageUrl = value;
    });
  }

  final _$downloadFileAsyncAction =
      AsyncAction('_AboutPageStoreBase.downloadFile');

  @override
  Future<void> downloadFile() {
    return _$downloadFileAsyncAction.run(() => super.downloadFile());
  }

  @override
  String toString() {
    return '''
imageUrl: ${imageUrl}
    ''';
  }
}

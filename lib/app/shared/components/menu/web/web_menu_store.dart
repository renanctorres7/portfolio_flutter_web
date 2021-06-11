import 'package:mobx/mobx.dart';

part 'web_menu_store.g.dart';

class WebMenuStore = _WebMenuStoreBase with _$WebMenuStore;

abstract class _WebMenuStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

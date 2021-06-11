import 'package:mobx/mobx.dart';

part 'mobile_menu_store.g.dart';

class MobileMenuStore = _MobileMenuStoreBase with _$MobileMenuStore;
abstract class _MobileMenuStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}
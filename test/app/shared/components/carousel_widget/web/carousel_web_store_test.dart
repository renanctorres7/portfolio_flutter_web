import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/app/shared/components/carousel_widget/web/carousel_web_store.dart';
 
void main() {
  late CarouselWebStore store;

  setUpAll(() {
    store = CarouselWebStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
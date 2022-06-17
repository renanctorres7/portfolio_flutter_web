import 'package:flutter/cupertino.dart';

extension BuildContextX on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}

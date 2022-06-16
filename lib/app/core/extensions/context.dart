import 'package:flutter/cupertino.dart';

extension BuildContextX on BuildContext {
  Size get size => MediaQuery.of(this).size;
}

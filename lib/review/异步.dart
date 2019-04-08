import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  new Future(() => print('s3')).then((_aaa) => print('_私有变量'));

  var list = ['apples', 'bananas', 'oranges'];
  print(list);
}

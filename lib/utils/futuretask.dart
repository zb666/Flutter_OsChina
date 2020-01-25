import 'package:flutter_osc_client/11-saync.dart';

void main() {
  Future(() => futureTask())
      .then((m) => "result:$m")
      .then((next) => "result$next")
      .catchError(print)
      .whenComplete(() => whenTaskComplete());
}

whenTaskComplete() => 30.0;
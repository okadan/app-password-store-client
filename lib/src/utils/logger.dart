import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

final logger = Logger('')
  ..level = Level.ALL
  ..onRecord.listen((data) {
    if (!kReleaseMode) {
      debugPrint('[${data.time}][${data.level}] ${data.message}');
    }
  });

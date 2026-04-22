import 'dart:io';

import 'package:logging/logging.dart';

Logger createDefaultLogger() {
  final logger = Logger.detached('CBuilder')
    ..level = .INFO
    ..onRecord.listen((record) {
      if (record.message.contains(
        'Microsoft (R) C/C++ Optimizing Compiler Version',
      )) {
        // Skip logging compiler version info.
        return;
      }

      if (record.message.contains('Copyright (C) Microsoft Corporation.')) {
        // Skip logging copyright info.
        return;
      }

      if (record.level >= .WARNING) {
        stderr.writeln(record.message);
      } else {
        stdout.writeln(record.message);
      }
      if (record.error != null) {
        stderr.writeln(record.error);
      }
      if (record.stackTrace != null) {
        stderr.writeln(record.stackTrace);
      }
    });
  return logger;
}

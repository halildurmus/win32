// ignore_for_file: only_throw_errors

import 'dart:ffi';

import 'package:win32/win32.dart';

import '../base.dart';

class CredReadWrapperBenchmark extends EnhancedBenchmarkBase {
  CredReadWrapperBenchmark({super.emitter}) : super('CredReadWrapper');

  @override
  void run() {
    for (var i = 0; i < 100; i++) {
      final result = CredRead(nullptr, CRED_TYPE_GENERIC, nullptr);
      if (result) throw 'UNEXPECTED';
    }
  }
}

void main() {
  CredReadWrapperBenchmark().report();
}

// ignore_for_file: non_constant_identifier_names, only_throw_errors
// ignore_for_file: specify_nonobvious_property_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../base.dart';

@pragma('vm:prefer-inline')
bool CredRead(
  PCWSTR targetName,
  CRED_TYPE type,
  Pointer<Pointer<CREDENTIAL>> credential,
) => _CredRead(targetName, type, NULL, credential) != FALSE;

final _CredRead = DynamicLibrary.process()
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<Pointer<CREDENTIAL>>,
      ),
      int Function(Pointer<Utf16>, int, int, Pointer<Pointer<CREDENTIAL>>)
    >('CredReadW', isLeaf: true);

class CredReadBenchmark extends EnhancedBenchmarkBase {
  CredReadBenchmark({super.emitter}) : super('CredRead');

  @override
  void run() {
    for (var i = 0; i < 100; i++) {
      final result = CredRead(nullptr, CRED_TYPE_GENERIC, nullptr);
      if (result) throw 'UNEXPECTED';
    }
  }
}

void main() {
  CredReadBenchmark().report();
}

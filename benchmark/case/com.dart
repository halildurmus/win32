// ignore_for_file: non_constant_identifier_names, only_throw_errors

import 'dart:ffi';

import 'package:win32/win32.dart';

import '../base.dart';

class ComBenchmark extends EnhancedBenchmarkBase {
  ComBenchmark({super.emitter}) : super('Com');

  IFileDialog? dialog;
  Pcwstr? title;

  @pragma('vm:prefer-inline')
  void setTitle(PCWSTR pszTitle) {
    final hr$ = HRESULT(
      dialog!.ptr.value
          .cast<IFileDialogVtbl>()
          .ref
          .SetTitle
          .asFunction<int Function(VTablePointer, PCWSTR)>(isLeaf: true)(
        dialog!.ptr,
        pszTitle,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  void run() {
    for (var i = 0; i < 100; i++) {
      setTitle(title!.ptr);
    }
  }

  @override
  void setup() {
    CoInitializeEx(COINIT_MULTITHREADED);
    dialog = createInstance<IFileDialog>(FileOpenDialog);
    title = w('Dart Open File Dialog');
  }

  @override
  void teardown() {
    dialog!.release();
    title!.free();
  }
}

void main() {
  ComBenchmark().report();
}

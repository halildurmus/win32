import 'package:win32/win32.dart';

import '../base.dart';

class ComOptimizedBenchmark extends EnhancedBenchmarkBase {
  ComOptimizedBenchmark({super.emitter}) : super('ComOptimized');

  IFileDialog? dialog;
  Pcwstr? title;

  @override
  void run() {
    for (var i = 0; i < 100; i++) {
      dialog!.setTitle(title!.ptr);
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
  ComOptimizedBenchmark().report();
}

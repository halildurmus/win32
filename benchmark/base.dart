import 'dart:ffi';

import 'package:args/args.dart';
import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:win32/win32.dart';

abstract class EnhancedBenchmarkBase extends BenchmarkBase {
  EnhancedBenchmarkBase(super.name, {super.emitter = const PrintEmitterV2()});

  @override
  void exercise() => run();
}

// These micro benchmarks track the speed of reading and writing C memory from
// Dart with a specific marshalling and unmarshalling of data.

abstract final class FfiCallbackBenchmark {
  const FfiCallbackBenchmark(this.name);

  final String name;

  /// Returns ns per callback.
  double measureFor(Duration duration) {
    const batchSize = 100_000;

    var numberOfCalls = 0;
    var totalMicroseconds = 0;

    final sw = Stopwatch()..start();
    final durationInMicroseconds = duration.inMicroseconds;

    do {
      run(batchSize);
      numberOfCalls += batchSize;
      totalMicroseconds = sw.elapsedMicroseconds;
    } while (totalMicroseconds < durationInMicroseconds);

    final totalNanoseconds = totalMicroseconds * 1000;
    return totalNanoseconds / numberOfCalls;
  }

  // Runs warmup phase, runs benchmark and reports result.
  void report({bool verbose = false}) {
    setup();

    // Warmup for 100 ms.
    measureFor(const Duration(milliseconds: 100));

    // Run benchmark for 2 seconds.
    final nsPerCall = measureFor(const Duration(seconds: 2));

    // Report result.
    print('$name(RunTimeRaw): $nsPerCall ns.');
    if (verbose) {
      final callsPerSecond = (1000 * 1000 * 1000 / nsPerCall).toInt();
      print('$name: $callsPerSecond calls per second.');
    }

    shutdown();
  }

  void run(int batchSize);

  void setup();

  void shutdown();

  void expectEquals(actual, expected) {
    if (actual != expected) {
      throw Exception('$name: Unexpected result: $actual, expected $expected');
    }
  }
}

final class Com extends FfiCallbackBenchmark {
  Com() : super('FfiCallbackBenchmark.Com');

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
  void run(int batchSize) {
    setTitle(title!.ptr);
  }

  @override
  void setup() {
    CoInitializeEx(COINIT_MULTITHREADED);
    dialog = createInstance<IFileDialog>(FileOpenDialog);
    title = w('Dart Open File Dialog');
  }

  @override
  void shutdown() {
    dialog!.release();
    title!.free();
  }
}

final argParser = ArgParser()
  ..addFlag('verbose', abbr: 'v', help: 'Verbose output');

// void main(List<String> args) {
//   final results = argParser.parse(args);
//   final benchmarks = [Com.new];

//   final filter = results.rest.firstOrNull;
//   for (final constructor in benchmarks) {
//     final benchmark = constructor();
//     if (filter == null || benchmark.name.contains(filter)) {
//       benchmark.report(verbose: results['verbose']);
//     }
//   }
// }

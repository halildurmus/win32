import 'package:benchmark_harness/benchmark_harness.dart';

abstract class EnhancedBenchmarkBase extends BenchmarkBase {
  EnhancedBenchmarkBase(super.name, {super.emitter = const PrintEmitterV2()});

  @override
  void exercise() => run();
}

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

/// Where to read and write the baseline file.
const _baselinePath = 'benchmark/baseline.json';

var _runAsAot = false;

/// If `true`, write the results to a baseline file for later comparison.
var _writeBaseline = true;

/// If there is an existing baseline file, this contains the best time for each
/// named benchmark in the baseline file.
final _baseline = <String, double>{};

void main(List<String> arguments) {
  // Don't read the baseline if this run is supposed to be creating a baseline.
  if (!_writeBaseline) {
    try {
      final baselineFile = File(_baselinePath);
      if (baselineFile.existsSync()) {
        (jsonDecode(baselineFile.readAsStringSync()) as Map<String, Object?>)
            .forEach((name, metrics) {
              final latency =
                  (metrics! as Map<String, Object?>)['latency']! as double;
              _baseline[name] = latency;
            });
      }
    } on IOException catch (error) {
      print('Failed to read baseline file "$_baselinePath".\n$error');
    }
  }

  final caseDirectory = Directory('benchmark/case');
  final benchmarks = caseDirectory
      .listSync()
      .whereType<File>()
      .map((file) => p.basenameWithoutExtension(file.path))
      .toList(growable: false);
  final results = <String, double>{};
  for (final benchmark in benchmarks) {
    results[benchmark] = _runBenchmark(benchmark);
  }

  print('');
  print(
    '${"Benchmark${_runAsAot ? ' (AOT)' : ' (JIT)'}".padRight(30)}'
    '    latency  baseline',
  );
  print('-----------------------------  ----------  --------');
  for (final MapEntry(key: benchmark, value: latency) in results.entries) {
    _printStats(benchmark, latency);
  }

  if (_writeBaseline) {
    final data = <String, Object?>{};
    for (final MapEntry(key: benchmark, value: latency) in results.entries) {
      data[benchmark] = {'latency': latency};
    }

    final json = const JsonEncoder.withIndent('  ').convert(data);
    File(_baselinePath).writeAsStringSync(json);
    print('\nWrote baseline to "$_baselinePath".');
  }
}

double _runBenchmark(String benchmark) {
  final process = Process.runSync('dart', [
    'run',
    'benchmark/case/$benchmark.dart',
  ], stdoutEncoding: utf8);
  final exitCode = process.exitCode;
  if (exitCode != 0) {
    print('Failed to run benchmark "$benchmark".');
    exit(exitCode);
  }

  final output = process.stdout as String;
  final latency = double.tryParse(output.trim().split(' ').last);
  if (latency == null) {
    print('Failed to parse output for benchmark "$benchmark": "$output".');
    exit(1);
  }

  return latency;
}

void _printStats(String benchmark, double latency) {
  String number(double value) => value.toStringAsFixed(3).padLeft(9);
  String red(String text) => '\u001b[31m$text\u001b[0m';
  String green(String text) => '\u001b[32m$text\u001b[0m';

  var baseline = '  (none)';
  if (_baseline[benchmark] case final baseLineFastest?) {
    // Show the baseline's time as a percentage of the measured time. So:
    // -  50% means it took twice the time or half as hast.
    // - 100% means it took the same time as the baseline.
    // - 200% means it ran in half the time or twice as fast.
    final percent = baseLineFastest / latency * 100;
    baseline = '${percent.toStringAsFixed(1).padLeft(9)}%';

    // If the difference is (probably) bigger than the noise, then show it in
    // color to make it clearer that smaller number is better.
    if (percent < 98) {
      baseline = red(baseline);
    } else if (percent > 102) {
      baseline = green(baseline);
    }
  }

  print('${benchmark.padRight(30)}  ${number(latency)}  $baseline');
}

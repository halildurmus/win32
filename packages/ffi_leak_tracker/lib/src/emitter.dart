// ignore_for_file: one_member_abstracts

import 'dart:convert';
import 'dart:io';

import 'allocation.dart';
import 'utils.dart';

/// Emits detected memory leaks to an output destination.
///
/// Implementations define how leak data is reported, such as writing structured
/// output to disk or printing formatted diagnostics to stdout.
///
/// Use the factory constructors to select a concrete implementation:
/// - [LeaksEmitter.json] → writes a JSON report file
/// - [LeaksEmitter.print] → prints a styled console report
abstract class LeaksEmitter {
  /// Creates an emitter that writes leak information as JSON to [filePath].
  const factory LeaksEmitter.json({required String filePath}) = JsonEmitter;

  /// Creates an emitter that prints a formatted leak report to [stdout].
  const factory LeaksEmitter.print() = PrintEmitter;

  /// Emits a report for the provided list of [leaks].
  ///
  /// Implementations may choose any output format or destination.
  void emit(List<Allocation> leaks);
}

/// Emits leaks as a JSON file.
///
/// The output is a human-readable, indented JSON array containing serialized
/// [Allocation] records. This format is suitable for machine processing,
/// archival storage, or external analysis tools.
final class JsonEmitter implements LeaksEmitter {
  /// Creates a JSON emitter that writes to [filePath].
  const JsonEmitter({required this.filePath});

  /// Destination file path for the JSON report.
  final String filePath;

  /// Encoder used to serialize leak data.
  static const _jsonEncoder = JsonEncoder.withIndent('  ');

  /// Writes all [leaks] to disk as formatted JSON.
  ///
  /// Existing files will be overwritten.
  @override
  void emit(List<Allocation> leaks) {
    final jsonList = leaks.map((allocation) => allocation.toJson()).toList();
    final jsonString = _jsonEncoder.convert(jsonList);
    File(filePath).writeAsStringSync(jsonString);
  }
}

/// Emits leaks as a formatted console report.
///
/// The output is designed for human readability and includes:
/// - summary statistics
/// - sorted leaks (largest first)
/// - per-allocation metadata
/// - colored output when ANSI is supported
///
/// If the terminal does not support ANSI escape sequences, all styling is
/// automatically disabled.
final class PrintEmitter implements LeaksEmitter {
  /// Creates a console-printing emitter.
  const PrintEmitter();

  /// Generates and prints a leak report to stdout.
  ///
  /// Leaks are sorted by descending size so the most significant allocations
  /// appear first.
  @override
  void emit(List<Allocation> leaks) {
    final buffer = StringBuffer();

    if (leaks.isEmpty) {
      buffer.writeln(green(bold('✓ No native memory leaks detected')));
      return stdout.write(buffer.toString());
    }

    final sorted = [...leaks]..sort((a, b) => b.size.compareTo(a.size));
    final totalBytes = sorted.fold(0, (s, e) => s + e.size);
    final rule = dim('─' * 40);

    buffer
      ..writeln(red(bold('✗ Native memory leaks detected')))
      ..writeln('Leaks   : ${yellow(bold('${sorted.length}'))}')
      ..writeln('Total   : ${red(bold(formatBytes(totalBytes)))}')
      ..writeln('Largest : ${red(bold(formatBytes(sorted.first.size)))}')
      ..writeln(rule);

    for (final (i, leak) in sorted.indexed) {
      buffer
        ..writeln(
          yellow('Leak #${i + 1} - ${leak.type} (${formatBytes(leak.size)})'),
        )
        ..writeln('  address   : ${cyan(formatAddress(leak.address))}')
        ..writeln('  timestamp : ${blue(leak.timestamp.toIso8601String())}')
        ..writeln('  stack     :');

      for (final line in leak.stack.trimRight().split('\n')) {
        buffer.writeln('    ${dim(line)}');
      }

      buffer.writeln(rule);
    }

    stdout.write(buffer.toString());
  }
}

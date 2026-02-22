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
      _writeHeader(buffer);
      buffer.writeln('Status : ${_status(false)}');
      return stdout.write(buffer.toString());
    }

    final list = [...leaks]..sort((a, b) => b.size.compareTo(a.size));
    final total = list.fold(0, (s, e) => s + e.size);

    _writeHeader(buffer);
    buffer
      ..writeln('Status  : ${_status(true)}')
      ..writeln('Count   : ${list.length}')
      ..writeln('Total   : ${formatBytes(total)}')
      ..writeln('Largest : ${formatBytes(list.first.size)}')
      ..writeln();

    for (var i = 0; i < list.length; i++) {
      final a = list[i];
      buffer
        ..writeln(
          _ansi(
            _bold + _yellow,
            '#${i + 1}  ${a.type}  (${formatBytes(a.size)})',
          ),
        )
        ..writeln(_ansi(_dim, '─' * 36))
        ..writeln('Address   : ${_ansi(_cyan, formatAddress(a.address))}')
        ..writeln('Timestamp : ${_ansi(_blue, a.timestamp.toIso8601String())}')
        ..writeln('Stack     :');

      for (final line in a.stack.trimRight().split('\n')) {
        buffer.writeln('  ${_ansi(_dim, line)}');
      }

      buffer.writeln();
    }

    stdout.write(buffer.toString());
  }

  /// Writes the report header.
  void _writeHeader(StringBuffer buffer) {
    const title = 'Native Memory Leak Analysis';
    buffer
      ..writeln(_ansi(_bold + _white, title))
      ..writeln(_ansi(_gray, '─' * title.length));
  }

  /// Returns a colored status string indicating whether leaks exist.
  String _status(bool hasLeaks) => hasLeaks
      ? _ansi(_bold + _red, '✗ LEAKS DETECTED')
      : _ansi(_bold + _green, '✓ NO LEAKS DETECTED');

  /// Applies ANSI styling to [text] if supported by the terminal.
  String _ansi(String style, String text) =>
      _ansiSupported ? '$style$text$_reset' : text;

  /// Whether ANSI escape sequences are supported by stdout.
  static final bool _ansiSupported = stdout.supportsAnsiEscapes;

  /// ANSI reset code.
  static const _reset = '\x1B[0m';

  /// ANSI bold style.
  static const _bold = '\x1B[1m';

  /// ANSI dim style.
  static const _dim = '\x1B[2m';

  /// ANSI RGB red color.
  static const _red = '\x1B[38;2;238;75;43m';

  /// ANSI RGB green color.
  static const _green = '\x1B[38;2;170;255;0m';

  /// ANSI RGB yellow color.
  static const _yellow = '\x1B[38;2;255;234;0m';

  /// ANSI RGB cyan color.
  static const _cyan = '\x1B[38;2;0;255;255m';

  /// ANSI RGB blue color.
  static const _blue = '\x1B[38;2;0;150;255m';

  /// ANSI gray color.
  static const _gray = '\x1B[38;2;170;170;170m';

  /// ANSI bright white color.
  static const _white = '\x1B[1;97m';
}

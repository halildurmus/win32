import 'allocation.dart';
import 'filter.dart';
import 'utils.dart';

/// Exception thrown when one or more memory leaks are detected.
///
/// A [LeakTrackerException] aggregates all outstanding [Allocation] records
/// that were considered leaks according to a [LeakFilter]. It is designed to
/// provide a structured, human-readable diagnostic report suitable for logs,
/// test failures, or debugging output.
///
/// This exception is typically thrown at validation boundaries (for example,
/// after a test or scoped execution block) to signal that allocated memory was
/// not properly released.
final class LeakTrackerException implements Exception {
  /// Creates a leak report exception.
  ///
  /// The [leaks] list must not be empty, as this exception represents the
  /// presence of detected leaks. The optional [filter] describes the rule used
  /// to determine which allocations were considered leaks.
  LeakTrackerException({required this.leaks, this.filter = const .ignoreNone()})
    : assert(
        leaks.isNotEmpty,
        'LeakTrackerException must have at least one leak.',
      );

  /// All allocations that were still outstanding when detection occurred.
  final List<Allocation> leaks;

  /// The filter that determined which allocations count as leaks.
  ///
  /// This provides context for diagnostics so that consumers can understand why
  /// specific allocations were included in the report.
  final LeakFilter filter;

  /// Total number of leaked allocations.
  int get count => leaks.length;

  /// Sum of the sizes of all leaked allocations, in bytes.
  int get totalBytes => leaks.fold(0, (sum, a) => sum + a.size);

  @override
  String toString() {
    const title = 'LeakTrackerException: Native memory leaks detected';
    final sorted = [...leaks]..sort((a, b) => b.size.compareTo(a.size));
    final rule = '─' * 40;

    final buffer = StringBuffer()
      ..writeln(red(bold(title)))
      ..writeln('Filter  : ${bold('$filter')}')
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

    return buffer.toString();
  }
}

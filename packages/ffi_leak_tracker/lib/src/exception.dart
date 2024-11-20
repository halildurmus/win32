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
    const title = 'LeakTrackerException Report';
    final buffer = StringBuffer()
      ..writeln(title)
      ..writeln('═' * title.length)
      ..writeln()
      ..writeln('Filter : $filter')
      ..writeln('Count  : $count')
      ..writeln('Total  : ${formatBytes(totalBytes)}')
      ..writeln('Leaks  :')
      ..writeln();

    for (final leak in leaks) {
      buffer
        ..writeln(leak)
        ..writeln();
    }

    buffer.writeln('━━━━━━━━━━━━ End of Report ━━━━━━━━━━━━');
    return buffer.toString().trimRight();
  }
}

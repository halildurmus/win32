import 'package:logging/logging.dart';

/// The logging level to use.
Level? logLevel;

/// Set the appropriate logging level based on the given [level].
void setLogLevel(String level) {
  logLevel = switch (level) {
    'all' => Level.ALL,
    'finest' => Level.FINEST,
    'finer' => Level.FINER,
    'fine' => Level.FINE,
    'config' => Level.CONFIG,
    'info' => Level.INFO,
    'warning' => Level.WARNING,
    'severe' => Level.SEVERE,
    'shout' => Level.SHOUT,
    'off' => Level.OFF,
    _ => null,
  };
}

/// The logger to use for logging messages.
final generatorLogger = Logger('win32gen');
// ..onRecord.listen((record) {
//   print(
//     '[${record.level.name}] ${_formatTimestamp(record.time)} '
//     '[${record.loggerName}]: ${record.message}',
//   );
// });

/// Formats a [DateTime] as "yyyy-MM-dd HH:mm:ss".
// String _formatTimestamp(DateTime time) {
//   final year = time.year.toString().padLeft(4, '0');
//   final month = time.month.toString().padLeft(2, '0');
//   final day = time.day.toString().padLeft(2, '0');
//   final hour = time.hour.toString().padLeft(2, '0');
//   final minute = time.minute.toString().padLeft(2, '0');
//   final second = time.second.toString().padLeft(2, '0');
//   return '$year-$month-$day $hour:$minute:$second';
// }

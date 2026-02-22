import 'package:logging/logging.dart';

/// The [Logger] used for all log messages from this package.
final logger = Logger('generator');

Level getLogLevel(String level) => switch (level) {
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
  _ => Level.INFO,
};

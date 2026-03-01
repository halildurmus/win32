import 'package:logging/logging.dart';

/// The [Logger] used for all log messages from this package.
final logger = Logger('generator');

Level getLogLevel(String level) => switch (level) {
  'all' => .ALL,
  'finest' => .FINEST,
  'finer' => .FINER,
  'fine' => .FINE,
  'config' => .CONFIG,
  'info' => .INFO,
  'warning' => .WARNING,
  'severe' => .SEVERE,
  'shout' => .SHOUT,
  'off' => .OFF,
  _ => .INFO,
};

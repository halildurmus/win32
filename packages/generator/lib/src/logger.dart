import 'dart:io';
import 'dart:math' as math;

import 'package:logger/logger.dart';

/// The logging level to use.
Level? logLevel;

/// Set the appropriate logging level based on the given [level].
void setLogLevel(String level) {
  logLevel = switch (level) {
    'all' => Level.all,
    'trace' => Level.trace,
    'debug' => Level.debug,
    'info' => Level.info,
    'warning' => Level.warning,
    'error' => Level.error,
    'fatal' => Level.fatal,
    'off' => Level.off,
    _ => null,
  };
}

/// The logger to use for logging messages.
final _logger = Logger(
  filter: ProductionFilter(),
  level: logLevel ?? Level.off,
  printer: PrettyPrinter(
    excludeBox: {
      Level.trace: true,
      Level.debug: true,
      Level.info: true,
      Level.warning: true,
    },
    lineLength: math.min(_terminalColumns, 80),
    methodCount: 0,
    printEmojis: false,
  ),
);

/// The number of columns of the terminal.
int get _terminalColumns {
  try {
    return stdout.terminalColumns;
  } catch (e) {
    // If we can't get the terminal columns, assume a default of 80.
    return 80;
  }
}

/// Log a message at level [Level.trace].
void trace(Object message, {Object? error, StackTrace? stackTrace}) =>
    _logger.t(message, error: error, stackTrace: stackTrace);

/// Log a message at level [Level.debug].
void debug(Object message, {Object? error, StackTrace? stackTrace}) =>
    _logger.d(message, error: error, stackTrace: stackTrace);

/// Log a message at level [Level.info].
void info(Object message, {Object? error, StackTrace? stackTrace}) =>
    _logger.i(message, error: error, stackTrace: stackTrace);

/// Log a message at level [Level.warning].
void warning(Object message, {Object? error, StackTrace? stackTrace}) =>
    _logger.w(message, error: error, stackTrace: stackTrace);

/// Log a message at level [Level.error].
void error(Object message, {Object? error, StackTrace? stackTrace}) =>
    _logger.e(message, error: error, stackTrace: stackTrace);

/// Log a message at level [Level.fatal].
void fatal(Object message, {Object? error, StackTrace? stackTrace}) =>
    _logger.f(message, error: error, stackTrace: stackTrace);

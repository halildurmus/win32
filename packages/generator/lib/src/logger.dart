import 'package:logging/logging.dart';

/// The [Logger] used for all log messages from this package.
///
/// This logger is initially unconfigured; no log messages will be printed
/// unless the user sets up a [Logger.root] handler or attaches a listener to
/// [generatorLogger].
final generatorLogger = Logger('generator');

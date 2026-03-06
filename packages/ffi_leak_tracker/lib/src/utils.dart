import 'dart:ffi';
import 'dart:io';

/// Fills a block of native memory with a repeated byte value.
@pragma('vm:prefer-inline')
void fillMemory(Pointer destination, int length, int fill) =>
    destination.cast<Uint8>().asTypedList(length).fillRange(0, length, fill);

/// Formats a numeric memory address as a fixed-width hexadecimal string.
///
/// The returned string is prefixed with `0x` and padded to 8 hexadecimal digits
/// for consistent alignment in logs or diagnostics.
String formatAddress(int address) =>
    '0x${address.toRadixString(16).padLeft(8, '0')}';

/// Converts a byte count into a human-readable string using binary units.
///
/// Units scale automatically from bytes up to gigabytes: `B`, `KB`, `MB`, `GB`.
///
/// Values ≥ 1 KB are formatted with two decimal places, while byte values are
/// formatted without decimals.
String formatBytes(int bytes) {
  const units = ['B', 'KB', 'MB', 'GB'];
  var size = bytes.toDouble();
  var unit = 0;

  while (size >= 1024 && unit < units.length - 1) {
    size /= 1024;
    unit++;
  }

  return '${size.toStringAsFixed(unit == 0 ? 0 : 2)} ${units[unit]}';
}

/// Regular expression used to match stack frame lines.
///
/// Matches lines in the form: `#<index> <content>`
final stackFramePattern = RegExp(r'^#(\d+)\s+(.*)$');

/// Cleans and normalizes a stack trace string.
///
/// This function:
/// - Removes the allocator’s own frame (expected to be first)
/// - Renumbers remaining frames starting from zero
/// - Preserves non-frame lines unchanged
///
/// Intended for presenting leak or allocation traces where internal
/// implementation frames should be hidden for clarity.
String formatStackTrace(String stackTrace) {
  final lines = stackTrace.split('\n');
  assert(
    lines.first.contains('package:ffi_leak_tracker/src/allocator.dart'),
    'Expected stack trace to contain allocator frame.',
  );

  final buffer = StringBuffer();
  var index = 0;

  // Skip the first frame which is the allocator method itself.
  for (final line in lines.skip(1)) {
    final match = stackFramePattern.firstMatch(line);

    // Preserve non-frame lines exactly.
    if (match == null) {
      buffer.writeln(line);
      continue;
    }

    final content = match.group(2)!;
    buffer.writeln('#$index      $content');
    index++;
  }

  return buffer.toString().trimRight();
}

/// Indents every line of [text] by a fixed number of spaces.
String indent(String text, int spaces) =>
    text.split('\n').map((l) => '${' ' * spaces}$l').join('\n');

/// Whether the program was compiled in **release mode**.
const isReleaseMode = bool.fromEnvironment('dart.vm.product');

/// Returns [text] wrapped in ANSI escape codes for bold styling if supported.
String bold(String text) => _ansiSupported ? '$_bold$text$_reset' : text;

/// Returns [text] wrapped in ANSI escape codes for dim styling if supported.
String dim(String text) => _ansiSupported ? '$_dim$text$_reset' : text;

/// Returns [text] wrapped in ANSI escape codes for red color if supported.
String red(String text) => _ansiSupported ? '$_red$text$_reset' : text;

/// Returns [text] wrapped in ANSI escape codes for green color if supported.
String green(String text) => _ansiSupported ? '$_green$text$_reset' : text;

/// Returns [text] wrapped in ANSI escape codes for yellow color if supported.
String yellow(String text) => _ansiSupported ? '$_yellow$text$_reset' : text;

/// Returns [text] wrapped in ANSI escape codes for cyan color if supported.
String cyan(String text) => _ansiSupported ? '$_cyan$text$_reset' : text;

/// Returns [text] wrapped in ANSI escape codes for blue color if supported.
String blue(String text) => _ansiSupported ? '$_blue$text$_reset' : text;

/// Returns [text] wrapped in ANSI escape codes for gray color if supported.
String gray(String text) => _ansiSupported ? '$_gray$text$_reset' : text;

/// Returns [text] wrapped in ANSI escape codes for bright white color if
/// supported.
String white(String text) => _ansiSupported ? '$_white$text$_reset' : text;

/// Whether ANSI escape sequences are supported by stdout.
final bool _ansiSupported = stdout.supportsAnsiEscapes;

/// ANSI reset code.
const _reset = '\x1B[0m';

/// ANSI bold style.
const _bold = '\x1B[1m';

/// ANSI dim style.
const _dim = '\x1B[2m';

/// ANSI RGB red color.
const _red = '\x1B[38;2;238;75;43m';

/// ANSI RGB green color.
const _green = '\x1B[38;2;170;255;0m';

/// ANSI RGB yellow color.
const _yellow = '\x1B[38;2;255;234;0m';

/// ANSI RGB cyan color.
const _cyan = '\x1B[38;2;0;255;255m';

/// ANSI RGB blue color.
const _blue = '\x1B[38;2;0;150;255m';

/// ANSI gray color.
const _gray = '\x1B[38;2;170;170;170m';

/// ANSI bright white color.
const _white = '\x1B[1;97m';

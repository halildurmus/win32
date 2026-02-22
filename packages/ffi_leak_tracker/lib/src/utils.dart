import 'dart:ffi';

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

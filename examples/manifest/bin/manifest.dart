// Demonstrates how to determine whether the current process is running
// with elevated (administrator) privileges using the Win32 access token API.

import 'package:manifest/manifest.dart';

void main() {
  final message = isProcessElevated()
      ? 'This process is running with elevated privileges.'
      : 'This process is running with standard user privileges.';
  showMessage(message);
}

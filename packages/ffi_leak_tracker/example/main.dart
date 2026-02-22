// ignore_for_file: unused_local_variable

import 'dart:ffi';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

/// Basic example demonstrating how leak detection works.
///
/// Run this in debug mode to see the tracker report a leak.
/// Uncomment the `adaptiveCalloc.free(ptr)` code to resolve it.
void main() {
  // Enable tracking only in debug/profile builds.
  LeakTracker.enableInDebug();

  print('Allocating memory without freeing it...');
  final ptr = adaptiveCalloc<Int32>();

  // Fix the leak by uncommenting:
  // adaptiveCalloc.free(ptr);

  print('Verifying for leaks...');

  // In debug builds this throws if any allocations remain.
  LeakTracker.verifyNoLeaksInDebug();

  print('No leaks detected.');
}

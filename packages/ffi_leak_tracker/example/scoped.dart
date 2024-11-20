import 'dart:ffi';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

/// Demonstrates how scoped leak tracking isolates allocations.
///
/// The inner scope has its own registry and does not see allocations
/// created outside of it.
void main() {
  LeakTracker.enableInDebug();

  print('Allocating outer pointer (outside scope)...');
  final outer = adaptiveCalloc<Int32>();

  LeakTracker.runScoped(() {
    print('Entering scoped tracking zone.');
    final inner = adaptiveCalloc<Int8>();
    adaptiveCalloc.free(inner);

    // This passes because:
    // 1. The inner allocation was freed.
    // 2. The outer allocation belongs to a different registry.
    LeakTracker.verifyNoLeaks();
  });

  print('Freeing outer pointer...');
  adaptiveCalloc.free(outer);

  // Final verification of global scope.
  LeakTracker.verifyNoLeaksInDebug();

  print('Global verification passed.');
}

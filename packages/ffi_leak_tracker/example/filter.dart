// ignore_for_file: unreachable_from_main, unused_local_variable

import 'dart:ffi';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

final class MyStruct extends Struct {
  @Int32()
  external int value;
}

class MyClass implements Finalizable {
  MyClass() : ptr = adaptiveCalloc() {
    // Ensure native memory is eventually released even if not freed manually.
    _finalizer.attach(this, ptr.cast(), detach: this);
  }

  static final _finalizer = NativeFinalizer(adaptiveCalloc.nativeFree);

  final Pointer<MyStruct> ptr;
}

/// Demonstrates how leak filters suppress known or intentional allocations.
///
/// This example allocates native memory that would normally be reported as a
/// leak. A global filter is then applied to ignore allocations of a specific
/// type so verification succeeds.
///
/// In practice, instead of using a global filter, it would be better to not use
/// adaptive allocators for objects that use Finalizers, but this example is
/// for demonstration purposes only.
void main() {
  LeakTracker.enableInDebug();

  print('Registering global filter for "MyStruct" allocations...');
  LeakTracker.addGlobalFilter(.ignoreTypes({'MyStruct'}));

  print('Creating object that allocates native memory...');
  final ignored = MyClass();

  print('Verifying for leaks...');
  // Without the filter above, this would throw.
  LeakTracker.verifyNoLeaksInDebug();

  print('No leaks reported (filtered).');
}

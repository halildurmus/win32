// Example demonstrating enabling COM threading across isolates.

import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'dart:math' as math;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Represents the COM apartment context of a thread.
class ThreadContext {
  const ThreadContext(this.id, this.type, this.qualifier);

  final int id;
  final APTTYPE type;
  final APTTYPEQUALIFIER qualifier;

  String get typeName => switch (type) {
    APTTYPE_CURRENT => 'current',
    APTTYPE_STA => 'singleThreaded',
    APTTYPE_MTA => 'multiThreaded',
    APTTYPE_NA => 'neutral',
    APTTYPE_MAINSTA => 'mainSingleThreaded',
    _ => throw StateError('Unrecognized APTTYPE value: $type'),
  };

  String get qualifierName => switch (qualifier) {
    APTTYPEQUALIFIER_NONE => 'none',
    APTTYPEQUALIFIER_IMPLICIT_MTA => 'implicitMTA',
    APTTYPEQUALIFIER_NA_ON_MTA => 'neutralOnMTA',
    APTTYPEQUALIFIER_NA_ON_STA => 'neutralOnSTA',
    APTTYPEQUALIFIER_NA_ON_IMPLICIT_MTA => 'neutralOnImplicitMTA',
    APTTYPEQUALIFIER_NA_ON_MAINSTA => 'neutralOnMainSTA',
    APTTYPEQUALIFIER_APPLICATION_STA => 'applicationSTA',
    _ => throw StateError('Unrecognized APTTYPEQUALIFIER value: $qualifier'),
  };

  @override
  String toString() => '#$id: [$typeName, $qualifierName]';
}

// Ensures a multi-threaded apartment (MTA) is created on the current thread.
void initializeMTA() => CoIncrementMTAUsage();

/// Returns the COM apartment context for the current thread, initializing MTA
/// if COM is not yet initialized.
ThreadContext getThreadContext() => using((arena) {
  final threadID = GetCurrentThreadId();
  final pAptType = arena<Int32>();
  final pAptQualifier = arena<Int32>();
  try {
    CoGetApartmentType(pAptType, pAptQualifier);
  } on WindowsException catch (e) {
    if (e.hr == CO_E_NOTINITIALIZED) {
      // This thread hasn't been initialized for COM. Initialize and try again.
      initializeMTA();
      CoGetApartmentType(pAptType, pAptQualifier);
    } else {
      rethrow;
    }
  }

  return .new(threadID, .new(pAptType.value), .new(pAptQualifier.value));
});

/// Runs work inside an isolate, returning its thread COM context.
ThreadContext doSomething() {
  // We are now in a spawned isolate. Get some information about the COM context
  // that the current _thread_ has (which may or may not be the original thread
  // where we ran CoInitializeEx(), depending on whether Dart is reusing the
  // same thread or not).
  final context = getThreadContext();

  // Sleep for a period of time to increase the chances that Dart creates
  // another thread.
  sleep(Duration(milliseconds: math.Random().nextInt(10)));

  // Pass the context information back to the spawning isolate.
  return context;
}

/// Spawns a number of isolates and logs their COM contexts.
Future<void> createIsolates() async {
  // Spawn 100 isolates. Isolates are an abstraction over threads. Some isolates
  // may share a thread, but Dart may spin up additional threads. This is an
  // implementation detail, but it matters for the purposes of this example
  // because only the initial thread has been initialized for COM.
  for (var i = 0; i < 100; i++) {
    final context = await Isolate.run(doSomething);
    print(context);
  }
}

/// Spins up a 100 isolates and interrogates them to find out their context.
///
/// Example output, showing multiple isolates executing on three separate
/// Windows threads:
/// ```text
/// #1100: [mainSingleThreaded, none]
/// #4988: [multiThreaded, implicitMTA]
/// #4988: [multiThreaded, implicitMTA]
/// #4988: [multiThreaded, implicitMTA]
/// #15296: [multiThreaded, implicitMTA]
/// #15296: [multiThreaded, implicitMTA]
/// #4988: [multiThreaded, implicitMTA]
/// #1100: [mainSingleThreaded, none]
/// #4988: [multiThreaded, implicitMTA]
/// #4988: [multiThreaded, implicitMTA]
/// #1100: [mainSingleThreaded, none]
/// ...
/// ```
void main() async {
  // Initialize the main thread for the COM apartment threading model.
  CoInitializeEx(COINIT_APARTMENTTHREADED);

  // Should be `mainSingleThreaded`.
  print(getThreadContext());

  // Now spin up a number of threads.
  await createIsolates();
}

// combase.dart

// Foundational COM classes

import 'dart:ffi';

import 'package:ffi/ffi.dart';

/// A representation of a generic COM object. All Dart COM objects inherit from
/// this class.
class COMObject extends Struct {
  Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);

  factory COMObject.allocate() =>
      allocate<COMObject>().ref..lpVtbl = allocate<IntPtr>();
}

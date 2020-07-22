// IStringable.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import '../winrt/winrt_constants.dart';

import 'IInspectable.dart';

/// @nodoc
const IID_IStringable = '{96369F54-8EB6-48F0-ABCE-C1B211E627C3}';

typedef _ToString_Native = Int32 Function(Pointer obj, Pointer<Utf16> value);
typedef _ToString_Dart = int Function(Pointer obj, Pointer<Utf16> value);

/// {@category Interface}
/// {@category winrt}
class IStringable extends IInspectable {
  // vtable begins at 6, ends at 6

  @override
  Pointer<COMObject> ptr;

  IStringable(this.ptr) : super(ptr);

  int ToString(Pointer<Utf16> value) =>
      Pointer<NativeFunction<_ToString_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_ToString_Dart>()(ptr.ref.lpVtbl, value);
}

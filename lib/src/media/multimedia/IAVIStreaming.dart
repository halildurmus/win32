// IAVIStreaming.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';

/// @nodoc
const IID_IAVIStreaming = 'null';

typedef _Begin_Native = Int32 Function(
    Pointer obj, Int32 lStart, Int32 lEnd, Int32 lRate);
typedef _Begin_Dart = int Function(
    Pointer obj, int lStart, int lEnd, int lRate);

typedef _End_Native = Int32 Function(Pointer obj);
typedef _End_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class IAVIStreaming extends IUnknown {
  // vtable begins at 3, ends at 4

  IAVIStreaming(Pointer<COMObject> ptr) : super(ptr);

  int Begin(int lStart, int lEnd, int lRate) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_Begin_Native>>>()
      .value
      .asFunction<_Begin_Dart>()(ptr.ref.lpVtbl, lStart, lEnd, lRate);

  int End() => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_End_Native>>>()
      .value
      .asFunction<_End_Dart>()(ptr.ref.lpVtbl);
}

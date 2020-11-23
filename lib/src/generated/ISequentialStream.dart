// ISequentialStream.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../constants.dart';
import '../constants_nodoc.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_ISequentialStream = '{0c733a30-2a1c-11ce-ade5-00aa0044773d}';

typedef _Read_Native = Int32 Function(
    Pointer obj, Pointer<void> pv, Uint32 cb, Pointer<Uint32> pcbRead);
typedef _Read_Dart = int Function(
    Pointer obj, Pointer<void> pv, int cb, Pointer<Uint32> pcbRead);

typedef _Write_Native = Int32 Function(
    Pointer obj, Pointer<void> pv, Uint32 cb, Pointer<Uint32> pcbWritten);
typedef _Write_Dart = int Function(
    Pointer obj, Pointer<void> pv, int cb, Pointer<Uint32> pcbWritten);

/// {@category Interface}
/// {@category com}
class ISequentialStream extends IUnknown {
  // vtable begins at 3, ends at 4

  ISequentialStream(Pointer<COMObject> ptr) : super(ptr);

  int Read(Pointer<void> pv, int cb, Pointer<Uint32> pcbRead) =>
      Pointer<NativeFunction<_Read_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_Read_Dart>()(ptr.ref.lpVtbl, pv, cb, pcbRead);

  int Write(Pointer<void> pv, int cb, Pointer<Uint32> pcbWritten) =>
      Pointer<NativeFunction<_Write_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_Write_Dart>()(ptr.ref.lpVtbl, pv, cb, pcbWritten);
}

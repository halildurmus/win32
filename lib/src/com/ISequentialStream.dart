// ISequentialStream.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_ISequentialStream = '{0C733A30-2A1C-11CE-ADE5-00AA0044773D}';

typedef _Read_Native = Int32 Function(
    Pointer obj, Pointer pv, Uint32 cb, Pointer<Uint32> pcbRead);
typedef _Read_Dart = int Function(
    Pointer obj, Pointer pv, int cb, Pointer<Uint32> pcbRead);

typedef _Write_Native = Int32 Function(
    Pointer obj, Pointer pv, Uint32 cb, Pointer<Uint32> pcbWritten);
typedef _Write_Dart = int Function(
    Pointer obj, Pointer pv, int cb, Pointer<Uint32> pcbWritten);

/// {@category Interface}
/// {@category com}
class ISequentialStream extends IUnknown {
  // vtable begins at 3, ends at 4

  ISequentialStream(Pointer<COMObject> ptr) : super(ptr);

  int Read(Pointer pv, int cb, Pointer<Uint32> pcbRead) =>
      Pointer<NativeFunction<_Read_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_Read_Dart>()(ptr.ref.lpVtbl, pv, cb, pcbRead);

  int Write(Pointer pv, int cb, Pointer<Uint32> pcbWritten) =>
      Pointer<NativeFunction<_Write_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_Write_Dart>()(ptr.ref.lpVtbl, pv, cb, pcbWritten);
}

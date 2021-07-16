// IAVIFile.dart

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
import '../../media/multimedia/structs.g.dart';

/// @nodoc
const IID_IAVIFile = 'null';

typedef _Info_Native = Int32 Function(
    Pointer obj, Pointer<AVIFILEINFO> pfi, Int32 lSize);
typedef _Info_Dart = int Function(
    Pointer obj, Pointer<AVIFILEINFO> pfi, int lSize);

typedef _GetStream_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppStream, Uint32 fccType, Int32 lParam);
typedef _GetStream_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppStream, int fccType, int lParam);

typedef _CreateStream_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppStream, Pointer<AVISTREAMINFO> psi);
typedef _CreateStream_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppStream, Pointer<AVISTREAMINFO> psi);

typedef _WriteData_Native = Int32 Function(
    Pointer obj, Uint32 ckid, Pointer lpData, Int32 cbData);
typedef _WriteData_Dart = int Function(
    Pointer obj, int ckid, Pointer lpData, int cbData);

typedef _ReadData_Native = Int32 Function(
    Pointer obj, Uint32 ckid, Pointer lpData, Pointer<Int32> lpcbData);
typedef _ReadData_Dart = int Function(
    Pointer obj, int ckid, Pointer lpData, Pointer<Int32> lpcbData);

typedef _EndRecord_Native = Int32 Function(Pointer obj);
typedef _EndRecord_Dart = int Function(Pointer obj);

typedef _DeleteStream_Native = Int32 Function(
    Pointer obj, Uint32 fccType, Int32 lParam);
typedef _DeleteStream_Dart = int Function(Pointer obj, int fccType, int lParam);

/// {@category Interface}
/// {@category com}
class IAVIFile extends IUnknown {
  // vtable begins at 3, ends at 9

  IAVIFile(Pointer<COMObject> ptr) : super(ptr);

  int Info(Pointer<AVIFILEINFO> pfi, int lSize) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_Info_Native>>>()
      .value
      .asFunction<_Info_Dart>()(ptr.ref.lpVtbl, pfi, lSize);

  int GetStream(Pointer<COMObject> ppStream, int fccType, int lParam) => ptr
      .ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetStream_Native>>>()
      .value
      .asFunction<_GetStream_Dart>()(ptr.ref.lpVtbl, ppStream, fccType, lParam);

  int CreateStream(Pointer<COMObject> ppStream, Pointer<AVISTREAMINFO> psi) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<Pointer<NativeFunction<_CreateStream_Native>>>()
          .value
          .asFunction<_CreateStream_Dart>()(ptr.ref.lpVtbl, ppStream, psi);

  int WriteData(int ckid, Pointer lpData, int cbData) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_WriteData_Native>>>()
      .value
      .asFunction<_WriteData_Dart>()(ptr.ref.lpVtbl, ckid, lpData, cbData);

  int ReadData(int ckid, Pointer lpData, Pointer<Int32> lpcbData) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<_ReadData_Native>>>()
          .value
          .asFunction<_ReadData_Dart>()(ptr.ref.lpVtbl, ckid, lpData, lpcbData);

  int EndRecord() => ptr.ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_EndRecord_Native>>>()
      .value
      .asFunction<_EndRecord_Dart>()(ptr.ref.lpVtbl);

  int DeleteStream(int fccType, int lParam) => ptr.ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_DeleteStream_Native>>>()
      .value
      .asFunction<_DeleteStream_Dart>()(ptr.ref.lpVtbl, fccType, lParam);
}

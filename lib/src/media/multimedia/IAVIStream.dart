// IAVIStream.dart

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
import '../../foundation/structs.g.dart';
import '../../media/multimedia/structs.g.dart';

/// @nodoc
const IID_IAVIStream = 'null';

typedef _Create_Native = Int32 Function(
    Pointer obj, IntPtr lParam1, IntPtr lParam2);
typedef _Create_Dart = int Function(Pointer obj, int lParam1, int lParam2);

typedef _Info_Native = Int32 Function(
    Pointer obj, Pointer<AVISTREAMINFO> psi, Int32 lSize);
typedef _Info_Dart = int Function(
    Pointer obj, Pointer<AVISTREAMINFO> psi, int lSize);

typedef _FindSample_Native = Int32 Function(
    Pointer obj, Int32 lPos, Int32 lFlags);
typedef _FindSample_Dart = int Function(Pointer obj, int lPos, int lFlags);

typedef _ReadFormat_Native = Int32 Function(
    Pointer obj, Int32 lPos, Pointer lpFormat, Pointer<Int32> lpcbFormat);
typedef _ReadFormat_Dart = int Function(
    Pointer obj, int lPos, Pointer lpFormat, Pointer<Int32> lpcbFormat);

typedef _SetFormat_Native = Int32 Function(
    Pointer obj, Int32 lPos, Pointer lpFormat, Int32 cbFormat);
typedef _SetFormat_Dart = int Function(
    Pointer obj, int lPos, Pointer lpFormat, int cbFormat);

typedef _Read_Native = Int32 Function(
    Pointer obj,
    Int32 lStart,
    Int32 lSamples,
    Pointer lpBuffer,
    Int32 cbBuffer,
    Pointer<Int32> plBytes,
    Pointer<Int32> plSamples);
typedef _Read_Dart = int Function(
    Pointer obj,
    int lStart,
    int lSamples,
    Pointer lpBuffer,
    int cbBuffer,
    Pointer<Int32> plBytes,
    Pointer<Int32> plSamples);

typedef _Write_Native = Int32 Function(
    Pointer obj,
    Int32 lStart,
    Int32 lSamples,
    Pointer lpBuffer,
    Int32 cbBuffer,
    Uint32 dwFlags,
    Pointer<Int32> plSampWritten,
    Pointer<Int32> plBytesWritten);
typedef _Write_Dart = int Function(
    Pointer obj,
    int lStart,
    int lSamples,
    Pointer lpBuffer,
    int cbBuffer,
    int dwFlags,
    Pointer<Int32> plSampWritten,
    Pointer<Int32> plBytesWritten);

typedef _Delete_Native = Int32 Function(
    Pointer obj, Int32 lStart, Int32 lSamples);
typedef _Delete_Dart = int Function(Pointer obj, int lStart, int lSamples);

typedef _ReadData_Native = Int32 Function(
    Pointer obj, Uint32 fcc, Pointer lp, Pointer<Int32> lpcb);
typedef _ReadData_Dart = int Function(
    Pointer obj, int fcc, Pointer lp, Pointer<Int32> lpcb);

typedef _WriteData_Native = Int32 Function(
    Pointer obj, Uint32 fcc, Pointer lp, Int32 cb);
typedef _WriteData_Dart = int Function(
    Pointer obj, int fcc, Pointer lp, int cb);

typedef _SetInfo_Native = Int32 Function(
    Pointer obj, Pointer<AVISTREAMINFO> lpInfo, Int32 cbInfo);
typedef _SetInfo_Dart = int Function(
    Pointer obj, Pointer<AVISTREAMINFO> lpInfo, int cbInfo);

/// {@category Interface}
/// {@category com}
class IAVIStream extends IUnknown {
  // vtable begins at 3, ends at 13

  IAVIStream(Pointer<COMObject> ptr) : super(ptr);

  int Create(int lParam1, int lParam2) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_Create_Native>>>()
      .value
      .asFunction<_Create_Dart>()(ptr.ref.lpVtbl, lParam1, lParam2);

  int Info(Pointer<AVISTREAMINFO> psi, int lSize) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_Info_Native>>>()
      .value
      .asFunction<_Info_Dart>()(ptr.ref.lpVtbl, psi, lSize);

  int FindSample(int lPos, int lFlags) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_FindSample_Native>>>()
      .value
      .asFunction<_FindSample_Dart>()(ptr.ref.lpVtbl, lPos, lFlags);

  int ReadFormat(int lPos, Pointer lpFormat, Pointer<Int32> lpcbFormat) =>
      ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<Pointer<NativeFunction<_ReadFormat_Native>>>()
              .value
              .asFunction<_ReadFormat_Dart>()(
          ptr.ref.lpVtbl, lPos, lpFormat, lpcbFormat);

  int SetFormat(int lPos, Pointer lpFormat, int cbFormat) => ptr
      .ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_SetFormat_Native>>>()
      .value
      .asFunction<_SetFormat_Dart>()(ptr.ref.lpVtbl, lPos, lpFormat, cbFormat);

  int Read(int lStart, int lSamples, Pointer lpBuffer, int cbBuffer,
          Pointer<Int32> plBytes, Pointer<Int32> plSamples) =>
      ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_Read_Native>>>()
              .value
              .asFunction<_Read_Dart>()(ptr.ref.lpVtbl, lStart, lSamples,
          lpBuffer, cbBuffer, plBytes, plSamples);

  int Write(
          int lStart,
          int lSamples,
          Pointer lpBuffer,
          int cbBuffer,
          int dwFlags,
          Pointer<Int32> plSampWritten,
          Pointer<Int32> plBytesWritten) =>
      ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_Write_Native>>>()
              .value
              .asFunction<_Write_Dart>()(ptr.ref.lpVtbl, lStart, lSamples,
          lpBuffer, cbBuffer, dwFlags, plSampWritten, plBytesWritten);

  int Delete(int lStart, int lSamples) => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_Delete_Native>>>()
      .value
      .asFunction<_Delete_Dart>()(ptr.ref.lpVtbl, lStart, lSamples);

  int ReadData(int fcc, Pointer lp, Pointer<Int32> lpcb) => ptr.ref.lpVtbl.value
      .elementAt(11)
      .cast<Pointer<NativeFunction<_ReadData_Native>>>()
      .value
      .asFunction<_ReadData_Dart>()(ptr.ref.lpVtbl, fcc, lp, lpcb);

  int WriteData(int fcc, Pointer lp, int cb) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_WriteData_Native>>>()
      .value
      .asFunction<_WriteData_Dart>()(ptr.ref.lpVtbl, fcc, lp, cb);

  int SetInfo(Pointer<AVISTREAMINFO> lpInfo, int cbInfo) => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_SetInfo_Native>>>()
      .value
      .asFunction<_SetInfo_Dart>()(ptr.ref.lpVtbl, lpInfo, cbInfo);
}

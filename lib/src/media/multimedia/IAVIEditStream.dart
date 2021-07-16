// IAVIEditStream.dart

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
const IID_IAVIEditStream = 'null';

typedef _Cut_Native = Int32 Function(Pointer obj, Pointer<Int32> plStart,
    Pointer<Int32> plLength, Pointer<COMObject> ppResult);
typedef _Cut_Dart = int Function(Pointer obj, Pointer<Int32> plStart,
    Pointer<Int32> plLength, Pointer<COMObject> ppResult);

typedef _Copy_Native = Int32 Function(Pointer obj, Pointer<Int32> plStart,
    Pointer<Int32> plLength, Pointer<COMObject> ppResult);
typedef _Copy_Dart = int Function(Pointer obj, Pointer<Int32> plStart,
    Pointer<Int32> plLength, Pointer<COMObject> ppResult);

typedef _Paste_Native = Int32 Function(Pointer obj, Pointer<Int32> plPos,
    Pointer<Int32> plLength, COMObject pstream, Int32 lStart, Int32 lEnd);
typedef _Paste_Dart = int Function(Pointer obj, Pointer<Int32> plPos,
    Pointer<Int32> plLength, COMObject pstream, int lStart, int lEnd);

typedef _Clone_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppResult);
typedef _Clone_Dart = int Function(Pointer obj, Pointer<COMObject> ppResult);

typedef _SetInfo_Native = Int32 Function(
    Pointer obj, Pointer<AVISTREAMINFO> lpInfo, Int32 cbInfo);
typedef _SetInfo_Dart = int Function(
    Pointer obj, Pointer<AVISTREAMINFO> lpInfo, int cbInfo);

/// {@category Interface}
/// {@category com}
class IAVIEditStream extends IUnknown {
  // vtable begins at 3, ends at 7

  IAVIEditStream(Pointer<COMObject> ptr) : super(ptr);

  int Cut(Pointer<Int32> plStart, Pointer<Int32> plLength,
          Pointer<COMObject> ppResult) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<Pointer<NativeFunction<_Cut_Native>>>()
          .value
          .asFunction<_Cut_Dart>()(ptr.ref.lpVtbl, plStart, plLength, ppResult);

  int Copy(Pointer<Int32> plStart, Pointer<Int32> plLength,
          Pointer<COMObject> ppResult) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_Copy_Native>>>()
              .value
              .asFunction<_Copy_Dart>()(
          ptr.ref.lpVtbl, plStart, plLength, ppResult);

  int Paste(Pointer<Int32> plPos, Pointer<Int32> plLength, COMObject pstream,
          int lStart, int lEnd) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_Paste_Native>>>()
              .value
              .asFunction<_Paste_Dart>()(
          ptr.ref.lpVtbl, plPos, plLength, pstream, lStart, lEnd);

  int Clone(Pointer<COMObject> ppResult) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_Clone_Native>>>()
      .value
      .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppResult);

  int SetInfo(Pointer<AVISTREAMINFO> lpInfo, int cbInfo) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_SetInfo_Native>>>()
      .value
      .asFunction<_SetInfo_Dart>()(ptr.ref.lpVtbl, lpInfo, cbInfo);
}

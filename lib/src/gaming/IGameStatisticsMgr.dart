// IGameStatisticsMgr.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../system/com/IUnknown.dart';
import '../foundation/structs.g.dart';
import '../gaming/structs.g.dart';
import '../gaming/IGameStatistics.dart';

/// @nodoc
const IID_IGameStatisticsMgr = '{AFF3EA11-E70E-407D-95DD-35E612C41CE2}';

/// {@category Interface}
/// {@category com}
class IGameStatisticsMgr extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IGameStatisticsMgr(Pointer<COMObject> ptr) : super(ptr);

  int GetGameStatistics(
    Pointer<Utf16> GDFBinaryPath,
    int openType,
    Pointer<Int32> pOpenResult,
    Pointer<Pointer<COMObject>> ppiStats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> GDFBinaryPath,
            Int32 openType,
            Pointer<Int32> pOpenResult,
            Pointer<Pointer<COMObject>> ppiStats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> GDFBinaryPath,
            int openType,
            Pointer<Int32> pOpenResult,
            Pointer<Pointer<COMObject>> ppiStats,
          )>()(
        ptr.ref.lpVtbl,
        GDFBinaryPath,
        openType,
        pOpenResult,
        ppiStats,
      );

  int RemoveGameStatistics(
    Pointer<Utf16> GDFBinaryPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> GDFBinaryPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> GDFBinaryPath,
          )>()(
        ptr.ref.lpVtbl,
        GDFBinaryPath,
      );
}

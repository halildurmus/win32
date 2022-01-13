// IWordBreakerConfig.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IWordBreakerConfig = '{8FA0D5A6-DEDF-11D0-9A61-00C04FB68BF7}';

/// {@category Interface}
/// {@category com}
class IWordBreakerConfig extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IWordBreakerConfig(Pointer<COMObject> ptr) : super(ptr);

  int SetLocaleInfo(
    int dwCodePageID,
    int lcid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCodePageID,
            Uint32 lcid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCodePageID,
            int lcid,
          )>()(
        ptr.ref.lpVtbl,
        dwCodePageID,
        lcid,
      );

  int GetLocaleInfo(
    Pointer<Uint32> pdwCodePageID,
    Pointer<Uint32> plcid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCodePageID,
            Pointer<Uint32> plcid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCodePageID,
            Pointer<Uint32> plcid,
          )>()(
        ptr.ref.lpVtbl,
        pdwCodePageID,
        plcid,
      );

  int SetBreakWordType(
    int dwBreakWordType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBreakWordType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBreakWordType,
          )>()(
        ptr.ref.lpVtbl,
        dwBreakWordType,
      );

  int GetBreakWordType(
    Pointer<Uint32> pdwBreakWordType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwBreakWordType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwBreakWordType,
          )>()(
        ptr.ref.lpVtbl,
        pdwBreakWordType,
      );

  int SetControlInfo(
    int grfBreakFlags,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfBreakFlags,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfBreakFlags,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        grfBreakFlags,
        dwReserved,
      );

  int GetControlInfo(
    Pointer<Uint32> pgrfBreakFlags,
    Pointer<Uint32> pdwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pgrfBreakFlags,
            Pointer<Uint32> pdwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pgrfBreakFlags,
            Pointer<Uint32> pdwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pgrfBreakFlags,
        pdwReserved,
      );

  int LoadExternalBreakerData(
    Pointer<COMObject> pStream,
    int dwExtDataType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Uint32 dwExtDataType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            int dwExtDataType,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        dwExtDataType,
      );

  int SetWordStemmer(
    Pointer<GUID> rclsid,
    Pointer<COMObject> pStemmer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<COMObject> pStemmer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<COMObject> pStemmer,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        pStemmer,
      );

  int GetWordStemmer(
    Pointer<Pointer<COMObject>> ppStemmer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStemmer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStemmer,
          )>()(
        ptr.ref.lpVtbl,
        ppStemmer,
      );
}

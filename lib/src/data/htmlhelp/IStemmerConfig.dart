// IStemmerConfig.dart

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
const IID_IStemmerConfig = '{8FA0D5A7-DEDF-11D0-9A61-00C04FB68BF7}';

/// {@category Interface}
/// {@category com}
class IStemmerConfig extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IStemmerConfig(Pointer<COMObject> ptr) : super(ptr);

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

  int SetControlInfo(
    int grfStemFlags,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfStemFlags,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfStemFlags,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        grfStemFlags,
        dwReserved,
      );

  int GetControlInfo(
    Pointer<Uint32> pgrfStemFlags,
    Pointer<Uint32> pdwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pgrfStemFlags,
            Pointer<Uint32> pdwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pgrfStemFlags,
            Pointer<Uint32> pdwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pgrfStemFlags,
        pdwReserved,
      );

  int LoadExternalStemmerData(
    Pointer<COMObject> pStream,
    int dwExtDataType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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
}

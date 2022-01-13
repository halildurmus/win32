// IMILBitmapEffectConnectorInfo.dart

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

/// @nodoc
const IID_IMILBitmapEffectConnectorInfo =
    '{F66D2E4B-B46B-42FC-859E-3DA0ECDB3C43}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectConnectorInfo extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMILBitmapEffectConnectorInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetIndex(
    Pointer<Uint32> puiIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiIndex,
          )>()(
        ptr.ref.lpVtbl,
        puiIndex,
      );

  int GetOptimalFormat(
    Pointer<GUID> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
      );

  int GetNumberFormats(
    Pointer<Uint32> pulNumberFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulNumberFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulNumberFormats,
          )>()(
        ptr.ref.lpVtbl,
        pulNumberFormats,
      );

  int GetFormat(
    int ulIndex,
    Pointer<GUID> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulIndex,
            Pointer<GUID> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulIndex,
            Pointer<GUID> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        ulIndex,
        pFormat,
      );
}

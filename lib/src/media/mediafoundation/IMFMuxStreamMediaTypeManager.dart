// IMFMuxStreamMediaTypeManager.dart

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
import '../../media/mediafoundation/IMFMediaType.dart';

/// @nodoc
const IID_IMFMuxStreamMediaTypeManager =
    '{505A2C72-42F7-4690-AEAB-8F513D0FFDB8}';

/// {@category Interface}
/// {@category com}
class IMFMuxStreamMediaTypeManager extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFMuxStreamMediaTypeManager(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamCount(
    Pointer<Uint32> pdwMuxStreamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMuxStreamCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMuxStreamCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwMuxStreamCount,
      );

  int GetMediaType(
    int dwMuxStreamIndex,
    Pointer<Pointer<COMObject>> ppMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMuxStreamIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMuxStreamIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwMuxStreamIndex,
        ppMediaType,
      );

  int GetStreamConfigurationCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int AddStreamConfiguration(
    int ullStreamMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullStreamMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullStreamMask,
          )>()(
        ptr.ref.lpVtbl,
        ullStreamMask,
      );

  int RemoveStreamConfiguration(
    int ullStreamMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullStreamMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullStreamMask,
          )>()(
        ptr.ref.lpVtbl,
        ullStreamMask,
      );

  int GetStreamConfiguration(
    int ulIndex,
    Pointer<Uint64> pullStreamMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulIndex,
            Pointer<Uint64> pullStreamMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulIndex,
            Pointer<Uint64> pullStreamMask,
          )>()(
        ptr.ref.lpVtbl,
        ulIndex,
        pullStreamMask,
      );
}

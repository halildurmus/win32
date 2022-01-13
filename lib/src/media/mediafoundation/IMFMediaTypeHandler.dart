// IMFMediaTypeHandler.dart

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
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaTypeHandler = '{E93DCF6C-4B07-4E1E-8123-AA16ED6EADF5}';

/// {@category Interface}
/// {@category com}
class IMFMediaTypeHandler extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFMediaTypeHandler(Pointer<COMObject> ptr) : super(ptr);

  int IsMediaTypeSupported(
    Pointer<COMObject> pMediaType,
    Pointer<Pointer<COMObject>> ppMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMediaType,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMediaType,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>()(
        ptr.ref.lpVtbl,
        pMediaType,
        ppMediaType,
      );

  int GetMediaTypeCount(
    Pointer<Uint32> pdwTypeCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwTypeCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwTypeCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwTypeCount,
      );

  int GetMediaTypeByIndex(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppType,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppType,
      );

  int SetCurrentMediaType(
    Pointer<COMObject> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        pMediaType,
      );

  int GetCurrentMediaType(
    Pointer<Pointer<COMObject>> ppMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>()(
        ptr.ref.lpVtbl,
        ppMediaType,
      );

  int GetMajorType(
    Pointer<GUID> pguidMajorType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidMajorType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidMajorType,
          )>()(
        ptr.ref.lpVtbl,
        pguidMajorType,
      );
}

// IEncoderAPI.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IEncoderAPI = '{70423839-6ACC-4B23-B079-21DBF08156A5}';

/// {@category Interface}
/// {@category com}
class IEncoderAPI extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IEncoderAPI(Pointer<COMObject> ptr) : super(ptr);

  int IsSupported(
    Pointer<GUID> Api,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
          )>()(
        ptr.ref.lpVtbl,
        Api,
      );

  int IsAvailable(
    Pointer<GUID> Api,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
          )>()(
        ptr.ref.lpVtbl,
        Api,
      );

  int GetParameterRange(
    Pointer<GUID> Api,
    Pointer<VARIANT> ValueMin,
    Pointer<VARIANT> ValueMax,
    Pointer<VARIANT> SteppingDelta,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> ValueMin,
            Pointer<VARIANT> ValueMax,
            Pointer<VARIANT> SteppingDelta,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> ValueMin,
            Pointer<VARIANT> ValueMax,
            Pointer<VARIANT> SteppingDelta,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        ValueMin,
        ValueMax,
        SteppingDelta,
      );

  int GetParameterValues(
    Pointer<GUID> Api,
    Pointer<Pointer<VARIANT>> Values,
    Pointer<Uint32> ValuesCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<Pointer<VARIANT>> Values,
            Pointer<Uint32> ValuesCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<Pointer<VARIANT>> Values,
            Pointer<Uint32> ValuesCount,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        Values,
        ValuesCount,
      );

  int GetDefaultValue(
    Pointer<GUID> Api,
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        Value,
      );

  int GetValue(
    Pointer<GUID> Api,
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        Value,
      );

  int SetValue(
    Pointer<GUID> Api,
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> Api,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        Api,
        Value,
      );
}

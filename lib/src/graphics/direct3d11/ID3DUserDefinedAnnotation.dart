// ID3DUserDefinedAnnotation.dart

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
const IID_ID3DUserDefinedAnnotation = '{B2DAAD8B-03D4-4DBF-95EB-32AB4B63D0AB}';

/// {@category Interface}
/// {@category com}
class ID3DUserDefinedAnnotation extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ID3DUserDefinedAnnotation(Pointer<COMObject> ptr) : super(ptr);

  int BeginEvent(
    Pointer<Utf16> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );

  int EndEvent() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void SetMarker(
    Pointer<Utf16> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> Name,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );

  int GetStatus() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}

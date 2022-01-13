// IMFMediaEngineSrcElementsEx.dart

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

import '../../media/mediafoundation/IMFMediaEngineSrcElements.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaEngineSrcElementsEx =
    '{654A6BB3-E1A3-424A-9908-53A43A0DFDA0}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineSrcElementsEx extends IMFMediaEngineSrcElements {
  // vtable begins at 9, is 2 entries long.
  IMFMediaEngineSrcElementsEx(Pointer<COMObject> ptr) : super(ptr);

  int AddElementEx(
    Pointer<Utf16> pURL,
    Pointer<Utf16> pType,
    Pointer<Utf16> pMedia,
    Pointer<Utf16> keySystem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pURL,
            Pointer<Utf16> pType,
            Pointer<Utf16> pMedia,
            Pointer<Utf16> keySystem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pURL,
            Pointer<Utf16> pType,
            Pointer<Utf16> pMedia,
            Pointer<Utf16> keySystem,
          )>()(
        ptr.ref.lpVtbl,
        pURL,
        pType,
        pMedia,
        keySystem,
      );

  int GetKeySystem(
    int index,
    Pointer<Pointer<Utf16>> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<Utf16>> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<Utf16>> pType,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pType,
      );
}

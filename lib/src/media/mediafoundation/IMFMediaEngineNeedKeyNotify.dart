// IMFMediaEngineNeedKeyNotify.dart

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

/// @nodoc
const IID_IMFMediaEngineNeedKeyNotify =
    '{46A30204-A696-4B18-8804-246B8F031BB1}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineNeedKeyNotify extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFMediaEngineNeedKeyNotify(Pointer<COMObject> ptr) : super(ptr);

  void NeedKey(
    Pointer<Uint8> initData,
    int cb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Uint8> initData,
            Uint32 cb,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Uint8> initData,
            int cb,
          )>()(
        ptr.ref.lpVtbl,
        initData,
        cb,
      );
}

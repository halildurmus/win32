// ITfFunctionProvider.dart

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
const IID_ITfFunctionProvider = '{101D6610-0990-11D3-8DF0-00105A2799B5}';

/// {@category Interface}
/// {@category com}
class ITfFunctionProvider extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITfFunctionProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetType(
    Pointer<GUID> pguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguid,
          )>()(
        ptr.ref.lpVtbl,
        pguid,
      );

  int GetDescription(
    Pointer<Pointer<Utf16>> pbstrDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDesc,
          )>()(
        ptr.ref.lpVtbl,
        pbstrDesc,
      );

  int GetFunction(
    Pointer<GUID> rguid,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguid,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        rguid,
        riid,
        ppunk,
      );
}

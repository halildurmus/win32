// ICreateObject.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICreateObject = '{75121952-E0D0-43E5-9380-1D80483ACF72}';

/// {@category Interface}
/// {@category com}
class ICreateObject extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICreateObject(Pointer<COMObject> ptr) : super(ptr);

  int CreateObject(
    Pointer<GUID> clsid,
    Pointer<COMObject> pUnkOuter,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<COMObject> pUnkOuter,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<COMObject> pUnkOuter,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        pUnkOuter,
        riid,
        ppv,
      );
}

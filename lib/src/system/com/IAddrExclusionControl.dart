// IAddrExclusionControl.dart

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
const IID_IAddrExclusionControl = '{00000148-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IAddrExclusionControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAddrExclusionControl(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrentAddrExclusionList(
    Pointer<GUID> riid,
    Pointer<Pointer> ppEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppEnumerator,
      );

  int UpdateAddrExclusionList(
    Pointer<COMObject> pEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        pEnumerator,
      );
}

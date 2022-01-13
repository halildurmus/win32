// IEnumDebugPropertyInfo.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IEnumDebugPropertyInfo.dart';

/// @nodoc
const IID_IEnumDebugPropertyInfo = '{51973C51-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IEnumDebugPropertyInfo extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IEnumDebugPropertyInfo(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int celt,
    Pointer<DebugPropertyInfo> pi,
    Pointer<Uint32> pcEltsfetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
            Pointer<DebugPropertyInfo> pi,
            Pointer<Uint32> pcEltsfetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<DebugPropertyInfo> pi,
            Pointer<Uint32> pcEltsfetched,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        pi,
        pcEltsfetched,
      );

  int Skip(
    int celt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
          )>()(
        ptr.ref.lpVtbl,
        celt,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Clone(
    Pointer<Pointer<COMObject>> ppepi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppepi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppepi,
          )>()(
        ptr.ref.lpVtbl,
        ppepi,
      );

  int GetCount(
    Pointer<Uint32> pcelt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcelt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcelt,
          )>()(
        ptr.ref.lpVtbl,
        pcelt,
      );
}

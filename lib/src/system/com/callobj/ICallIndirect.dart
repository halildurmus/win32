// ICallIndirect.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/com/callobj/structs.g.dart';

/// @nodoc
const IID_ICallIndirect = '{D573B4B1-894E-11D2-B8B6-00C04FB9618A}';

/// {@category Interface}
/// {@category com}
class ICallIndirect extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ICallIndirect(Pointer<COMObject> ptr) : super(ptr);

  int CallIndirect(
    Pointer<Int32> phrReturn,
    int iMethod,
    Pointer pvArgs,
    Pointer<Uint32> cbArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phrReturn,
            Uint32 iMethod,
            Pointer pvArgs,
            Pointer<Uint32> cbArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phrReturn,
            int iMethod,
            Pointer pvArgs,
            Pointer<Uint32> cbArgs,
          )>()(
        ptr.ref.lpVtbl,
        phrReturn,
        iMethod,
        pvArgs,
        cbArgs,
      );

  int GetMethodInfo(
    int iMethod,
    Pointer<CALLFRAMEINFO> pInfo,
    Pointer<Pointer<Utf16>> pwszMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iMethod,
            Pointer<CALLFRAMEINFO> pInfo,
            Pointer<Pointer<Utf16>> pwszMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iMethod,
            Pointer<CALLFRAMEINFO> pInfo,
            Pointer<Pointer<Utf16>> pwszMethod,
          )>()(
        ptr.ref.lpVtbl,
        iMethod,
        pInfo,
        pwszMethod,
      );

  int GetStackSize(
    int iMethod,
    Pointer<Uint32> cbArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iMethod,
            Pointer<Uint32> cbArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iMethod,
            Pointer<Uint32> cbArgs,
          )>()(
        ptr.ref.lpVtbl,
        iMethod,
        cbArgs,
      );

  int GetIID(
    Pointer<GUID> piid,
    Pointer<Int32> pfDerivesFromIDispatch,
    Pointer<Uint32> pcMethod,
    Pointer<Pointer<Utf16>> pwszInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> piid,
            Pointer<Int32> pfDerivesFromIDispatch,
            Pointer<Uint32> pcMethod,
            Pointer<Pointer<Utf16>> pwszInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> piid,
            Pointer<Int32> pfDerivesFromIDispatch,
            Pointer<Uint32> pcMethod,
            Pointer<Pointer<Utf16>> pwszInterface,
          )>()(
        ptr.ref.lpVtbl,
        piid,
        pfDerivesFromIDispatch,
        pcMethod,
        pwszInterface,
      );
}

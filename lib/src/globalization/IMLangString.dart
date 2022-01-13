// IMLangString.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../system/com/IUnknown.dart';
import '../foundation/structs.g.dart';
import '../specialTypes.dart';

/// @nodoc
const IID_IMLangString = '{C04D65CE-B70D-11D0-B188-00AA0038C969}';

/// {@category Interface}
/// {@category com}
class IMLangString extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMLangString(Pointer<COMObject> ptr) : super(ptr);

  int Sync(
    int fNoAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fNoAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fNoAccess,
          )>()(
        ptr.ref.lpVtbl,
        fNoAccess,
      );

  int GetLength(
    Pointer<Int32> plLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plLen,
          )>()(
        ptr.ref.lpVtbl,
        plLen,
      );

  int SetMLStr(
    int lDestPos,
    int lDestLen,
    Pointer<COMObject> pSrcMLStr,
    int lSrcPos,
    int lSrcLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lDestPos,
            Int32 lDestLen,
            Pointer<COMObject> pSrcMLStr,
            Int32 lSrcPos,
            Int32 lSrcLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lDestPos,
            int lDestLen,
            Pointer<COMObject> pSrcMLStr,
            int lSrcPos,
            int lSrcLen,
          )>()(
        ptr.ref.lpVtbl,
        lDestPos,
        lDestLen,
        pSrcMLStr,
        lSrcPos,
        lSrcLen,
      );

  int GetMLStr(
    int lSrcPos,
    int lSrcLen,
    Pointer<COMObject> pUnkOuter,
    int dwClsContext,
    Pointer<GUID> piid,
    Pointer<Pointer<COMObject>> ppDestMLStr,
    Pointer<Int32> plDestPos,
    Pointer<Int32> plDestLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lSrcPos,
            Int32 lSrcLen,
            Pointer<COMObject> pUnkOuter,
            Uint32 dwClsContext,
            Pointer<GUID> piid,
            Pointer<Pointer<COMObject>> ppDestMLStr,
            Pointer<Int32> plDestPos,
            Pointer<Int32> plDestLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lSrcPos,
            int lSrcLen,
            Pointer<COMObject> pUnkOuter,
            int dwClsContext,
            Pointer<GUID> piid,
            Pointer<Pointer<COMObject>> ppDestMLStr,
            Pointer<Int32> plDestPos,
            Pointer<Int32> plDestLen,
          )>()(
        ptr.ref.lpVtbl,
        lSrcPos,
        lSrcLen,
        pUnkOuter,
        dwClsContext,
        piid,
        ppDestMLStr,
        plDestPos,
        plDestLen,
      );
}

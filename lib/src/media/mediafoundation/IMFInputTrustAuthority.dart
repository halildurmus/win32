// IMFInputTrustAuthority.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFActivate.dart';
import '../../media/mediafoundation/IMFOutputPolicy.dart';

/// @nodoc
const IID_IMFInputTrustAuthority = '{D19F8E98-B126-4446-890C-5DCB7AD71453}';

/// {@category Interface}
/// {@category com}
class IMFInputTrustAuthority extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFInputTrustAuthority(Pointer<COMObject> ptr) : super(ptr);

  int GetDecrypter(
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
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );

  int RequestAccess(
    int Action,
    Pointer<Pointer<COMObject>> ppContentEnablerActivate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Action,
            Pointer<Pointer<COMObject>> ppContentEnablerActivate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Action,
            Pointer<Pointer<COMObject>> ppContentEnablerActivate,
          )>()(
        ptr.ref.lpVtbl,
        Action,
        ppContentEnablerActivate,
      );

  int GetPolicy(
    int Action,
    Pointer<Pointer<COMObject>> ppPolicy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Action,
            Pointer<Pointer<COMObject>> ppPolicy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Action,
            Pointer<Pointer<COMObject>> ppPolicy,
          )>()(
        ptr.ref.lpVtbl,
        Action,
        ppPolicy,
      );

  int BindAccess(
    Pointer<MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS> pParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS> pParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS> pParam,
          )>()(
        ptr.ref.lpVtbl,
        pParam,
      );

  int UpdateAccess(
    Pointer<MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS> pParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS> pParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS> pParam,
          )>()(
        ptr.ref.lpVtbl,
        pParam,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

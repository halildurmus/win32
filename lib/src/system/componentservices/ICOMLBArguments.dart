// ICOMLBArguments.dart

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
const IID_ICOMLBArguments = '{3A0F150F-8EE5-4B94-B40E-AEF2F9E42ED2}';

/// {@category Interface}
/// {@category com}
class ICOMLBArguments extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ICOMLBArguments(Pointer<COMObject> ptr) : super(ptr);

  int GetCLSID(
    Pointer<GUID> pCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCLSID,
          )>()(
        ptr.ref.lpVtbl,
        pCLSID,
      );

  int SetCLSID(
    Pointer<GUID> pCLSID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCLSID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCLSID,
          )>()(
        ptr.ref.lpVtbl,
        pCLSID,
      );

  int GetMachineName(
    int cchSvr,
    Pointer<Utf16> szServerName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchSvr,
            Pointer<Utf16> szServerName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchSvr,
            Pointer<Utf16> szServerName,
          )>()(
        ptr.ref.lpVtbl,
        cchSvr,
        szServerName,
      );

  int SetMachineName(
    int cchSvr,
    Pointer<Utf16> szServerName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchSvr,
            Pointer<Utf16> szServerName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchSvr,
            Pointer<Utf16> szServerName,
          )>()(
        ptr.ref.lpVtbl,
        cchSvr,
        szServerName,
      );
}

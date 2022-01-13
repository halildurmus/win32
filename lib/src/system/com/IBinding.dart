// IBinding.dart

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
const IID_IBinding = '{79EAC9C0-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IBinding extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IBinding(Pointer<COMObject> ptr) : super(ptr);

  int Abort() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Suspend() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Resume() => ptr.ref.lpVtbl.value
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

  int SetPriority(
    int nPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nPriority,
          )>()(
        ptr.ref.lpVtbl,
        nPriority,
      );

  int GetPriority(
    Pointer<Int32> pnPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnPriority,
          )>()(
        ptr.ref.lpVtbl,
        pnPriority,
      );

  int GetBindResult(
    Pointer<GUID> pclsidProtocol,
    Pointer<Uint32> pdwResult,
    Pointer<Pointer<Utf16>> pszResult,
    Pointer<Uint32> pdwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pclsidProtocol,
            Pointer<Uint32> pdwResult,
            Pointer<Pointer<Utf16>> pszResult,
            Pointer<Uint32> pdwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pclsidProtocol,
            Pointer<Uint32> pdwResult,
            Pointer<Pointer<Utf16>> pszResult,
            Pointer<Uint32> pdwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pclsidProtocol,
        pdwResult,
        pszResult,
        pdwReserved,
      );
}

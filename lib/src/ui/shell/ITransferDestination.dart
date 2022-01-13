// ITransferDestination.dart

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
import '../../ui/shell/ITransferAdviseSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITransferDestination = '{48ADDD32-3CA5-4124-ABE3-B5A72531B207}';

/// {@category Interface}
/// {@category com}
class ITransferDestination extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITransferDestination(Pointer<COMObject> ptr) : super(ptr);

  int Advise(
    Pointer<COMObject> psink,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psink,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psink,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        psink,
        pdwCookie,
      );

  int Unadvise(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );

  int CreateItem(
    Pointer<Utf16> pszName,
    int dwAttributes,
    int ullSize,
    int flags,
    Pointer<GUID> riidItem,
    Pointer<Pointer> ppvItem,
    Pointer<GUID> riidResources,
    Pointer<Pointer> ppvResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Uint32 dwAttributes,
            Uint64 ullSize,
            Uint32 flags,
            Pointer<GUID> riidItem,
            Pointer<Pointer> ppvItem,
            Pointer<GUID> riidResources,
            Pointer<Pointer> ppvResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            int dwAttributes,
            int ullSize,
            int flags,
            Pointer<GUID> riidItem,
            Pointer<Pointer> ppvItem,
            Pointer<GUID> riidResources,
            Pointer<Pointer> ppvResources,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        dwAttributes,
        ullSize,
        flags,
        riidItem,
        ppvItem,
        riidResources,
        ppvResources,
      );
}

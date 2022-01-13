// AsyncIAssociatedIdentityProvider.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../../combase.dart';
import '../../../../constants.dart';
import '../../../../exceptions.dart';
import '../../../../guid.dart';
import '../../../../macros.dart';
import '../../../../ole32.dart';
import '../../../../utils.dart';

import '../../../../system/com/IUnknown.dart';
import '../../../../foundation/structs.g.dart';
import '../../../../ui/shell/propertiessystem/IPropertyStore.dart';

/// @nodoc
const IID_AsyncIAssociatedIdentityProvider =
    '{2834D6ED-297E-4E72-8A51-961E86F05152}';

/// {@category Interface}
/// {@category com}
class AsyncIAssociatedIdentityProvider extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  AsyncIAssociatedIdentityProvider(Pointer<COMObject> ptr) : super(ptr);

  int Begin_AssociateIdentity(
    int hwndParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
      );

  int Finish_AssociateIdentity(
    Pointer<Pointer<COMObject>> ppPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        ppPropertyStore,
      );

  int Begin_DisassociateIdentity(
    int hwndParent,
    Pointer<Utf16> lpszUniqueID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<Utf16> lpszUniqueID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<Utf16> lpszUniqueID,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        lpszUniqueID,
      );

  int Finish_DisassociateIdentity() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int Begin_ChangeCredential(
    int hwndParent,
    Pointer<Utf16> lpszUniqueID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<Utf16> lpszUniqueID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<Utf16> lpszUniqueID,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        lpszUniqueID,
      );

  int Finish_ChangeCredential() => ptr.ref.lpVtbl.value
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

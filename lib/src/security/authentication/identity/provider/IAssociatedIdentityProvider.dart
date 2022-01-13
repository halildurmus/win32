// IAssociatedIdentityProvider.dart

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
const IID_IAssociatedIdentityProvider =
    '{2AF066B3-4CBB-4CBA-A798-204B6AF68CC0}';

/// {@category Interface}
/// {@category com}
class IAssociatedIdentityProvider extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAssociatedIdentityProvider(Pointer<COMObject> ptr) : super(ptr);

  int AssociateIdentity(
    int hwndParent,
    Pointer<Pointer<COMObject>> ppPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<Pointer<COMObject>> ppPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<Pointer<COMObject>> ppPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        ppPropertyStore,
      );

  int DisassociateIdentity(
    int hwndParent,
    Pointer<Utf16> lpszUniqueID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int ChangeCredential(
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
}

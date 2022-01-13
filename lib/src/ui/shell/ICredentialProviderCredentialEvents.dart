// ICredentialProviderCredentialEvents.dart

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
import '../../ui/shell/ICredentialProviderCredential.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_ICredentialProviderCredentialEvents =
    '{FA6FA76B-66B7-4B11-95F1-86171118E816}';

/// {@category Interface}
/// {@category com}
class ICredentialProviderCredentialEvents extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  ICredentialProviderCredentialEvents(Pointer<COMObject> ptr) : super(ptr);

  int SetFieldState(
    Pointer<COMObject> pcpc,
    int dwFieldID,
    int cpfs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpc,
            Uint32 dwFieldID,
            Int32 cpfs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpc,
            int dwFieldID,
            int cpfs,
          )>()(
        ptr.ref.lpVtbl,
        pcpc,
        dwFieldID,
        cpfs,
      );

  int SetFieldInteractiveState(
    Pointer<COMObject> pcpc,
    int dwFieldID,
    int cpfis,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpc,
            Uint32 dwFieldID,
            Int32 cpfis,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpc,
            int dwFieldID,
            int cpfis,
          )>()(
        ptr.ref.lpVtbl,
        pcpc,
        dwFieldID,
        cpfis,
      );

  int SetFieldString(
    Pointer<COMObject> pcpc,
    int dwFieldID,
    Pointer<Utf16> psz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpc,
            Uint32 dwFieldID,
            Pointer<Utf16> psz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpc,
            int dwFieldID,
            Pointer<Utf16> psz,
          )>()(
        ptr.ref.lpVtbl,
        pcpc,
        dwFieldID,
        psz,
      );

  int SetFieldCheckbox(
    Pointer<COMObject> pcpc,
    int dwFieldID,
    int bChecked,
    Pointer<Utf16> pszLabel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpc,
            Uint32 dwFieldID,
            Int32 bChecked,
            Pointer<Utf16> pszLabel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpc,
            int dwFieldID,
            int bChecked,
            Pointer<Utf16> pszLabel,
          )>()(
        ptr.ref.lpVtbl,
        pcpc,
        dwFieldID,
        bChecked,
        pszLabel,
      );

  int SetFieldBitmap(
    Pointer<COMObject> pcpc,
    int dwFieldID,
    int hbmp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpc,
            Uint32 dwFieldID,
            IntPtr hbmp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpc,
            int dwFieldID,
            int hbmp,
          )>()(
        ptr.ref.lpVtbl,
        pcpc,
        dwFieldID,
        hbmp,
      );

  int SetFieldComboBoxSelectedItem(
    Pointer<COMObject> pcpc,
    int dwFieldID,
    int dwSelectedItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpc,
            Uint32 dwFieldID,
            Uint32 dwSelectedItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpc,
            int dwFieldID,
            int dwSelectedItem,
          )>()(
        ptr.ref.lpVtbl,
        pcpc,
        dwFieldID,
        dwSelectedItem,
      );

  int DeleteFieldComboBoxItem(
    Pointer<COMObject> pcpc,
    int dwFieldID,
    int dwItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpc,
            Uint32 dwFieldID,
            Uint32 dwItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpc,
            int dwFieldID,
            int dwItem,
          )>()(
        ptr.ref.lpVtbl,
        pcpc,
        dwFieldID,
        dwItem,
      );

  int AppendFieldComboBoxItem(
    Pointer<COMObject> pcpc,
    int dwFieldID,
    Pointer<Utf16> pszItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpc,
            Uint32 dwFieldID,
            Pointer<Utf16> pszItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpc,
            int dwFieldID,
            Pointer<Utf16> pszItem,
          )>()(
        ptr.ref.lpVtbl,
        pcpc,
        dwFieldID,
        pszItem,
      );

  int SetFieldSubmitButton(
    Pointer<COMObject> pcpc,
    int dwFieldID,
    int dwAdjacentTo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpc,
            Uint32 dwFieldID,
            Uint32 dwAdjacentTo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpc,
            int dwFieldID,
            int dwAdjacentTo,
          )>()(
        ptr.ref.lpVtbl,
        pcpc,
        dwFieldID,
        dwAdjacentTo,
      );

  int OnCreatingWindow(
    Pointer<IntPtr> phwndOwner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwndOwner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwndOwner,
          )>()(
        ptr.ref.lpVtbl,
        phwndOwner,
      );
}

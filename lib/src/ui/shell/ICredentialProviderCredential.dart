// ICredentialProviderCredential.dart

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
import '../../ui/shell/ICredentialProviderCredentialEvents.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_ICredentialProviderCredential =
    '{63913A93-40C1-481A-818D-4072FF8C70CC}';

/// {@category Interface}
/// {@category com}
class ICredentialProviderCredential extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  ICredentialProviderCredential(Pointer<COMObject> ptr) : super(ptr);

  int Advise(
    Pointer<COMObject> pcpce,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pcpce,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pcpce,
          )>()(
        ptr.ref.lpVtbl,
        pcpce,
      );

  int UnAdvise() => ptr.ref.lpVtbl.value
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

  int SetSelected(
    Pointer<Int32> pbAutoLogon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbAutoLogon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbAutoLogon,
          )>()(
        ptr.ref.lpVtbl,
        pbAutoLogon,
      );

  int SetDeselected() => ptr.ref.lpVtbl.value
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

  int GetFieldState(
    int dwFieldID,
    Pointer<Int32> pcpfs,
    Pointer<Int32> pcpfis,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldID,
            Pointer<Int32> pcpfs,
            Pointer<Int32> pcpfis,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldID,
            Pointer<Int32> pcpfs,
            Pointer<Int32> pcpfis,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldID,
        pcpfs,
        pcpfis,
      );

  int GetStringValue(
    int dwFieldID,
    Pointer<Pointer<Utf16>> ppsz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldID,
            Pointer<Pointer<Utf16>> ppsz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldID,
            Pointer<Pointer<Utf16>> ppsz,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldID,
        ppsz,
      );

  int GetBitmapValue(
    int dwFieldID,
    Pointer<IntPtr> phbmp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldID,
            Pointer<IntPtr> phbmp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldID,
            Pointer<IntPtr> phbmp,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldID,
        phbmp,
      );

  int GetCheckboxValue(
    int dwFieldID,
    Pointer<Int32> pbChecked,
    Pointer<Pointer<Utf16>> ppszLabel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldID,
            Pointer<Int32> pbChecked,
            Pointer<Pointer<Utf16>> ppszLabel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldID,
            Pointer<Int32> pbChecked,
            Pointer<Pointer<Utf16>> ppszLabel,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldID,
        pbChecked,
        ppszLabel,
      );

  int GetSubmitButtonValue(
    int dwFieldID,
    Pointer<Uint32> pdwAdjacentTo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldID,
            Pointer<Uint32> pdwAdjacentTo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldID,
            Pointer<Uint32> pdwAdjacentTo,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldID,
        pdwAdjacentTo,
      );

  int GetComboBoxValueCount(
    int dwFieldID,
    Pointer<Uint32> pcItems,
    Pointer<Uint32> pdwSelectedItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldID,
            Pointer<Uint32> pcItems,
            Pointer<Uint32> pdwSelectedItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldID,
            Pointer<Uint32> pcItems,
            Pointer<Uint32> pdwSelectedItem,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldID,
        pcItems,
        pdwSelectedItem,
      );

  int GetComboBoxValueAt(
    int dwFieldID,
    int dwItem,
    Pointer<Pointer<Utf16>> ppszItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldID,
            Uint32 dwItem,
            Pointer<Pointer<Utf16>> ppszItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldID,
            int dwItem,
            Pointer<Pointer<Utf16>> ppszItem,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldID,
        dwItem,
        ppszItem,
      );

  int SetStringValue(
    int dwFieldID,
    Pointer<Utf16> psz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldID,
            Pointer<Utf16> psz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldID,
            Pointer<Utf16> psz,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldID,
        psz,
      );

  int SetCheckboxValue(
    int dwFieldID,
    int bChecked,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldID,
            Int32 bChecked,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldID,
            int bChecked,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldID,
        bChecked,
      );

  int SetComboBoxSelectedValue(
    int dwFieldID,
    int dwSelectedItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldID,
            Uint32 dwSelectedItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldID,
            int dwSelectedItem,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldID,
        dwSelectedItem,
      );

  int CommandLinkClicked(
    int dwFieldID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldID,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldID,
      );

  int GetSerialization(
    Pointer<Int32> pcpgsr,
    Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcs,
    Pointer<Pointer<Utf16>> ppszOptionalStatusText,
    Pointer<Int32> pcpsiOptionalStatusIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcpgsr,
            Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcs,
            Pointer<Pointer<Utf16>> ppszOptionalStatusText,
            Pointer<Int32> pcpsiOptionalStatusIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcpgsr,
            Pointer<CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION> pcpcs,
            Pointer<Pointer<Utf16>> ppszOptionalStatusText,
            Pointer<Int32> pcpsiOptionalStatusIcon,
          )>()(
        ptr.ref.lpVtbl,
        pcpgsr,
        pcpcs,
        ppszOptionalStatusText,
        pcpsiOptionalStatusIcon,
      );

  int ReportResult(
    int ntsStatus,
    int ntsSubstatus,
    Pointer<Pointer<Utf16>> ppszOptionalStatusText,
    Pointer<Int32> pcpsiOptionalStatusIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ntsStatus,
            Int32 ntsSubstatus,
            Pointer<Pointer<Utf16>> ppszOptionalStatusText,
            Pointer<Int32> pcpsiOptionalStatusIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ntsStatus,
            int ntsSubstatus,
            Pointer<Pointer<Utf16>> ppszOptionalStatusText,
            Pointer<Int32> pcpsiOptionalStatusIcon,
          )>()(
        ptr.ref.lpVtbl,
        ntsStatus,
        ntsSubstatus,
        ppszOptionalStatusText,
        pcpsiOptionalStatusIcon,
      );
}

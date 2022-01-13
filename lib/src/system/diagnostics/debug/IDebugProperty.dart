// IDebugProperty.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/diagnostics/debug/IEnumDebugPropertyInfo.dart';
import '../../../system/diagnostics/debug/IDebugProperty.dart';

/// @nodoc
const IID_IDebugProperty = '{51973C50-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugProperty extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDebugProperty(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyInfo(
    int dwFieldSpec,
    int nRadix,
    Pointer<DebugPropertyInfo> pPropertyInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldSpec,
            Uint32 nRadix,
            Pointer<DebugPropertyInfo> pPropertyInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldSpec,
            int nRadix,
            Pointer<DebugPropertyInfo> pPropertyInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldSpec,
        nRadix,
        pPropertyInfo,
      );

  int GetExtendedInfo(
    int cInfos,
    Pointer<GUID> rgguidExtendedInfo,
    Pointer<VARIANT> rgvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cInfos,
            Pointer<GUID> rgguidExtendedInfo,
            Pointer<VARIANT> rgvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cInfos,
            Pointer<GUID> rgguidExtendedInfo,
            Pointer<VARIANT> rgvar,
          )>()(
        ptr.ref.lpVtbl,
        cInfos,
        rgguidExtendedInfo,
        rgvar,
      );

  int SetValueAsString(
    Pointer<Utf16> pszValue,
    int nRadix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszValue,
            Uint32 nRadix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszValue,
            int nRadix,
          )>()(
        ptr.ref.lpVtbl,
        pszValue,
        nRadix,
      );

  int EnumMembers(
    int dwFieldSpec,
    int nRadix,
    Pointer<GUID> refiid,
    Pointer<Pointer<COMObject>> ppepi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldSpec,
            Uint32 nRadix,
            Pointer<GUID> refiid,
            Pointer<Pointer<COMObject>> ppepi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldSpec,
            int nRadix,
            Pointer<GUID> refiid,
            Pointer<Pointer<COMObject>> ppepi,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldSpec,
        nRadix,
        refiid,
        ppepi,
      );

  int GetParent(
    Pointer<Pointer<COMObject>> ppDebugProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDebugProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDebugProp,
          )>()(
        ptr.ref.lpVtbl,
        ppDebugProp,
      );
}

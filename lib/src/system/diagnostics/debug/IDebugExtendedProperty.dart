// IDebugExtendedProperty.dart

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

import '../../../system/diagnostics/debug/IDebugProperty.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IEnumDebugExtendedPropertyInfo.dart';

/// @nodoc
const IID_IDebugExtendedProperty = '{51973C52-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugExtendedProperty extends IDebugProperty {
  // vtable begins at 8, is 2 entries long.
  IDebugExtendedProperty(Pointer<COMObject> ptr) : super(ptr);

  int GetExtendedPropertyInfo(
    int dwFieldSpec,
    int nRadix,
    Pointer<ExtendedDebugPropertyInfo> pExtendedPropertyInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldSpec,
            Uint32 nRadix,
            Pointer<ExtendedDebugPropertyInfo> pExtendedPropertyInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldSpec,
            int nRadix,
            Pointer<ExtendedDebugPropertyInfo> pExtendedPropertyInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldSpec,
        nRadix,
        pExtendedPropertyInfo,
      );

  int EnumExtendedMembers(
    int dwFieldSpec,
    int nRadix,
    Pointer<Pointer<COMObject>> ppeepi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFieldSpec,
            Uint32 nRadix,
            Pointer<Pointer<COMObject>> ppeepi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFieldSpec,
            int nRadix,
            Pointer<Pointer<COMObject>> ppeepi,
          )>()(
        ptr.ref.lpVtbl,
        dwFieldSpec,
        nRadix,
        ppeepi,
      );
}

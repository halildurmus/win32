// INetCfgComponentSysPrep.dart

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
import '../../networkmanagement/netmanagement/INetCfgSysPrep.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INetCfgComponentSysPrep = '{C0E8AE9A-306E-11D1-AACF-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetCfgComponentSysPrep extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  INetCfgComponentSysPrep(Pointer<COMObject> ptr) : super(ptr);

  int SaveAdapterParameters(
    Pointer<COMObject> pncsp,
    Pointer<Utf16> pszwAnswerSections,
    Pointer<GUID> pAdapterInstanceGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pncsp,
            Pointer<Utf16> pszwAnswerSections,
            Pointer<GUID> pAdapterInstanceGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pncsp,
            Pointer<Utf16> pszwAnswerSections,
            Pointer<GUID> pAdapterInstanceGuid,
          )>()(
        ptr.ref.lpVtbl,
        pncsp,
        pszwAnswerSections,
        pAdapterInstanceGuid,
      );

  int RestoreAdapterParameters(
    Pointer<Utf16> pszwAnswerFile,
    Pointer<Utf16> pszwAnswerSection,
    Pointer<GUID> pAdapterInstanceGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwAnswerFile,
            Pointer<Utf16> pszwAnswerSection,
            Pointer<GUID> pAdapterInstanceGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwAnswerFile,
            Pointer<Utf16> pszwAnswerSection,
            Pointer<GUID> pAdapterInstanceGuid,
          )>()(
        ptr.ref.lpVtbl,
        pszwAnswerFile,
        pszwAnswerSection,
        pAdapterInstanceGuid,
      );
}

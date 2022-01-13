// IEffectivePermission.dart

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
import '../../../foundation/structs.g.dart';
import '../../../security/structs.g.dart';

/// @nodoc
const IID_IEffectivePermission = '{3853DC76-9F35-407C-88A1-D19344365FBC}';

/// {@category Interface}
/// {@category com}
class IEffectivePermission extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IEffectivePermission(Pointer<COMObject> ptr) : super(ptr);

  int GetEffectivePermission(
    Pointer<GUID> pguidObjectType,
    int pUserSid,
    Pointer<Utf16> pszServerName,
    Pointer<SECURITY_DESCRIPTOR> pSD,
    Pointer<Pointer<OBJECT_TYPE_LIST>> ppObjectTypeList,
    Pointer<Uint32> pcObjectTypeListLength,
    Pointer<Pointer<Uint32>> ppGrantedAccessList,
    Pointer<Uint32> pcGrantedAccessListLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidObjectType,
            IntPtr pUserSid,
            Pointer<Utf16> pszServerName,
            Pointer<SECURITY_DESCRIPTOR> pSD,
            Pointer<Pointer<OBJECT_TYPE_LIST>> ppObjectTypeList,
            Pointer<Uint32> pcObjectTypeListLength,
            Pointer<Pointer<Uint32>> ppGrantedAccessList,
            Pointer<Uint32> pcGrantedAccessListLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidObjectType,
            int pUserSid,
            Pointer<Utf16> pszServerName,
            Pointer<SECURITY_DESCRIPTOR> pSD,
            Pointer<Pointer<OBJECT_TYPE_LIST>> ppObjectTypeList,
            Pointer<Uint32> pcObjectTypeListLength,
            Pointer<Pointer<Uint32>> ppGrantedAccessList,
            Pointer<Uint32> pcGrantedAccessListLength,
          )>()(
        ptr.ref.lpVtbl,
        pguidObjectType,
        pUserSid,
        pszServerName,
        pSD,
        ppObjectTypeList,
        pcObjectTypeListLength,
        ppGrantedAccessList,
        pcGrantedAccessListLength,
      );
}

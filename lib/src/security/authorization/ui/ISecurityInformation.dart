// ISecurityInformation.dart

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
import '../../../security/authorization/ui/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/structs.g.dart';
import '../../../ui/controls/structs.g.dart';

/// @nodoc
const IID_ISecurityInformation = '{965FC360-16FF-11D0-91CB-00AA00BBB723}';

/// {@category Interface}
/// {@category com}
class ISecurityInformation extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISecurityInformation(Pointer<COMObject> ptr) : super(ptr);

  int GetObjectInformation(
    Pointer<SI_OBJECT_INFO> pObjectInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SI_OBJECT_INFO> pObjectInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SI_OBJECT_INFO> pObjectInfo,
          )>()(
        ptr.ref.lpVtbl,
        pObjectInfo,
      );

  int GetSecurity(
    int RequestedInformation,
    Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
    int fDefault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 RequestedInformation,
            Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
            Int32 fDefault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RequestedInformation,
            Pointer<Pointer<SECURITY_DESCRIPTOR>> ppSecurityDescriptor,
            int fDefault,
          )>()(
        ptr.ref.lpVtbl,
        RequestedInformation,
        ppSecurityDescriptor,
        fDefault,
      );

  int SetSecurity(
    int SecurityInformation,
    Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 SecurityInformation,
            Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SecurityInformation,
            Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        SecurityInformation,
        pSecurityDescriptor,
      );

  int GetAccessRights(
    Pointer<GUID> pguidObjectType,
    int dwFlags,
    Pointer<Pointer<SI_ACCESS>> ppAccess,
    Pointer<Uint32> pcAccesses,
    Pointer<Uint32> piDefaultAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidObjectType,
            Uint32 dwFlags,
            Pointer<Pointer<SI_ACCESS>> ppAccess,
            Pointer<Uint32> pcAccesses,
            Pointer<Uint32> piDefaultAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidObjectType,
            int dwFlags,
            Pointer<Pointer<SI_ACCESS>> ppAccess,
            Pointer<Uint32> pcAccesses,
            Pointer<Uint32> piDefaultAccess,
          )>()(
        ptr.ref.lpVtbl,
        pguidObjectType,
        dwFlags,
        ppAccess,
        pcAccesses,
        piDefaultAccess,
      );

  int MapGeneric(
    Pointer<GUID> pguidObjectType,
    Pointer<Uint8> pAceFlags,
    Pointer<Uint32> pMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidObjectType,
            Pointer<Uint8> pAceFlags,
            Pointer<Uint32> pMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidObjectType,
            Pointer<Uint8> pAceFlags,
            Pointer<Uint32> pMask,
          )>()(
        ptr.ref.lpVtbl,
        pguidObjectType,
        pAceFlags,
        pMask,
      );

  int GetInheritTypes(
    Pointer<Pointer<SI_INHERIT_TYPE>> ppInheritTypes,
    Pointer<Uint32> pcInheritTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SI_INHERIT_TYPE>> ppInheritTypes,
            Pointer<Uint32> pcInheritTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SI_INHERIT_TYPE>> ppInheritTypes,
            Pointer<Uint32> pcInheritTypes,
          )>()(
        ptr.ref.lpVtbl,
        ppInheritTypes,
        pcInheritTypes,
      );

  int PropertySheetPageCallback(
    int hwnd,
    int uMsg,
    int uPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Uint32 uMsg,
            Int32 uPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int uMsg,
            int uPage,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        uMsg,
        uPage,
      );
}

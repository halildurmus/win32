// ICertAdmin2.dart

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

import '../../../security/cryptography/certificates/ICertAdmin.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_ICertAdmin2 = '{F7C3AC41-B8CE-4FB4-AA58-3D1DC0E36B39}';

/// {@category Interface}
/// {@category com}
class ICertAdmin2 extends ICertAdmin {
  // vtable begins at 17, is 11 entries long.
  ICertAdmin2(Pointer<COMObject> ptr) : super(ptr);

  int PublishCRLs(
    Pointer<Utf16> strConfig,
    double Date,
    int CRLFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Double Date,
            Int32 CRLFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            double Date,
            int CRLFlags,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        Date,
        CRLFlags,
      );

  int GetCAProperty(
    Pointer<Utf16> strConfig,
    int PropId,
    int PropIndex,
    int PropType,
    int Flags,
    Pointer<VARIANT> pvarPropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 PropId,
            Int32 PropIndex,
            Int32 PropType,
            Int32 Flags,
            Pointer<VARIANT> pvarPropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int PropId,
            int PropIndex,
            int PropType,
            int Flags,
            Pointer<VARIANT> pvarPropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        PropId,
        PropIndex,
        PropType,
        Flags,
        pvarPropertyValue,
      );

  int SetCAProperty(
    Pointer<Utf16> strConfig,
    int PropId,
    int PropIndex,
    int PropType,
    Pointer<VARIANT> pvarPropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 PropId,
            Int32 PropIndex,
            Uint32 PropType,
            Pointer<VARIANT> pvarPropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int PropId,
            int PropIndex,
            int PropType,
            Pointer<VARIANT> pvarPropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        PropId,
        PropIndex,
        PropType,
        pvarPropertyValue,
      );

  int GetCAPropertyFlags(
    Pointer<Utf16> strConfig,
    int PropId,
    Pointer<Int32> pPropFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 PropId,
            Pointer<Int32> pPropFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int PropId,
            Pointer<Int32> pPropFlags,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        PropId,
        pPropFlags,
      );

  int GetCAPropertyDisplayName(
    Pointer<Utf16> strConfig,
    int PropId,
    Pointer<Pointer<Utf16>> pstrDisplayName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 PropId,
            Pointer<Pointer<Utf16>> pstrDisplayName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int PropId,
            Pointer<Pointer<Utf16>> pstrDisplayName,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        PropId,
        pstrDisplayName,
      );

  int GetArchivedKey(
    Pointer<Utf16> strConfig,
    int RequestId,
    int Flags,
    Pointer<Pointer<Utf16>> pstrArchivedKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 RequestId,
            Int32 Flags,
            Pointer<Pointer<Utf16>> pstrArchivedKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int RequestId,
            int Flags,
            Pointer<Pointer<Utf16>> pstrArchivedKey,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        RequestId,
        Flags,
        pstrArchivedKey,
      );

  int GetConfigEntry(
    Pointer<Utf16> strConfig,
    Pointer<Utf16> strNodePath,
    Pointer<Utf16> strEntryName,
    Pointer<VARIANT> pvarEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strNodePath,
            Pointer<Utf16> strEntryName,
            Pointer<VARIANT> pvarEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strNodePath,
            Pointer<Utf16> strEntryName,
            Pointer<VARIANT> pvarEntry,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        strNodePath,
        strEntryName,
        pvarEntry,
      );

  int SetConfigEntry(
    Pointer<Utf16> strConfig,
    Pointer<Utf16> strNodePath,
    Pointer<Utf16> strEntryName,
    Pointer<VARIANT> pvarEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strNodePath,
            Pointer<Utf16> strEntryName,
            Pointer<VARIANT> pvarEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strNodePath,
            Pointer<Utf16> strEntryName,
            Pointer<VARIANT> pvarEntry,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        strNodePath,
        strEntryName,
        pvarEntry,
      );

  int ImportKey(
    Pointer<Utf16> strConfig,
    int RequestId,
    Pointer<Utf16> strCertHash,
    int Flags,
    Pointer<Utf16> strKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 RequestId,
            Pointer<Utf16> strCertHash,
            Uint32 Flags,
            Pointer<Utf16> strKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int RequestId,
            Pointer<Utf16> strCertHash,
            int Flags,
            Pointer<Utf16> strKey,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        RequestId,
        strCertHash,
        Flags,
        strKey,
      );

  int GetMyRoles(
    Pointer<Utf16> strConfig,
    Pointer<Uint32> pRoles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Uint32> pRoles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Uint32> pRoles,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        pRoles,
      );

  int DeleteRow(
    Pointer<Utf16> strConfig,
    int Flags,
    double Date,
    int Table,
    int RowId,
    Pointer<Int32> pcDeleted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Uint32 Flags,
            Double Date,
            Uint32 Table,
            Int32 RowId,
            Pointer<Int32> pcDeleted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int Flags,
            double Date,
            int Table,
            int RowId,
            Pointer<Int32> pcDeleted,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        Flags,
        Date,
        Table,
        RowId,
        pcDeleted,
      );
}

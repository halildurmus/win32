// ICertRequest2.dart

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

import '../../../security/cryptography/certificates/ICertRequest.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_ICertRequest2 = '{A4772988-4A85-4FA9-824E-B5CF5C16405A}';

/// {@category Interface}
/// {@category com}
class ICertRequest2 extends ICertRequest {
  // vtable begins at 14, is 6 entries long.
  ICertRequest2(Pointer<COMObject> ptr) : super(ptr);

  int GetIssuedCertificate(
    Pointer<Utf16> strConfig,
    int RequestId,
    Pointer<Utf16> strSerialNumber,
    Pointer<Uint32> pDisposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 RequestId,
            Pointer<Utf16> strSerialNumber,
            Pointer<Uint32> pDisposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int RequestId,
            Pointer<Utf16> strSerialNumber,
            Pointer<Uint32> pDisposition,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        RequestId,
        strSerialNumber,
        pDisposition,
      );

  int GetErrorMessageText(
    int hrMessage,
    int Flags,
    Pointer<Pointer<Utf16>> pstrErrorMessageText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrMessage,
            Int32 Flags,
            Pointer<Pointer<Utf16>> pstrErrorMessageText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrMessage,
            int Flags,
            Pointer<Pointer<Utf16>> pstrErrorMessageText,
          )>()(
        ptr.ref.lpVtbl,
        hrMessage,
        Flags,
        pstrErrorMessageText,
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
          .elementAt(16)
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

  int GetCAPropertyFlags(
    Pointer<Utf16> strConfig,
    int PropId,
    Pointer<Int32> pPropFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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
          .elementAt(18)
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

  int GetFullResponseProperty(
    int PropId,
    int PropIndex,
    int PropType,
    int Flags,
    Pointer<VARIANT> pvarPropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropId,
            Int32 PropIndex,
            Uint32 PropType,
            Uint32 Flags,
            Pointer<VARIANT> pvarPropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropId,
            int PropIndex,
            int PropType,
            int Flags,
            Pointer<VARIANT> pvarPropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        PropId,
        PropIndex,
        PropType,
        Flags,
        pvarPropertyValue,
      );
}

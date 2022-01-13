// IWbemObjectSinkEx.dart

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

import '../../system/wmi/IWbemObjectSink.dart';
import '../../foundation/structs.g.dart';
import '../../system/wmi/IWbemClassObject.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IWbemObjectSinkEx = '{E7D35CFA-348B-485E-B524-252725D697CA}';

/// {@category Interface}
/// {@category com}
class IWbemObjectSinkEx extends IWbemObjectSink {
  // vtable begins at 5, is 5 entries long.
  IWbemObjectSinkEx(Pointer<COMObject> ptr) : super(ptr);

  int WriteMessage(
    int uChannel,
    Pointer<Utf16> strMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uChannel,
            Pointer<Utf16> strMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uChannel,
            Pointer<Utf16> strMessage,
          )>()(
        ptr.ref.lpVtbl,
        uChannel,
        strMessage,
      );

  int WriteError(
    Pointer<COMObject> pObjError,
    Pointer<Uint8> puReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObjError,
            Pointer<Uint8> puReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObjError,
            Pointer<Uint8> puReturned,
          )>()(
        ptr.ref.lpVtbl,
        pObjError,
        puReturned,
      );

  int PromptUser(
    Pointer<Utf16> strMessage,
    int uPromptType,
    Pointer<Uint8> puReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strMessage,
            Uint8 uPromptType,
            Pointer<Uint8> puReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strMessage,
            int uPromptType,
            Pointer<Uint8> puReturned,
          )>()(
        ptr.ref.lpVtbl,
        strMessage,
        uPromptType,
        puReturned,
      );

  int WriteProgress(
    Pointer<Utf16> strActivity,
    Pointer<Utf16> strCurrentOperation,
    Pointer<Utf16> strStatusDescription,
    int uPercentComplete,
    int uSecondsRemaining,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strActivity,
            Pointer<Utf16> strCurrentOperation,
            Pointer<Utf16> strStatusDescription,
            Uint32 uPercentComplete,
            Uint32 uSecondsRemaining,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strActivity,
            Pointer<Utf16> strCurrentOperation,
            Pointer<Utf16> strStatusDescription,
            int uPercentComplete,
            int uSecondsRemaining,
          )>()(
        ptr.ref.lpVtbl,
        strActivity,
        strCurrentOperation,
        strStatusDescription,
        uPercentComplete,
        uSecondsRemaining,
      );

  int WriteStreamParameter(
    Pointer<Utf16> strName,
    Pointer<VARIANT> vtValue,
    int ulType,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strName,
            Pointer<VARIANT> vtValue,
            Uint32 ulType,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strName,
            Pointer<VARIANT> vtValue,
            int ulType,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        vtValue,
        ulType,
        ulFlags,
      );
}

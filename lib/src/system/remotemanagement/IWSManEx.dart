// IWSManEx.dart

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

import '../../system/remotemanagement/IWSMan.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IDispatch.dart';

/// @nodoc
const IID_IWSManEx = '{2D53BDAA-798E-49E6-A1AA-74D01256F411}';

/// {@category Interface}
/// {@category com}
class IWSManEx extends IWSMan {
  // vtable begins at 11, is 20 entries long.
  IWSManEx(Pointer<COMObject> ptr) : super(ptr);

  int CreateResourceLocator(
    Pointer<Utf16> strResourceLocator,
    Pointer<Pointer<COMObject>> newResourceLocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strResourceLocator,
            Pointer<Pointer<COMObject>> newResourceLocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strResourceLocator,
            Pointer<Pointer<COMObject>> newResourceLocator,
          )>()(
        ptr.ref.lpVtbl,
        strResourceLocator,
        newResourceLocator,
      );

  int SessionFlagUTF8(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagCredUsernamePassword(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagSkipCACheck(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagSkipCNCheck(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagUseDigest(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagUseNegotiate(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagUseBasic(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagUseKerberos(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagNoEncryption(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagEnableSPNServerPort(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SessionFlagUseNoAuthentication(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int EnumerationFlagNonXmlText(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int EnumerationFlagReturnEPR(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int EnumerationFlagReturnObjectAndEPR(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int GetErrorMessage(
    int errorNumber,
    Pointer<Pointer<Utf16>> errorMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 errorNumber,
            Pointer<Pointer<Utf16>> errorMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int errorNumber,
            Pointer<Pointer<Utf16>> errorMessage,
          )>()(
        ptr.ref.lpVtbl,
        errorNumber,
        errorMessage,
      );

  int EnumerationFlagHierarchyDeep(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int EnumerationFlagHierarchyShallow(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int EnumerationFlagHierarchyDeepBasePropsOnly(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int EnumerationFlagReturnObject(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );
}

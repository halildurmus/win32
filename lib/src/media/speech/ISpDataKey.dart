// ISpDataKey.dart

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
import '../../foundation/structs.g.dart';
import '../../media/speech/ISpDataKey.dart';

/// @nodoc
const IID_ISpDataKey = '{14056581-E16C-11D2-BB90-00C04F8EE6C0}';

/// {@category Interface}
/// {@category com}
class ISpDataKey extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  ISpDataKey(Pointer<COMObject> ptr) : super(ptr);

  int SetData(
    Pointer<Utf16> pszValueName,
    int cbData,
    Pointer<Uint8> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            Uint32 cbData,
            Pointer<Uint8> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            int cbData,
            Pointer<Uint8> pData,
          )>()(
        ptr.ref.lpVtbl,
        pszValueName,
        cbData,
        pData,
      );

  int GetData(
    Pointer<Utf16> pszValueName,
    Pointer<Uint32> pcbData,
    Pointer<Uint8> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            Pointer<Uint32> pcbData,
            Pointer<Uint8> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            Pointer<Uint32> pcbData,
            Pointer<Uint8> pData,
          )>()(
        ptr.ref.lpVtbl,
        pszValueName,
        pcbData,
        pData,
      );

  int SetStringValue(
    Pointer<Utf16> pszValueName,
    Pointer<Utf16> pszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            Pointer<Utf16> pszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            Pointer<Utf16> pszValue,
          )>()(
        ptr.ref.lpVtbl,
        pszValueName,
        pszValue,
      );

  int GetStringValue(
    Pointer<Utf16> pszValueName,
    Pointer<Pointer<Utf16>> ppszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            Pointer<Pointer<Utf16>> ppszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            Pointer<Pointer<Utf16>> ppszValue,
          )>()(
        ptr.ref.lpVtbl,
        pszValueName,
        ppszValue,
      );

  int SetDWORD(
    Pointer<Utf16> pszValueName,
    int dwValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            Uint32 dwValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            int dwValue,
          )>()(
        ptr.ref.lpVtbl,
        pszValueName,
        dwValue,
      );

  int GetDWORD(
    Pointer<Utf16> pszValueName,
    Pointer<Uint32> pdwValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            Pointer<Uint32> pdwValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszValueName,
            Pointer<Uint32> pdwValue,
          )>()(
        ptr.ref.lpVtbl,
        pszValueName,
        pdwValue,
      );

  int OpenKey(
    Pointer<Utf16> pszSubKeyName,
    Pointer<Pointer<COMObject>> ppSubKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSubKeyName,
            Pointer<Pointer<COMObject>> ppSubKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSubKeyName,
            Pointer<Pointer<COMObject>> ppSubKey,
          )>()(
        ptr.ref.lpVtbl,
        pszSubKeyName,
        ppSubKey,
      );

  int CreateKey(
    Pointer<Utf16> pszSubKey,
    Pointer<Pointer<COMObject>> ppSubKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSubKey,
            Pointer<Pointer<COMObject>> ppSubKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSubKey,
            Pointer<Pointer<COMObject>> ppSubKey,
          )>()(
        ptr.ref.lpVtbl,
        pszSubKey,
        ppSubKey,
      );

  int DeleteKey(
    Pointer<Utf16> pszSubKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSubKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSubKey,
          )>()(
        ptr.ref.lpVtbl,
        pszSubKey,
      );

  int DeleteValue(
    Pointer<Utf16> pszValueName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszValueName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszValueName,
          )>()(
        ptr.ref.lpVtbl,
        pszValueName,
      );

  int EnumKeys(
    int Index,
    Pointer<Pointer<Utf16>> ppszSubKeyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Pointer<Utf16>> ppszSubKeyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<Utf16>> ppszSubKeyName,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ppszSubKeyName,
      );

  int EnumValues(
    int Index,
    Pointer<Pointer<Utf16>> ppszValueName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Pointer<Utf16>> ppszValueName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<Utf16>> ppszValueName,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ppszValueName,
      );
}

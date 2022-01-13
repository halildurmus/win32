// IWbemPathKeyList.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IWbemPathKeyList = '{9AE62877-7544-4BB0-AA26-A13824659ED6}';

/// {@category Interface}
/// {@category com}
class IWbemPathKeyList extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IWbemPathKeyList(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> puKeyCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puKeyCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puKeyCount,
          )>()(
        ptr.ref.lpVtbl,
        puKeyCount,
      );

  int SetKey(
    Pointer<Utf16> wszName,
    int uFlags,
    int uCimType,
    Pointer pKeyVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszName,
            Uint32 uFlags,
            Uint32 uCimType,
            Pointer pKeyVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszName,
            int uFlags,
            int uCimType,
            Pointer pKeyVal,
          )>()(
        ptr.ref.lpVtbl,
        wszName,
        uFlags,
        uCimType,
        pKeyVal,
      );

  int SetKey2(
    Pointer<Utf16> wszName,
    int uFlags,
    int uCimType,
    Pointer<VARIANT> pKeyVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszName,
            Uint32 uFlags,
            Uint32 uCimType,
            Pointer<VARIANT> pKeyVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszName,
            int uFlags,
            int uCimType,
            Pointer<VARIANT> pKeyVal,
          )>()(
        ptr.ref.lpVtbl,
        wszName,
        uFlags,
        uCimType,
        pKeyVal,
      );

  int GetKey(
    int uKeyIx,
    int uFlags,
    Pointer<Uint32> puNameBufSize,
    Pointer<Utf16> pszKeyName,
    Pointer<Uint32> puKeyValBufSize,
    Pointer pKeyVal,
    Pointer<Uint32> puApparentCimType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uKeyIx,
            Uint32 uFlags,
            Pointer<Uint32> puNameBufSize,
            Pointer<Utf16> pszKeyName,
            Pointer<Uint32> puKeyValBufSize,
            Pointer pKeyVal,
            Pointer<Uint32> puApparentCimType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uKeyIx,
            int uFlags,
            Pointer<Uint32> puNameBufSize,
            Pointer<Utf16> pszKeyName,
            Pointer<Uint32> puKeyValBufSize,
            Pointer pKeyVal,
            Pointer<Uint32> puApparentCimType,
          )>()(
        ptr.ref.lpVtbl,
        uKeyIx,
        uFlags,
        puNameBufSize,
        pszKeyName,
        puKeyValBufSize,
        pKeyVal,
        puApparentCimType,
      );

  int GetKey2(
    int uKeyIx,
    int uFlags,
    Pointer<Uint32> puNameBufSize,
    Pointer<Utf16> pszKeyName,
    Pointer<VARIANT> pKeyValue,
    Pointer<Uint32> puApparentCimType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uKeyIx,
            Uint32 uFlags,
            Pointer<Uint32> puNameBufSize,
            Pointer<Utf16> pszKeyName,
            Pointer<VARIANT> pKeyValue,
            Pointer<Uint32> puApparentCimType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uKeyIx,
            int uFlags,
            Pointer<Uint32> puNameBufSize,
            Pointer<Utf16> pszKeyName,
            Pointer<VARIANT> pKeyValue,
            Pointer<Uint32> puApparentCimType,
          )>()(
        ptr.ref.lpVtbl,
        uKeyIx,
        uFlags,
        puNameBufSize,
        pszKeyName,
        pKeyValue,
        puApparentCimType,
      );

  int RemoveKey(
    Pointer<Utf16> wszName,
    int uFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszName,
            Uint32 uFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszName,
            int uFlags,
          )>()(
        ptr.ref.lpVtbl,
        wszName,
        uFlags,
      );

  int RemoveAllKeys(
    int uFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uFlags,
          )>()(
        ptr.ref.lpVtbl,
        uFlags,
      );

  int MakeSingleton(
    int bSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bSet,
          )>()(
        ptr.ref.lpVtbl,
        bSet,
      );

  int GetInfo(
    int uRequestedInfo,
    Pointer<Uint64> puResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uRequestedInfo,
            Pointer<Uint64> puResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uRequestedInfo,
            Pointer<Uint64> puResponse,
          )>()(
        ptr.ref.lpVtbl,
        uRequestedInfo,
        puResponse,
      );

  int GetText(
    int lFlags,
    Pointer<Uint32> puBuffLength,
    Pointer<Utf16> pszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Uint32> puBuffLength,
            Pointer<Utf16> pszText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Uint32> puBuffLength,
            Pointer<Utf16> pszText,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        puBuffLength,
        pszText,
      );
}

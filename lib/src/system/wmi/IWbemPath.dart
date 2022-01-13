// IWbemPath.dart

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
import '../../system/wmi/IWbemPathKeyList.dart';

/// @nodoc
const IID_IWbemPath = '{3BC15AF2-736C-477E-9E51-238AF8667DCC}';

/// {@category Interface}
/// {@category com}
class IWbemPath extends IUnknown {
  // vtable begins at 3, is 26 entries long.
  IWbemPath(Pointer<COMObject> ptr) : super(ptr);

  int SetText(
    int uMode,
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uMode,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uMode,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        uMode,
        pszPath,
      );

  int GetText(
    int lFlags,
    Pointer<Uint32> puBuffLength,
    Pointer<Utf16> pszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetInfo(
    int uRequestedInfo,
    Pointer<Uint64> puResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int SetServer(
    Pointer<Utf16> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );

  int GetServer(
    Pointer<Uint32> puNameBufLength,
    Pointer<Utf16> pName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puNameBufLength,
            Pointer<Utf16> pName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puNameBufLength,
            Pointer<Utf16> pName,
          )>()(
        ptr.ref.lpVtbl,
        puNameBufLength,
        pName,
      );

  int GetNamespaceCount(
    Pointer<Uint32> puCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puCount,
          )>()(
        ptr.ref.lpVtbl,
        puCount,
      );

  int SetNamespaceAt(
    int uIndex,
    Pointer<Utf16> pszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Utf16> pszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Utf16> pszName,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        pszName,
      );

  int GetNamespaceAt(
    int uIndex,
    Pointer<Uint32> puNameBufLength,
    Pointer<Utf16> pName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Uint32> puNameBufLength,
            Pointer<Utf16> pName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Uint32> puNameBufLength,
            Pointer<Utf16> pName,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        puNameBufLength,
        pName,
      );

  int RemoveNamespaceAt(
    int uIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
      );

  int RemoveAllNamespaces() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetScopeCount(
    Pointer<Uint32> puCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puCount,
          )>()(
        ptr.ref.lpVtbl,
        puCount,
      );

  int SetScope(
    int uIndex,
    Pointer<Utf16> pszClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Utf16> pszClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Utf16> pszClass,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        pszClass,
      );

  int SetScopeFromText(
    int uIndex,
    Pointer<Utf16> pszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Utf16> pszText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Utf16> pszText,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        pszText,
      );

  int GetScope(
    int uIndex,
    Pointer<Uint32> puClassNameBufSize,
    Pointer<Utf16> pszClass,
    Pointer<Pointer<COMObject>> pKeyList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Uint32> puClassNameBufSize,
            Pointer<Utf16> pszClass,
            Pointer<Pointer<COMObject>> pKeyList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Uint32> puClassNameBufSize,
            Pointer<Utf16> pszClass,
            Pointer<Pointer<COMObject>> pKeyList,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        puClassNameBufSize,
        pszClass,
        pKeyList,
      );

  int GetScopeAsText(
    int uIndex,
    Pointer<Uint32> puTextBufSize,
    Pointer<Utf16> pszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<Uint32> puTextBufSize,
            Pointer<Utf16> pszText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<Uint32> puTextBufSize,
            Pointer<Utf16> pszText,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        puTextBufSize,
        pszText,
      );

  int RemoveScope(
    int uIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
      );

  int RemoveAllScopes() => ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetClassName(
    Pointer<Utf16> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );

  int GetClassName(
    Pointer<Uint32> puBuffLength,
    Pointer<Utf16> pszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puBuffLength,
            Pointer<Utf16> pszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puBuffLength,
            Pointer<Utf16> pszName,
          )>()(
        ptr.ref.lpVtbl,
        puBuffLength,
        pszName,
      );

  int GetKeyList(
    Pointer<Pointer<COMObject>> pOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pOut,
          )>()(
        ptr.ref.lpVtbl,
        pOut,
      );

  int CreateClassPart(
    int lFlags,
    Pointer<Utf16> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Utf16> Name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Utf16> Name,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        Name,
      );

  int DeleteClassPart(
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
      );

  int IsRelative(
    Pointer<Utf16> wszMachine,
    Pointer<Utf16> wszNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszMachine,
            Pointer<Utf16> wszNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszMachine,
            Pointer<Utf16> wszNamespace,
          )>()(
        ptr.ref.lpVtbl,
        wszMachine,
        wszNamespace,
      );

  int IsRelativeOrChild(
    Pointer<Utf16> wszMachine,
    Pointer<Utf16> wszNamespace,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszMachine,
            Pointer<Utf16> wszNamespace,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszMachine,
            Pointer<Utf16> wszNamespace,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        wszMachine,
        wszNamespace,
        lFlags,
      );

  int IsLocal(
    Pointer<Utf16> wszMachine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszMachine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszMachine,
          )>()(
        ptr.ref.lpVtbl,
        wszMachine,
      );

  int IsSameClassName(
    Pointer<Utf16> wszClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszClass,
          )>()(
        ptr.ref.lpVtbl,
        wszClass,
      );
}

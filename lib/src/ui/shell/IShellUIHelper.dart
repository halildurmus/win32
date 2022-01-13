// IShellUIHelper.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IShellUIHelper = '{729FE2F8-1EA8-11D1-8F85-00C04FC2FBE1}';

/// {@category Interface}
/// {@category com}
class IShellUIHelper extends IDispatch {
  // vtable begins at 7, is 13 entries long.
  IShellUIHelper(Pointer<COMObject> ptr) : super(ptr);

  int ResetFirstBootMode() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int ResetSafeMode() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int RefreshOfflineDesktop() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int AddFavorite(
    Pointer<Utf16> URL,
    Pointer<VARIANT> Title,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<VARIANT> Title,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<VARIANT> Title,
          )>()(
        ptr.ref.lpVtbl,
        URL,
        Title,
      );

  int AddChannel(
    Pointer<Utf16> URL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> URL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> URL,
          )>()(
        ptr.ref.lpVtbl,
        URL,
      );

  int AddDesktopComponent(
    Pointer<Utf16> URL,
    Pointer<Utf16> Type,
    Pointer<VARIANT> Left,
    Pointer<VARIANT> Top,
    Pointer<VARIANT> Width,
    Pointer<VARIANT> Height,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Utf16> Type,
            Pointer<VARIANT> Left,
            Pointer<VARIANT> Top,
            Pointer<VARIANT> Width,
            Pointer<VARIANT> Height,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Utf16> Type,
            Pointer<VARIANT> Left,
            Pointer<VARIANT> Top,
            Pointer<VARIANT> Width,
            Pointer<VARIANT> Height,
          )>()(
        ptr.ref.lpVtbl,
        URL,
        Type,
        Left,
        Top,
        Width,
        Height,
      );

  int IsSubscribed(
    Pointer<Utf16> URL,
    Pointer<Int16> pBool,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Int16> pBool,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Int16> pBool,
          )>()(
        ptr.ref.lpVtbl,
        URL,
        pBool,
      );

  int NavigateAndFind(
    Pointer<Utf16> URL,
    Pointer<Utf16> strQuery,
    Pointer<VARIANT> varTargetFrame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Utf16> strQuery,
            Pointer<VARIANT> varTargetFrame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Utf16> strQuery,
            Pointer<VARIANT> varTargetFrame,
          )>()(
        ptr.ref.lpVtbl,
        URL,
        strQuery,
        varTargetFrame,
      );

  int ImportExportFavorites(
    int fImport,
    Pointer<Utf16> strImpExpPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fImport,
            Pointer<Utf16> strImpExpPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fImport,
            Pointer<Utf16> strImpExpPath,
          )>()(
        ptr.ref.lpVtbl,
        fImport,
        strImpExpPath,
      );

  int AutoCompleteSaveForm(
    Pointer<VARIANT> Form,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Form,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Form,
          )>()(
        ptr.ref.lpVtbl,
        Form,
      );

  int AutoScan(
    Pointer<Utf16> strSearch,
    Pointer<Utf16> strFailureUrl,
    Pointer<VARIANT> pvarTargetFrame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strSearch,
            Pointer<Utf16> strFailureUrl,
            Pointer<VARIANT> pvarTargetFrame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strSearch,
            Pointer<Utf16> strFailureUrl,
            Pointer<VARIANT> pvarTargetFrame,
          )>()(
        ptr.ref.lpVtbl,
        strSearch,
        strFailureUrl,
        pvarTargetFrame,
      );

  int AutoCompleteAttach(
    Pointer<VARIANT> Reserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Reserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Reserved,
          )>()(
        ptr.ref.lpVtbl,
        Reserved,
      );

  int ShowBrowserUI(
    Pointer<Utf16> bstrName,
    Pointer<VARIANT> pvarIn,
    Pointer<VARIANT> pvarOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<VARIANT> pvarIn,
            Pointer<VARIANT> pvarOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<VARIANT> pvarIn,
            Pointer<VARIANT> pvarOut,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        pvarIn,
        pvarOut,
      );
}

/// @nodoc
const CLSID_ShellUIHelper = '{64AB4BB7-111E-11D1-8F79-00C04FC2FBE1}';

/// {@category com}
class ShellUIHelper extends IShellUIHelper {
  ShellUIHelper(Pointer<COMObject> ptr) : super(ptr);

  factory ShellUIHelper.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ShellUIHelper);
    final iid = calloc<GUID>()..ref.setGUID(IID_IShellUIHelper);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ShellUIHelper(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

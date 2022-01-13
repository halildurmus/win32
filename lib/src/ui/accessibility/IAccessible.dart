// IAccessible.dart

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
const IID_IAccessible = '{618736E0-3C3D-11CF-810C-00AA00389B71}';

/// {@category Interface}
/// {@category com}
class IAccessible extends IDispatch {
  // vtable begins at 7, is 21 entries long.
  IAccessible(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get accParent {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdispParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdispParent,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get accChildCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcountChildren,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcountChildren,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_accChild(
    VARIANT varChild,
    Pointer<Pointer<COMObject>> ppdispChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<COMObject>> ppdispChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<COMObject>> ppdispChild,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
        ppdispChild,
      );

  int get_accName(
    VARIANT varChild,
    Pointer<Pointer<Utf16>> pszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszName,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
        pszName,
      );

  int get_accValue(
    VARIANT varChild,
    Pointer<Pointer<Utf16>> pszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszValue,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
        pszValue,
      );

  int get_accDescription(
    VARIANT varChild,
    Pointer<Pointer<Utf16>> pszDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszDescription,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
        pszDescription,
      );

  int get_accRole(
    VARIANT varChild,
    Pointer<VARIANT> pvarRole,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
            Pointer<VARIANT> pvarRole,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
            Pointer<VARIANT> pvarRole,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
        pvarRole,
      );

  int get_accState(
    VARIANT varChild,
    Pointer<VARIANT> pvarState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
            Pointer<VARIANT> pvarState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
            Pointer<VARIANT> pvarState,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
        pvarState,
      );

  int get_accHelp(
    VARIANT varChild,
    Pointer<Pointer<Utf16>> pszHelp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszHelp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszHelp,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
        pszHelp,
      );

  int get_accHelpTopic(
    Pointer<Pointer<Utf16>> pszHelpFile,
    VARIANT varChild,
    Pointer<Int32> pidTopic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pszHelpFile,
            VARIANT varChild,
            Pointer<Int32> pidTopic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pszHelpFile,
            VARIANT varChild,
            Pointer<Int32> pidTopic,
          )>()(
        ptr.ref.lpVtbl,
        pszHelpFile,
        varChild,
        pidTopic,
      );

  int get_accKeyboardShortcut(
    VARIANT varChild,
    Pointer<Pointer<Utf16>> pszKeyboardShortcut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszKeyboardShortcut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszKeyboardShortcut,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
        pszKeyboardShortcut,
      );

  VARIANT get accFocus {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarChild,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get accSelection {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarChildren,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarChildren,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_accDefaultAction(
    VARIANT varChild,
    Pointer<Pointer<Utf16>> pszDefaultAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszDefaultAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
            Pointer<Pointer<Utf16>> pszDefaultAction,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
        pszDefaultAction,
      );

  int accSelect(
    int flagsSelect,
    VARIANT varChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flagsSelect,
            VARIANT varChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flagsSelect,
            VARIANT varChild,
          )>()(
        ptr.ref.lpVtbl,
        flagsSelect,
        varChild,
      );

  int accLocation(
    Pointer<Int32> pxLeft,
    Pointer<Int32> pyTop,
    Pointer<Int32> pcxWidth,
    Pointer<Int32> pcyHeight,
    VARIANT varChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pxLeft,
            Pointer<Int32> pyTop,
            Pointer<Int32> pcxWidth,
            Pointer<Int32> pcyHeight,
            VARIANT varChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pxLeft,
            Pointer<Int32> pyTop,
            Pointer<Int32> pcxWidth,
            Pointer<Int32> pcyHeight,
            VARIANT varChild,
          )>()(
        ptr.ref.lpVtbl,
        pxLeft,
        pyTop,
        pcxWidth,
        pcyHeight,
        varChild,
      );

  int accNavigate(
    int navDir,
    VARIANT varStart,
    Pointer<VARIANT> pvarEndUpAt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 navDir,
            VARIANT varStart,
            Pointer<VARIANT> pvarEndUpAt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int navDir,
            VARIANT varStart,
            Pointer<VARIANT> pvarEndUpAt,
          )>()(
        ptr.ref.lpVtbl,
        navDir,
        varStart,
        pvarEndUpAt,
      );

  int accHitTest(
    int xLeft,
    int yTop,
    Pointer<VARIANT> pvarChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 xLeft,
            Int32 yTop,
            Pointer<VARIANT> pvarChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int xLeft,
            int yTop,
            Pointer<VARIANT> pvarChild,
          )>()(
        ptr.ref.lpVtbl,
        xLeft,
        yTop,
        pvarChild,
      );

  int accDoDefaultAction(
    VARIANT varChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
      );

  int put_accName(
    VARIANT varChild,
    Pointer<Utf16> szName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
            Pointer<Utf16> szName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
            Pointer<Utf16> szName,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
        szName,
      );

  int put_accValue(
    VARIANT varChild,
    Pointer<Utf16> szValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varChild,
            Pointer<Utf16> szValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varChild,
            Pointer<Utf16> szValue,
          )>()(
        ptr.ref.lpVtbl,
        varChild,
        szValue,
      );
}

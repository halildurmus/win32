// IMathInputControl.dart

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
import '../../ui/tabletpc/IInkDisp.dart';
import '../../system/ole/IPictureDisp.dart';

/// @nodoc
const IID_IMathInputControl = '{EBA615AA-FAC6-4738-BA5F-FF09E9FE473E}';

/// {@category Interface}
/// {@category com}
class IMathInputControl extends IDispatch {
  // vtable begins at 7, is 17 entries long.
  IMathInputControl(Pointer<COMObject> ptr) : super(ptr);

  int Show() => ptr.ref.lpVtbl.value
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

  int Hide() => ptr.ref.lpVtbl.value
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

  int IsVisible(
    Pointer<Int16> pvbShown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pvbShown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pvbShown,
          )>()(
        ptr.ref.lpVtbl,
        pvbShown,
      );

  int GetPosition(
    Pointer<Int32> Left,
    Pointer<Int32> Top,
    Pointer<Int32> Right,
    Pointer<Int32> Bottom,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Left,
            Pointer<Int32> Top,
            Pointer<Int32> Right,
            Pointer<Int32> Bottom,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Left,
            Pointer<Int32> Top,
            Pointer<Int32> Right,
            Pointer<Int32> Bottom,
          )>()(
        ptr.ref.lpVtbl,
        Left,
        Top,
        Right,
        Bottom,
      );

  int SetPosition(
    int Left,
    int Top,
    int Right,
    int Bottom,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Left,
            Int32 Top,
            Int32 Right,
            Int32 Bottom,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Left,
            int Top,
            int Right,
            int Bottom,
          )>()(
        ptr.ref.lpVtbl,
        Left,
        Top,
        Right,
        Bottom,
      );

  int Clear() => ptr.ref.lpVtbl.value
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

  int SetCustomPaint(
    int Element,
    int Paint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Element,
            Int16 Paint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Element,
            int Paint,
          )>()(
        ptr.ref.lpVtbl,
        Element,
        Paint,
      );

  int SetCaptionText(
    Pointer<Utf16> CaptionText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> CaptionText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> CaptionText,
          )>()(
        ptr.ref.lpVtbl,
        CaptionText,
      );

  int LoadInk(
    Pointer<COMObject> Ink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Ink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Ink,
          )>()(
        ptr.ref.lpVtbl,
        Ink,
      );

  int SetOwnerWindow(
    int OwnerWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr OwnerWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OwnerWindow,
          )>()(
        ptr.ref.lpVtbl,
        OwnerWindow,
      );

  int EnableExtendedButtons(
    int Extended,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 Extended,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Extended,
          )>()(
        ptr.ref.lpVtbl,
        Extended,
      );

  int GetPreviewHeight(
    Pointer<Int32> Height,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Height,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Height,
          )>()(
        ptr.ref.lpVtbl,
        Height,
      );

  int SetPreviewHeight(
    int Height,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Height,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Height,
          )>()(
        ptr.ref.lpVtbl,
        Height,
      );

  int EnableAutoGrow(
    int AutoGrow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 AutoGrow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AutoGrow,
          )>()(
        ptr.ref.lpVtbl,
        AutoGrow,
      );

  int AddFunctionName(
    Pointer<Utf16> FunctionName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FunctionName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FunctionName,
          )>()(
        ptr.ref.lpVtbl,
        FunctionName,
      );

  int RemoveFunctionName(
    Pointer<Utf16> FunctionName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FunctionName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FunctionName,
          )>()(
        ptr.ref.lpVtbl,
        FunctionName,
      );

  int GetHoverIcon(
    Pointer<Pointer<COMObject>> HoverImage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> HoverImage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> HoverImage,
          )>()(
        ptr.ref.lpVtbl,
        HoverImage,
      );
}

/// @nodoc
const CLSID_MathInputControl = '{C561816C-14D8-4090-830C-98D994B21C7B}';

/// {@category com}
class MathInputControl extends IMathInputControl {
  MathInputControl(Pointer<COMObject> ptr) : super(ptr);

  factory MathInputControl.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MathInputControl);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMathInputControl);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MathInputControl(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

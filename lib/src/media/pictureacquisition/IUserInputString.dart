// IUserInputString.dart

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
import '../../media/pictureacquisition/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

/// @nodoc
const IID_IUserInputString = '{00F243A1-205B-45BA-AE26-ABBC53AA7A6F}';

/// {@category Interface}
/// {@category com}
class IUserInputString extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IUserInputString(Pointer<COMObject> ptr) : super(ptr);

  int GetSubmitButtonText(
    Pointer<Pointer<Utf16>> pbstrSubmitButtonText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSubmitButtonText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrSubmitButtonText,
          )>()(
        ptr.ref.lpVtbl,
        pbstrSubmitButtonText,
      );

  int GetPrompt(
    Pointer<Pointer<Utf16>> pbstrPromptTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPromptTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPromptTitle,
          )>()(
        ptr.ref.lpVtbl,
        pbstrPromptTitle,
      );

  int GetStringId(
    Pointer<Pointer<Utf16>> pbstrStringId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrStringId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrStringId,
          )>()(
        ptr.ref.lpVtbl,
        pbstrStringId,
      );

  int GetStringType(
    Pointer<Int32> pnStringType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnStringType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnStringType,
          )>()(
        ptr.ref.lpVtbl,
        pnStringType,
      );

  int GetTooltipText(
    Pointer<Pointer<Utf16>> pbstrTooltipText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrTooltipText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrTooltipText,
          )>()(
        ptr.ref.lpVtbl,
        pbstrTooltipText,
      );

  int GetMaxLength(
    Pointer<Uint32> pcchMaxLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcchMaxLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcchMaxLength,
          )>()(
        ptr.ref.lpVtbl,
        pcchMaxLength,
      );

  int GetDefault(
    Pointer<Pointer<Utf16>> pbstrDefault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDefault,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDefault,
          )>()(
        ptr.ref.lpVtbl,
        pbstrDefault,
      );

  int GetMruCount(
    Pointer<Uint32> pnMruCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnMruCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnMruCount,
          )>()(
        ptr.ref.lpVtbl,
        pnMruCount,
      );

  int GetMruEntryAt(
    int nIndex,
    Pointer<Pointer<Utf16>> pbstrMruEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Pointer<Pointer<Utf16>> pbstrMruEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<Utf16>> pbstrMruEntry,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        pbstrMruEntry,
      );

  int GetImage(
    int nSize,
    Pointer<IntPtr> phBitmap,
    Pointer<IntPtr> phIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nSize,
            Pointer<IntPtr> phBitmap,
            Pointer<IntPtr> phIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nSize,
            Pointer<IntPtr> phBitmap,
            Pointer<IntPtr> phIcon,
          )>()(
        ptr.ref.lpVtbl,
        nSize,
        phBitmap,
        phIcon,
      );
}

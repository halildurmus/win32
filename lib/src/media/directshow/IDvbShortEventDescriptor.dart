// IDvbShortEventDescriptor.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IDvbShortEventDescriptor = '{B170BE92-5B75-458E-9C6E-B0008231491A}';

/// {@category Interface}
/// {@category com}
class IDvbShortEventDescriptor extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDvbShortEventDescriptor(Pointer<COMObject> ptr) : super(ptr);

  int GetTag(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetLength(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetLanguageCode(
    Pointer<Uint8> pszCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pszCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pszCode,
          )>()(
        ptr.ref.lpVtbl,
        pszCode,
      );

  int GetEventNameW(
    int convMode,
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 convMode,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int convMode,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        convMode,
        pbstrName,
      );

  int GetTextW(
    int convMode,
    Pointer<Pointer<Utf16>> pbstrText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 convMode,
            Pointer<Pointer<Utf16>> pbstrText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int convMode,
            Pointer<Pointer<Utf16>> pbstrText,
          )>()(
        ptr.ref.lpVtbl,
        convMode,
        pbstrText,
      );
}

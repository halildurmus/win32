// ISettingsResult.dart

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

/// @nodoc
const IID_ISettingsResult = '{9F7D7BBC-20B3-11DA-81A5-0030F1642E3C}';

/// {@category Interface}
/// {@category com}
class ISettingsResult extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ISettingsResult(Pointer<COMObject> ptr) : super(ptr);

  int GetDescription(
    Pointer<Pointer<Utf16>> description,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> description,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> description,
          )>()(
        ptr.ref.lpVtbl,
        description,
      );

  int GetErrorCode(
    Pointer<Int32> hrOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hrOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hrOut,
          )>()(
        ptr.ref.lpVtbl,
        hrOut,
      );

  int GetContextDescription(
    Pointer<Pointer<Utf16>> description,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> description,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> description,
          )>()(
        ptr.ref.lpVtbl,
        description,
      );

  int GetLine(
    Pointer<Uint32> dwLine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dwLine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dwLine,
          )>()(
        ptr.ref.lpVtbl,
        dwLine,
      );

  int GetColumn(
    Pointer<Uint32> dwColumn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dwColumn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dwColumn,
          )>()(
        ptr.ref.lpVtbl,
        dwColumn,
      );

  int GetSource(
    Pointer<Pointer<Utf16>> file,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> file,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> file,
          )>()(
        ptr.ref.lpVtbl,
        file,
      );
}

// IRecoverableErrorData.dart

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
const IID_IRecoverableErrorData = '{B37C4A0A-4B7D-4C2D-9711-3B00D119B1C8}';

/// {@category Interface}
/// {@category com}
class IRecoverableErrorData extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IRecoverableErrorData(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pcszItemDisplayName,
    Pointer<Utf16> pcszErrorDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pcszItemDisplayName,
            Pointer<Utf16> pcszErrorDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pcszItemDisplayName,
            Pointer<Utf16> pcszErrorDescription,
          )>()(
        ptr.ref.lpVtbl,
        pcszItemDisplayName,
        pcszErrorDescription,
      );

  int GetItemDisplayName(
    Pointer<Utf16> pszItemDisplayName,
    Pointer<Uint32> pcchItemDisplayName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszItemDisplayName,
            Pointer<Uint32> pcchItemDisplayName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszItemDisplayName,
            Pointer<Uint32> pcchItemDisplayName,
          )>()(
        ptr.ref.lpVtbl,
        pszItemDisplayName,
        pcchItemDisplayName,
      );

  int GetErrorDescription(
    Pointer<Utf16> pszErrorDescription,
    Pointer<Uint32> pcchErrorDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszErrorDescription,
            Pointer<Uint32> pcchErrorDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszErrorDescription,
            Pointer<Uint32> pcchErrorDescription,
          )>()(
        ptr.ref.lpVtbl,
        pszErrorDescription,
        pcchErrorDescription,
      );
}

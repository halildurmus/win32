// IMFNetResourceFilter.dart

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
const IID_IMFNetResourceFilter = '{091878A3-BF11-4A5C-BC9F-33995B06EF2D}';

/// {@category Interface}
/// {@category com}
class IMFNetResourceFilter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFNetResourceFilter(Pointer<COMObject> ptr) : super(ptr);

  int OnRedirect(
    Pointer<Utf16> pszUrl,
    Pointer<Int16> pvbCancel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<Int16> pvbCancel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<Int16> pvbCancel,
          )>()(
        ptr.ref.lpVtbl,
        pszUrl,
        pvbCancel,
      );

  int OnSendingRequest(
    Pointer<Utf16> pszUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUrl,
          )>()(
        ptr.ref.lpVtbl,
        pszUrl,
      );
}

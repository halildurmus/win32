// ISoftwareBitmapNative.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../../combase.dart';
import '../../../../constants.dart';
import '../../../../exceptions.dart';
import '../../../../guid.dart';
import '../../../../macros.dart';
import '../../../../ole32.dart';
import '../../../../utils.dart';

import '../../../../system/winrt/IInspectable.dart';
import '../../../../foundation/structs.g.dart';

/// @nodoc
const IID_ISoftwareBitmapNative = '{94BC8415-04EA-4B2E-AF13-4DE95AA898EB}';

/// {@category Interface}
/// {@category com}
class ISoftwareBitmapNative extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ISoftwareBitmapNative(Pointer<COMObject> ptr) : super(ptr);

  int GetData(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );
}

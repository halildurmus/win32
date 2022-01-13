// IServiceSxsConfig.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IServiceSxsConfig = '{C7CD7379-F3F2-4634-811B-703281D73E08}';

/// {@category Interface}
/// {@category com}
class IServiceSxsConfig extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IServiceSxsConfig(Pointer<COMObject> ptr) : super(ptr);

  int SxsConfig(
    int scsConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scsConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scsConfig,
          )>()(
        ptr.ref.lpVtbl,
        scsConfig,
      );

  int SxsName(
    Pointer<Utf16> szSxsName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szSxsName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szSxsName,
          )>()(
        ptr.ref.lpVtbl,
        szSxsName,
      );

  int SxsDirectory(
    Pointer<Utf16> szSxsDirectory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szSxsDirectory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szSxsDirectory,
          )>()(
        ptr.ref.lpVtbl,
        szSxsDirectory,
      );
}

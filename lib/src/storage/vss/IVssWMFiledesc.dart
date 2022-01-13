// IVssWMFiledesc.dart

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
const IID_IVssWMFiledesc = 'null';

/// {@category Interface}
/// {@category com}
class IVssWMFiledesc extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IVssWMFiledesc(Pointer<COMObject> ptr) : super(ptr);

  int GetPath(
    Pointer<Pointer<Utf16>> pbstrPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPath,
          )>()(
        ptr.ref.lpVtbl,
        pbstrPath,
      );

  int GetFilespec(
    Pointer<Pointer<Utf16>> pbstrFilespec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFilespec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrFilespec,
          )>()(
        ptr.ref.lpVtbl,
        pbstrFilespec,
      );

  int GetRecursive(
    Pointer<Bool> pbRecursive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Bool> pbRecursive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Bool> pbRecursive,
          )>()(
        ptr.ref.lpVtbl,
        pbRecursive,
      );

  int GetAlternateLocation(
    Pointer<Pointer<Utf16>> pbstrAlternateLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrAlternateLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrAlternateLocation,
          )>()(
        ptr.ref.lpVtbl,
        pbstrAlternateLocation,
      );

  int GetBackupTypeMask(
    Pointer<Uint32> pdwTypeMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwTypeMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwTypeMask,
          )>()(
        ptr.ref.lpVtbl,
        pdwTypeMask,
      );
}

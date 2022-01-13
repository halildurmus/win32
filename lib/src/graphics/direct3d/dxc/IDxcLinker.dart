// IDxcLinker.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct3d/dxc/IDxcBlob.dart';
import '../../../graphics/direct3d/dxc/IDxcOperationResult.dart';

/// @nodoc
const IID_IDxcLinker = '{F1B5BE2A-62DD-4327-A1C2-42AC1E1E78E6}';

/// {@category Interface}
/// {@category com}
class IDxcLinker extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDxcLinker(Pointer<COMObject> ptr) : super(ptr);

  int RegisterLibrary(
    Pointer<Utf16> pLibName,
    Pointer<COMObject> pLib,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pLibName,
            Pointer<COMObject> pLib,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pLibName,
            Pointer<COMObject> pLib,
          )>()(
        ptr.ref.lpVtbl,
        pLibName,
        pLib,
      );

  int Link(
    Pointer<Utf16> pEntryName,
    Pointer<Utf16> pTargetProfile,
    Pointer<Pointer<Utf16>> pLibNames,
    int libCount,
    Pointer<Pointer<Utf16>> pArguments,
    int argCount,
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pEntryName,
            Pointer<Utf16> pTargetProfile,
            Pointer<Pointer<Utf16>> pLibNames,
            Uint32 libCount,
            Pointer<Pointer<Utf16>> pArguments,
            Uint32 argCount,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pEntryName,
            Pointer<Utf16> pTargetProfile,
            Pointer<Pointer<Utf16>> pLibNames,
            int libCount,
            Pointer<Pointer<Utf16>> pArguments,
            int argCount,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        pEntryName,
        pTargetProfile,
        pLibNames,
        libCount,
        pArguments,
        argCount,
        ppResult,
      );
}

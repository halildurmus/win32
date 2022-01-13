// IDxcCompilerArgs.dart

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
import '../../../graphics/direct3d/dxc/structs.g.dart';

/// @nodoc
const IID_IDxcCompilerArgs = '{73EFFE2A-70DC-45F8-9690-EFF64C02429D}';

/// {@category Interface}
/// {@category com}
class IDxcCompilerArgs extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDxcCompilerArgs(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Pointer<Utf16>> GetArguments() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<Pointer<Utf16>> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<Pointer<Utf16>> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetCount() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int AddArguments(
    Pointer<Pointer<Utf16>> pArguments,
    int argCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pArguments,
            Uint32 argCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pArguments,
            int argCount,
          )>()(
        ptr.ref.lpVtbl,
        pArguments,
        argCount,
      );

  int AddArgumentsUTF8(
    Pointer<Pointer<Utf8>> pArguments,
    int argCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf8>> pArguments,
            Uint32 argCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf8>> pArguments,
            int argCount,
          )>()(
        ptr.ref.lpVtbl,
        pArguments,
        argCount,
      );

  int AddDefines(
    Pointer<DxcDefine> pDefines,
    int defineCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DxcDefine> pDefines,
            Uint32 defineCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DxcDefine> pDefines,
            int defineCount,
          )>()(
        ptr.ref.lpVtbl,
        pDefines,
        defineCount,
      );
}

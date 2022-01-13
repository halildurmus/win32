// IWMPConvert.dart

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
const IID_IWMPConvert = '{D683162F-57D4-4108-8373-4A9676D1C2E9}';

/// {@category Interface}
/// {@category com}
class IWMPConvert extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMPConvert(Pointer<COMObject> ptr) : super(ptr);

  int ConvertFile(
    Pointer<Utf16> bstrInputFile,
    Pointer<Utf16> bstrDestinationFolder,
    Pointer<Pointer<Utf16>> pbstrOutputFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrInputFile,
            Pointer<Utf16> bstrDestinationFolder,
            Pointer<Pointer<Utf16>> pbstrOutputFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrInputFile,
            Pointer<Utf16> bstrDestinationFolder,
            Pointer<Pointer<Utf16>> pbstrOutputFile,
          )>()(
        ptr.ref.lpVtbl,
        bstrInputFile,
        bstrDestinationFolder,
        pbstrOutputFile,
      );

  int GetErrorURL(
    Pointer<Pointer<Utf16>> pbstrURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrURL,
          )>()(
        ptr.ref.lpVtbl,
        pbstrURL,
      );
}

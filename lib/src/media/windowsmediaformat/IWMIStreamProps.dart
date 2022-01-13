// IWMIStreamProps.dart

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
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMIStreamProps = '{6816DAD3-2B4B-4C8E-8149-874C3483A753}';

/// {@category Interface}
/// {@category com}
class IWMIStreamProps extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMIStreamProps(Pointer<COMObject> ptr) : super(ptr);

  int GetProperty(
    Pointer<Utf16> pszName,
    Pointer<Int32> pType,
    Pointer<Uint8> pValue,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
            Pointer<Int32> pType,
            Pointer<Uint8> pValue,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
        pType,
        pValue,
        pdwSize,
      );
}

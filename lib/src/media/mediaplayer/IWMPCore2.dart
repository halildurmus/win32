// IWMPCore2.dart

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

import '../../media/mediaplayer/IWMPCore.dart';
import '../../media/mediaplayer/IWMPDVD.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPCore2 = '{BC17E5B7-7561-4C18-BB90-17D485775659}';

/// {@category Interface}
/// {@category com}
class IWMPCore2 extends IWMPCore {
  // vtable begins at 28, is 1 entries long.
  IWMPCore2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get dvd {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDVD,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDVD,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

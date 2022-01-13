// IWMPMedia2.dart

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

import '../../media/mediaplayer/IWMPMedia.dart';
import '../../media/mediaplayer/IWMPErrorItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPMedia2 = '{AB7C88BB-143E-4EA4-ACC3-E4350B2106C3}';

/// {@category Interface}
/// {@category com}
class IWMPMedia2 extends IWMPMedia {
  // vtable begins at 25, is 1 entries long.
  IWMPMedia2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get error {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWMPErrorItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIWMPErrorItem,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

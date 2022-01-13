// IMSVidXDS.dart

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

import '../../media/directshow/IMSVidFeature.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidXDS = '{11EBC158-E712-4D1F-8BB3-01ED5274C4CE}';

/// {@category Interface}
/// {@category com}
class IMSVidXDS extends IMSVidFeature {
  // vtable begins at 16, is 1 entries long.
  IMSVidXDS(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get ChannelChangeInterface {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> punkCC,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> punkCC,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_MSVidXDS = '{0149EEDF-D08F-4142-8D73-D23903D21E90}';

/// {@category com}
class MSVidXDS extends IMSVidXDS {
  MSVidXDS(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidXDS.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidXDS);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidXDS);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidXDS(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

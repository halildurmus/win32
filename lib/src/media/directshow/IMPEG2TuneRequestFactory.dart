// IMPEG2TuneRequestFactory.dart

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

import '../../system/com/IDispatch.dart';
import '../../media/directshow/ITuningSpace.dart';
import '../../media/directshow/IMPEG2TuneRequest.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMPEG2TuneRequestFactory = '{14E11ABD-EE37-4893-9EA1-6964DE933E39}';

/// {@category Interface}
/// {@category com}
class IMPEG2TuneRequestFactory extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IMPEG2TuneRequestFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateTuneRequest(
    Pointer<COMObject> TuningSpace,
    Pointer<Pointer<COMObject>> TuneRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> TuningSpace,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> TuningSpace,
            Pointer<Pointer<COMObject>> TuneRequest,
          )>()(
        ptr.ref.lpVtbl,
        TuningSpace,
        TuneRequest,
      );
}

/// @nodoc
const CLSID_MPEG2TuneRequestFactory = '{2C63E4EB-4CEA-41B8-919C-E947EA19A77C}';

/// {@category com}
class MPEG2TuneRequestFactory extends IMPEG2TuneRequestFactory {
  MPEG2TuneRequestFactory(Pointer<COMObject> ptr) : super(ptr);

  factory MPEG2TuneRequestFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MPEG2TuneRequestFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMPEG2TuneRequestFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MPEG2TuneRequestFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

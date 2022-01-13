// IPersistTuneXmlUtility2.dart

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

import '../../media/directshow/IPersistTuneXmlUtility.dart';
import '../../media/directshow/ITuneRequest.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPersistTuneXmlUtility2 = '{992E165F-EA24-4B2F-9A1D-009D92120451}';

/// {@category Interface}
/// {@category com}
class IPersistTuneXmlUtility2 extends IPersistTuneXmlUtility {
  // vtable begins at 4, is 1 entries long.
  IPersistTuneXmlUtility2(Pointer<COMObject> ptr) : super(ptr);

  int Serialize(
    Pointer<COMObject> piTuneRequest,
    Pointer<Pointer<Utf16>> pString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piTuneRequest,
            Pointer<Pointer<Utf16>> pString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piTuneRequest,
            Pointer<Pointer<Utf16>> pString,
          )>()(
        ptr.ref.lpVtbl,
        piTuneRequest,
        pString,
      );
}

// IWbemUnsecuredApartment.dart

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

import '../../system/wmi/IUnsecuredApartment.dart';
import '../../system/wmi/IWbemObjectSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWbemUnsecuredApartment = '{31739D04-3471-4CF4-9A7C-57A44AE71956}';

/// {@category Interface}
/// {@category com}
class IWbemUnsecuredApartment extends IUnsecuredApartment {
  // vtable begins at 4, is 1 entries long.
  IWbemUnsecuredApartment(Pointer<COMObject> ptr) : super(ptr);

  int CreateSinkStub(
    Pointer<COMObject> pSink,
    int dwFlags,
    Pointer<Utf16> wszReserved,
    Pointer<Pointer<COMObject>> ppStub,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSink,
            Uint32 dwFlags,
            Pointer<Utf16> wszReserved,
            Pointer<Pointer<COMObject>> ppStub,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSink,
            int dwFlags,
            Pointer<Utf16> wszReserved,
            Pointer<Pointer<COMObject>> ppStub,
          )>()(
        ptr.ref.lpVtbl,
        pSink,
        dwFlags,
        wszReserved,
        ppStub,
      );
}

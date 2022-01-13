// IDataAdviseHolder.dart

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
import '../../system/com/IDataObject.dart';
import '../../system/com/structs.g.dart';
import '../../system/com/IAdviseSink.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IEnumSTATDATA.dart';

/// @nodoc
const IID_IDataAdviseHolder = '{00000110-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IDataAdviseHolder extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDataAdviseHolder(Pointer<COMObject> ptr) : super(ptr);

  int Advise(
    Pointer<COMObject> pDataObject,
    Pointer<FORMATETC> pFetc,
    int advf,
    Pointer<COMObject> pAdvise,
    Pointer<Uint32> pdwConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDataObject,
            Pointer<FORMATETC> pFetc,
            Uint32 advf,
            Pointer<COMObject> pAdvise,
            Pointer<Uint32> pdwConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDataObject,
            Pointer<FORMATETC> pFetc,
            int advf,
            Pointer<COMObject> pAdvise,
            Pointer<Uint32> pdwConnection,
          )>()(
        ptr.ref.lpVtbl,
        pDataObject,
        pFetc,
        advf,
        pAdvise,
        pdwConnection,
      );

  int Unadvise(
    int dwConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwConnection,
          )>()(
        ptr.ref.lpVtbl,
        dwConnection,
      );

  int EnumAdvise(
    Pointer<Pointer<COMObject>> ppenumAdvise,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenumAdvise,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenumAdvise,
          )>()(
        ptr.ref.lpVtbl,
        ppenumAdvise,
      );

  int SendOnDataChange(
    Pointer<COMObject> pDataObject,
    int dwReserved,
    int advf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDataObject,
            Uint32 dwReserved,
            Uint32 advf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDataObject,
            int dwReserved,
            int advf,
          )>()(
        ptr.ref.lpVtbl,
        pDataObject,
        dwReserved,
        advf,
      );
}

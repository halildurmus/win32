// IEnumWiaItem2.dart

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
import '../../devices/imageacquisition/IWiaItem2.dart';
import '../../foundation/structs.g.dart';
import '../../devices/imageacquisition/IEnumWiaItem2.dart';

/// @nodoc
const IID_IEnumWiaItem2 = '{59970AF4-CD0D-44D9-AB24-52295630E582}';

/// {@category Interface}
/// {@category com}
class IEnumWiaItem2 extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IEnumWiaItem2(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cElt,
    Pointer<Pointer<COMObject>> ppIWiaItem2,
    Pointer<Uint32> pcEltFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cElt,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
            Pointer<Uint32> pcEltFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cElt,
            Pointer<Pointer<COMObject>> ppIWiaItem2,
            Pointer<Uint32> pcEltFetched,
          )>()(
        ptr.ref.lpVtbl,
        cElt,
        ppIWiaItem2,
        pcEltFetched,
      );

  int Skip(
    int cElt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cElt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cElt,
          )>()(
        ptr.ref.lpVtbl,
        cElt,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppIEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppIEnum,
      );

  int GetCount(
    Pointer<Uint32> cElt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> cElt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> cElt,
          )>()(
        ptr.ref.lpVtbl,
        cElt,
      );
}

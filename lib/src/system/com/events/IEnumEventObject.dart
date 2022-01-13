// IEnumEventObject.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/events/IEnumEventObject.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IEnumEventObject = '{F4A07D63-2E25-11D1-9964-00C04FBBB345}';

/// {@category Interface}
/// {@category com}
class IEnumEventObject extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumEventObject(Pointer<COMObject> ptr) : super(ptr);

  int Clone(
    Pointer<Pointer<COMObject>> ppInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppInterface,
          )>()(
        ptr.ref.lpVtbl,
        ppInterface,
      );

  int Next(
    int cReqElem,
    Pointer<Pointer<COMObject>> ppInterface,
    Pointer<Uint32> cRetElem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cReqElem,
            Pointer<Pointer<COMObject>> ppInterface,
            Pointer<Uint32> cRetElem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cReqElem,
            Pointer<Pointer<COMObject>> ppInterface,
            Pointer<Uint32> cRetElem,
          )>()(
        ptr.ref.lpVtbl,
        cReqElem,
        ppInterface,
        cRetElem,
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

  int Skip(
    int cSkipElem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cSkipElem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cSkipElem,
          )>()(
        ptr.ref.lpVtbl,
        cSkipElem,
      );
}

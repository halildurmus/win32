// IWMStreamList.dart

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

/// @nodoc
const IID_IWMStreamList = '{96406BDD-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMStreamList extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMStreamList(Pointer<COMObject> ptr) : super(ptr);

  int GetStreams(
    Pointer<Uint16> pwStreamNumArray,
    Pointer<Uint16> pcStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwStreamNumArray,
            Pointer<Uint16> pcStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwStreamNumArray,
            Pointer<Uint16> pcStreams,
          )>()(
        ptr.ref.lpVtbl,
        pwStreamNumArray,
        pcStreams,
      );

  int AddStream(
    int wStreamNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
      );

  int RemoveStream(
    int wStreamNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
      );
}

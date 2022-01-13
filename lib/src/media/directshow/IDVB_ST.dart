// IDVB_ST.dart

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
import '../../media/directshow/ISectionList.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDVB_ST = '{4D5B9F23-2A02-45DE-BCDA-5D5DBFBFBE62}';

/// {@category Interface}
/// {@category com}
class IDVB_ST extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDVB_ST(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pSectionList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSectionList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSectionList,
          )>()(
        ptr.ref.lpVtbl,
        pSectionList,
      );

  int GetDataLength(
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        pwVal,
      );

  int GetData(
    Pointer<Pointer<Uint8>> ppData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppData,
          )>()(
        ptr.ref.lpVtbl,
        ppData,
      );
}

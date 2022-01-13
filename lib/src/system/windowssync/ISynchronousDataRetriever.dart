// ISynchronousDataRetriever.dart

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
import '../../system/windowssync/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ILoadChangeContext.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISynchronousDataRetriever = '{9B22F2A9-A4CD-4648-9D8E-3A510D4DA04B}';

/// {@category Interface}
/// {@category com}
class ISynchronousDataRetriever extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISynchronousDataRetriever(Pointer<COMObject> ptr) : super(ptr);

  int GetIdParameters(
    Pointer<ID_PARAMETERS> pIdParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ID_PARAMETERS> pIdParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ID_PARAMETERS> pIdParameters,
          )>()(
        ptr.ref.lpVtbl,
        pIdParameters,
      );

  int LoadChangeData(
    Pointer<COMObject> pLoadChangeContext,
    Pointer<Pointer<COMObject>> ppUnkData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLoadChangeContext,
            Pointer<Pointer<COMObject>> ppUnkData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLoadChangeContext,
            Pointer<Pointer<COMObject>> ppUnkData,
          )>()(
        ptr.ref.lpVtbl,
        pLoadChangeContext,
        ppUnkData,
      );
}

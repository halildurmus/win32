// IAsynchronousDataRetriever.dart

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
import '../../system/windowssync/IDataRetrieverCallback.dart';
import '../../system/windowssync/ILoadChangeContext.dart';

/// @nodoc
const IID_IAsynchronousDataRetriever = '{9FC7E470-61EA-4A88-9BE4-DF56A27CFEF2}';

/// {@category Interface}
/// {@category com}
class IAsynchronousDataRetriever extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAsynchronousDataRetriever(Pointer<COMObject> ptr) : super(ptr);

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

  int RegisterCallback(
    Pointer<COMObject> pDataRetrieverCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDataRetrieverCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDataRetrieverCallback,
          )>()(
        ptr.ref.lpVtbl,
        pDataRetrieverCallback,
      );

  int RevokeCallback(
    Pointer<COMObject> pDataRetrieverCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDataRetrieverCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDataRetrieverCallback,
          )>()(
        ptr.ref.lpVtbl,
        pDataRetrieverCallback,
      );

  int LoadChangeData(
    Pointer<COMObject> pLoadChangeContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pLoadChangeContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pLoadChangeContext,
          )>()(
        ptr.ref.lpVtbl,
        pLoadChangeContext,
      );
}

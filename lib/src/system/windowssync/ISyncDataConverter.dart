// ISyncDataConverter.dart

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
import '../../specialTypes.dart';
import '../../system/windowssync/IEnumSyncChanges.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ILoadChangeContext.dart';

/// @nodoc
const IID_ISyncDataConverter = '{435D4861-68D5-44AA-A0F9-72A0B00EF9CF}';

/// {@category Interface}
/// {@category com}
class ISyncDataConverter extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISyncDataConverter(Pointer<COMObject> ptr) : super(ptr);

  int ConvertDataRetrieverFromProviderFormat(
    Pointer<COMObject> pUnkDataRetrieverIn,
    Pointer<COMObject> pEnumSyncChanges,
    Pointer<Pointer<COMObject>> ppUnkDataOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkDataRetrieverIn,
            Pointer<COMObject> pEnumSyncChanges,
            Pointer<Pointer<COMObject>> ppUnkDataOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkDataRetrieverIn,
            Pointer<COMObject> pEnumSyncChanges,
            Pointer<Pointer<COMObject>> ppUnkDataOut,
          )>()(
        ptr.ref.lpVtbl,
        pUnkDataRetrieverIn,
        pEnumSyncChanges,
        ppUnkDataOut,
      );

  int ConvertDataRetrieverToProviderFormat(
    Pointer<COMObject> pUnkDataRetrieverIn,
    Pointer<COMObject> pEnumSyncChanges,
    Pointer<Pointer<COMObject>> ppUnkDataOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkDataRetrieverIn,
            Pointer<COMObject> pEnumSyncChanges,
            Pointer<Pointer<COMObject>> ppUnkDataOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkDataRetrieverIn,
            Pointer<COMObject> pEnumSyncChanges,
            Pointer<Pointer<COMObject>> ppUnkDataOut,
          )>()(
        ptr.ref.lpVtbl,
        pUnkDataRetrieverIn,
        pEnumSyncChanges,
        ppUnkDataOut,
      );

  int ConvertDataFromProviderFormat(
    Pointer<COMObject> pDataContext,
    Pointer<COMObject> pUnkDataIn,
    Pointer<Pointer<COMObject>> ppUnkDataOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDataContext,
            Pointer<COMObject> pUnkDataIn,
            Pointer<Pointer<COMObject>> ppUnkDataOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDataContext,
            Pointer<COMObject> pUnkDataIn,
            Pointer<Pointer<COMObject>> ppUnkDataOut,
          )>()(
        ptr.ref.lpVtbl,
        pDataContext,
        pUnkDataIn,
        ppUnkDataOut,
      );

  int ConvertDataToProviderFormat(
    Pointer<COMObject> pDataContext,
    Pointer<COMObject> pUnkDataOut,
    Pointer<Pointer<COMObject>> ppUnkDataout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDataContext,
            Pointer<COMObject> pUnkDataOut,
            Pointer<Pointer<COMObject>> ppUnkDataout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDataContext,
            Pointer<COMObject> pUnkDataOut,
            Pointer<Pointer<COMObject>> ppUnkDataout,
          )>()(
        ptr.ref.lpVtbl,
        pDataContext,
        pUnkDataOut,
        ppUnkDataout,
      );
}

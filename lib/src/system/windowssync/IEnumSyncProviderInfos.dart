// IEnumSyncProviderInfos.dart

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
import '../../system/windowssync/ISyncProviderInfo.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/IEnumSyncProviderInfos.dart';

/// @nodoc
const IID_IEnumSyncProviderInfos = '{A04BA850-5EB1-460D-A973-393FCB608A11}';

/// {@category Interface}
/// {@category com}
class IEnumSyncProviderInfos extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumSyncProviderInfos(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cInstances,
    Pointer<Pointer<COMObject>> ppSyncProviderInfo,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cInstances,
            Pointer<Pointer<COMObject>> ppSyncProviderInfo,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cInstances,
            Pointer<Pointer<COMObject>> ppSyncProviderInfo,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cInstances,
        ppSyncProviderInfo,
        pcFetched,
      );

  int Skip(
    int cInstances,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cInstances,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cInstances,
          )>()(
        ptr.ref.lpVtbl,
        cInstances,
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
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}

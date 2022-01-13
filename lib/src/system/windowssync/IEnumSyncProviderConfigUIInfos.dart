// IEnumSyncProviderConfigUIInfos.dart

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
import '../../system/windowssync/ISyncProviderConfigUIInfo.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/IEnumSyncProviderConfigUIInfos.dart';

/// @nodoc
const IID_IEnumSyncProviderConfigUIInfos =
    '{F6BE2602-17C6-4658-A2D7-68ED3330F641}';

/// {@category Interface}
/// {@category com}
class IEnumSyncProviderConfigUIInfos extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumSyncProviderConfigUIInfos(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cFactories,
    Pointer<Pointer<COMObject>> ppSyncProviderConfigUIInfo,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cFactories,
            Pointer<Pointer<COMObject>> ppSyncProviderConfigUIInfo,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cFactories,
            Pointer<Pointer<COMObject>> ppSyncProviderConfigUIInfo,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cFactories,
        ppSyncProviderConfigUIInfo,
        pcFetched,
      );

  int Skip(
    int cFactories,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cFactories,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cFactories,
          )>()(
        ptr.ref.lpVtbl,
        cFactories,
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

// IDXCoreAdapterList.dart

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
import '../../graphics/dxcore/structs.g.dart';

/// @nodoc
const IID_IDXCoreAdapterList = '{526C7776-40E9-459B-B711-F32AD76DFC28}';

/// {@category Interface}
/// {@category com}
class IDXCoreAdapterList extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDXCoreAdapterList(Pointer<COMObject> ptr) : super(ptr);

  int GetAdapter(
    int index,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvAdapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapter,
          )>()(
        ptr.ref.lpVtbl,
        index,
        riid,
        ppvAdapter,
      );

  int GetAdapterCount() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  bool IsStale() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetFactory(
    Pointer<GUID> riid,
    Pointer<Pointer> ppvFactory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvFactory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvFactory,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppvFactory,
      );

  int Sort(
    int numPreferences,
    Pointer<Uint32> preferences,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 numPreferences,
            Pointer<Uint32> preferences,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int numPreferences,
            Pointer<Uint32> preferences,
          )>()(
        ptr.ref.lpVtbl,
        numPreferences,
        preferences,
      );

  bool IsAdapterPreferenceSupported(
    int preference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Bool Function(
            Pointer,
            Uint32 preference,
          )>>>()
          .value
          .asFunction<
              bool Function(
            Pointer,
            int preference,
          )>()(
        ptr.ref.lpVtbl,
        preference,
      );
}

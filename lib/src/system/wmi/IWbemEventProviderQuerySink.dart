// IWbemEventProviderQuerySink.dart

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
const IID_IWbemEventProviderQuerySink =
    '{580ACAF8-FA1C-11D0-AD72-00C04FD8FDFF}';

/// {@category Interface}
/// {@category com}
class IWbemEventProviderQuerySink extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWbemEventProviderQuerySink(Pointer<COMObject> ptr) : super(ptr);

  int NewQuery(
    int dwId,
    Pointer<Uint16> wszQueryLanguage,
    Pointer<Uint16> wszQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwId,
            Pointer<Uint16> wszQueryLanguage,
            Pointer<Uint16> wszQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwId,
            Pointer<Uint16> wszQueryLanguage,
            Pointer<Uint16> wszQuery,
          )>()(
        ptr.ref.lpVtbl,
        dwId,
        wszQueryLanguage,
        wszQuery,
      );

  int CancelQuery(
    int dwId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwId,
          )>()(
        ptr.ref.lpVtbl,
        dwId,
      );
}

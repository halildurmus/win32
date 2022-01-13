// IOfflineFilesEventsFilter.dart

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
import '../../storage/offlinefiles/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesEventsFilter = '{33FC4E1B-0716-40FA-BA65-6E62A84A846F}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesEventsFilter extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IOfflineFilesEventsFilter(Pointer<COMObject> ptr) : super(ptr);

  int GetPathFilter(
    Pointer<Pointer<Utf16>> ppszFilter,
    Pointer<Int32> pMatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszFilter,
            Pointer<Int32> pMatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszFilter,
            Pointer<Int32> pMatch,
          )>()(
        ptr.ref.lpVtbl,
        ppszFilter,
        pMatch,
      );

  int GetIncludedEvents(
    int cElements,
    Pointer<Int32> prgEvents,
    Pointer<Uint32> pcEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cElements,
            Pointer<Int32> prgEvents,
            Pointer<Uint32> pcEvents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cElements,
            Pointer<Int32> prgEvents,
            Pointer<Uint32> pcEvents,
          )>()(
        ptr.ref.lpVtbl,
        cElements,
        prgEvents,
        pcEvents,
      );

  int GetExcludedEvents(
    int cElements,
    Pointer<Int32> prgEvents,
    Pointer<Uint32> pcEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cElements,
            Pointer<Int32> prgEvents,
            Pointer<Uint32> pcEvents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cElements,
            Pointer<Int32> prgEvents,
            Pointer<Uint32> pcEvents,
          )>()(
        ptr.ref.lpVtbl,
        cElements,
        prgEvents,
        pcEvents,
      );
}

// IWinSATInitiateEvents.dart

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
const IID_IWinSATInitiateEvents = '{262A1918-BA0D-41D5-92C2-FAB4633EE74F}';

/// {@category Interface}
/// {@category com}
class IWinSATInitiateEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWinSATInitiateEvents(Pointer<COMObject> ptr) : super(ptr);

  int WinSATComplete(
    int hresult,
    Pointer<Utf16> strDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hresult,
            Pointer<Utf16> strDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hresult,
            Pointer<Utf16> strDescription,
          )>()(
        ptr.ref.lpVtbl,
        hresult,
        strDescription,
      );

  int WinSATUpdate(
    int uCurrentTick,
    int uTickTotal,
    Pointer<Utf16> strCurrentState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uCurrentTick,
            Uint32 uTickTotal,
            Pointer<Utf16> strCurrentState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uCurrentTick,
            int uTickTotal,
            Pointer<Utf16> strCurrentState,
          )>()(
        ptr.ref.lpVtbl,
        uCurrentTick,
        uTickTotal,
        strCurrentState,
      );
}

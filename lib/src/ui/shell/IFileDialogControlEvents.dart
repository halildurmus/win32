// IFileDialogControlEvents.dart

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
import '../../ui/shell/IFileDialogCustomize.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFileDialogControlEvents = '{36116642-D713-4B97-9B83-7484A9D00433}';

/// {@category Interface}
/// {@category com}
class IFileDialogControlEvents extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IFileDialogControlEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnItemSelected(
    Pointer<COMObject> pfdc,
    int dwIDCtl,
    int dwIDItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfdc,
            Uint32 dwIDCtl,
            Uint32 dwIDItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfdc,
            int dwIDCtl,
            int dwIDItem,
          )>()(
        ptr.ref.lpVtbl,
        pfdc,
        dwIDCtl,
        dwIDItem,
      );

  int OnButtonClicked(
    Pointer<COMObject> pfdc,
    int dwIDCtl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfdc,
            Uint32 dwIDCtl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfdc,
            int dwIDCtl,
          )>()(
        ptr.ref.lpVtbl,
        pfdc,
        dwIDCtl,
      );

  int OnCheckButtonToggled(
    Pointer<COMObject> pfdc,
    int dwIDCtl,
    int bChecked,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfdc,
            Uint32 dwIDCtl,
            Int32 bChecked,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfdc,
            int dwIDCtl,
            int bChecked,
          )>()(
        ptr.ref.lpVtbl,
        pfdc,
        dwIDCtl,
        bChecked,
      );

  int OnControlActivating(
    Pointer<COMObject> pfdc,
    int dwIDCtl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pfdc,
            Uint32 dwIDCtl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pfdc,
            int dwIDCtl,
          )>()(
        ptr.ref.lpVtbl,
        pfdc,
        dwIDCtl,
      );
}

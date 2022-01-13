// IExplorerCommand.dart

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
import '../../ui/shell/IShellItemArray.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IBindCtx.dart';
import '../../ui/shell/IEnumExplorerCommand.dart';

/// @nodoc
const IID_IExplorerCommand = '{A08CE4D0-FA25-44AB-B57C-C7B1C323E0B9}';

/// {@category Interface}
/// {@category com}
class IExplorerCommand extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IExplorerCommand(Pointer<COMObject> ptr) : super(ptr);

  int GetTitle(
    Pointer<COMObject> psiItemArray,
    Pointer<Pointer<Utf16>> ppszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            Pointer<Pointer<Utf16>> ppszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            Pointer<Pointer<Utf16>> ppszName,
          )>()(
        ptr.ref.lpVtbl,
        psiItemArray,
        ppszName,
      );

  int GetIcon(
    Pointer<COMObject> psiItemArray,
    Pointer<Pointer<Utf16>> ppszIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            Pointer<Pointer<Utf16>> ppszIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            Pointer<Pointer<Utf16>> ppszIcon,
          )>()(
        ptr.ref.lpVtbl,
        psiItemArray,
        ppszIcon,
      );

  int GetToolTip(
    Pointer<COMObject> psiItemArray,
    Pointer<Pointer<Utf16>> ppszInfotip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            Pointer<Pointer<Utf16>> ppszInfotip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            Pointer<Pointer<Utf16>> ppszInfotip,
          )>()(
        ptr.ref.lpVtbl,
        psiItemArray,
        ppszInfotip,
      );

  int GetCanonicalName(
    Pointer<GUID> pguidCommandName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidCommandName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidCommandName,
          )>()(
        ptr.ref.lpVtbl,
        pguidCommandName,
      );

  int GetState(
    Pointer<COMObject> psiItemArray,
    int fOkToBeSlow,
    Pointer<Uint32> pCmdState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            Int32 fOkToBeSlow,
            Pointer<Uint32> pCmdState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            int fOkToBeSlow,
            Pointer<Uint32> pCmdState,
          )>()(
        ptr.ref.lpVtbl,
        psiItemArray,
        fOkToBeSlow,
        pCmdState,
      );

  int Invoke(
    Pointer<COMObject> psiItemArray,
    Pointer<COMObject> pbc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            Pointer<COMObject> pbc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiItemArray,
            Pointer<COMObject> pbc,
          )>()(
        ptr.ref.lpVtbl,
        psiItemArray,
        pbc,
      );

  int GetFlags(
    Pointer<Uint32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFlags,
      );

  int EnumSubCommands(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

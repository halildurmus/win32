// ICloneViewHelper.dart

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
const IID_ICloneViewHelper = '{F6A3D4C4-5632-4D83-B0A1-FB88712B1EB7}';

/// {@category Interface}
/// {@category com}
class ICloneViewHelper extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ICloneViewHelper(Pointer<COMObject> ptr) : super(ptr);

  int GetConnectedIDs(
    Pointer<Utf16> wszAdaptorName,
    Pointer<Uint32> pulCount,
    Pointer<Uint32> pulID,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszAdaptorName,
            Pointer<Uint32> pulCount,
            Pointer<Uint32> pulID,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszAdaptorName,
            Pointer<Uint32> pulCount,
            Pointer<Uint32> pulID,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        wszAdaptorName,
        pulCount,
        pulID,
        ulFlags,
      );

  int GetActiveTopology(
    Pointer<Utf16> wszAdaptorName,
    int ulSourceID,
    Pointer<Uint32> pulCount,
    Pointer<Uint32> pulTargetID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszAdaptorName,
            Uint32 ulSourceID,
            Pointer<Uint32> pulCount,
            Pointer<Uint32> pulTargetID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszAdaptorName,
            int ulSourceID,
            Pointer<Uint32> pulCount,
            Pointer<Uint32> pulTargetID,
          )>()(
        ptr.ref.lpVtbl,
        wszAdaptorName,
        ulSourceID,
        pulCount,
        pulTargetID,
      );

  int SetActiveTopology(
    Pointer<Utf16> wszAdaptorName,
    int ulSourceID,
    int ulCount,
    Pointer<Uint32> pulTargetID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszAdaptorName,
            Uint32 ulSourceID,
            Uint32 ulCount,
            Pointer<Uint32> pulTargetID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszAdaptorName,
            int ulSourceID,
            int ulCount,
            Pointer<Uint32> pulTargetID,
          )>()(
        ptr.ref.lpVtbl,
        wszAdaptorName,
        ulSourceID,
        ulCount,
        pulTargetID,
      );

  int Commit(
    int fFinalCall,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fFinalCall,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fFinalCall,
          )>()(
        ptr.ref.lpVtbl,
        fFinalCall,
      );
}

// IEnumTfInputProcessorProfiles.dart

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
import '../../ui/textservices/IEnumTfInputProcessorProfiles.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/structs.g.dart';

/// @nodoc
const IID_IEnumTfInputProcessorProfiles =
    '{71C6E74D-0F28-11D8-A82A-00065B84435C}';

/// {@category Interface}
/// {@category com}
class IEnumTfInputProcessorProfiles extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumTfInputProcessorProfiles(Pointer<COMObject> ptr) : super(ptr);

  int Clone(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Next(
    int ulCount,
    Pointer<TF_INPUTPROCESSORPROFILE> pProfile,
    Pointer<Uint32> pcFetch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCount,
            Pointer<TF_INPUTPROCESSORPROFILE> pProfile,
            Pointer<Uint32> pcFetch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCount,
            Pointer<TF_INPUTPROCESSORPROFILE> pProfile,
            Pointer<Uint32> pcFetch,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
        pProfile,
        pcFetch,
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

  int Skip(
    int ulCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCount,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
      );
}

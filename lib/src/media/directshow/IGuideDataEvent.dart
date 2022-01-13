// IGuideDataEvent.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IGuideDataEvent = '{EFDA0C80-F395-42C3-9B3C-56B37DEC7BB7}';

/// {@category Interface}
/// {@category com}
class IGuideDataEvent extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IGuideDataEvent(Pointer<COMObject> ptr) : super(ptr);

  int GuideDataAcquired() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int ProgramChanged(
    VARIANT varProgramDescriptionID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varProgramDescriptionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varProgramDescriptionID,
          )>()(
        ptr.ref.lpVtbl,
        varProgramDescriptionID,
      );

  int ServiceChanged(
    VARIANT varServiceDescriptionID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varServiceDescriptionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varServiceDescriptionID,
          )>()(
        ptr.ref.lpVtbl,
        varServiceDescriptionID,
      );

  int ScheduleEntryChanged(
    VARIANT varScheduleEntryDescriptionID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varScheduleEntryDescriptionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varScheduleEntryDescriptionID,
          )>()(
        ptr.ref.lpVtbl,
        varScheduleEntryDescriptionID,
      );

  int ProgramDeleted(
    VARIANT varProgramDescriptionID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varProgramDescriptionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varProgramDescriptionID,
          )>()(
        ptr.ref.lpVtbl,
        varProgramDescriptionID,
      );

  int ServiceDeleted(
    VARIANT varServiceDescriptionID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varServiceDescriptionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varServiceDescriptionID,
          )>()(
        ptr.ref.lpVtbl,
        varServiceDescriptionID,
      );

  int ScheduleDeleted(
    VARIANT varScheduleEntryDescriptionID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varScheduleEntryDescriptionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varScheduleEntryDescriptionID,
          )>()(
        ptr.ref.lpVtbl,
        varScheduleEntryDescriptionID,
      );
}

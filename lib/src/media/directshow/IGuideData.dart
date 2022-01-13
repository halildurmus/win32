// IGuideData.dart

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
import '../../media/directshow/IEnumTuneRequests.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/ITuneRequest.dart';
import '../../media/directshow/IEnumGuideDataProperties.dart';
import '../../system/ole/IEnumVARIANT.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IGuideData = '{61571138-5B01-43CD-AEAF-60B784A0BF93}';

/// {@category Interface}
/// {@category com}
class IGuideData extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IGuideData(Pointer<COMObject> ptr) : super(ptr);

  int GetServices(
    Pointer<Pointer<COMObject>> ppEnumTuneRequests,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumTuneRequests,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumTuneRequests,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumTuneRequests,
      );

  int GetServiceProperties(
    Pointer<COMObject> pTuneRequest,
    Pointer<Pointer<COMObject>> ppEnumProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTuneRequest,
            Pointer<Pointer<COMObject>> ppEnumProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTuneRequest,
            Pointer<Pointer<COMObject>> ppEnumProperties,
          )>()(
        ptr.ref.lpVtbl,
        pTuneRequest,
        ppEnumProperties,
      );

  int GetGuideProgramIDs(
    Pointer<Pointer<COMObject>> pEnumPrograms,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pEnumPrograms,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pEnumPrograms,
          )>()(
        ptr.ref.lpVtbl,
        pEnumPrograms,
      );

  int GetProgramProperties(
    VARIANT varProgramDescriptionID,
    Pointer<Pointer<COMObject>> ppEnumProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varProgramDescriptionID,
            Pointer<Pointer<COMObject>> ppEnumProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varProgramDescriptionID,
            Pointer<Pointer<COMObject>> ppEnumProperties,
          )>()(
        ptr.ref.lpVtbl,
        varProgramDescriptionID,
        ppEnumProperties,
      );

  int GetScheduleEntryIDs(
    Pointer<Pointer<COMObject>> pEnumScheduleEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pEnumScheduleEntries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pEnumScheduleEntries,
          )>()(
        ptr.ref.lpVtbl,
        pEnumScheduleEntries,
      );

  int GetScheduleEntryProperties(
    VARIANT varScheduleEntryDescriptionID,
    Pointer<Pointer<COMObject>> ppEnumProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varScheduleEntryDescriptionID,
            Pointer<Pointer<COMObject>> ppEnumProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varScheduleEntryDescriptionID,
            Pointer<Pointer<COMObject>> ppEnumProperties,
          )>()(
        ptr.ref.lpVtbl,
        varScheduleEntryDescriptionID,
        ppEnumProperties,
      );
}

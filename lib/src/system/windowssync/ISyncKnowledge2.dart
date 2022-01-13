// ISyncKnowledge2.dart

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

import '../../system/windowssync/ISyncKnowledge.dart';
import '../../system/windowssync/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ISyncKnowledge2.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISyncKnowledge2 = '{ED0ADDC0-3B4B-46A1-9A45-45661D2114C8}';

/// {@category Interface}
/// {@category com}
class ISyncKnowledge2 extends ISyncKnowledge {
  // vtable begins at 27, is 14 entries long.
  ISyncKnowledge2(Pointer<COMObject> ptr) : super(ptr);

  int GetIdParameters(
    Pointer<ID_PARAMETERS> pIdParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ID_PARAMETERS> pIdParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ID_PARAMETERS> pIdParameters,
          )>()(
        ptr.ref.lpVtbl,
        pIdParameters,
      );

  int ProjectOntoColumnSet(
    Pointer<Pointer<Uint8>> ppColumns,
    int count,
    Pointer<Pointer<COMObject>> ppiKnowledgeOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppColumns,
            Uint32 count,
            Pointer<Pointer<COMObject>> ppiKnowledgeOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppColumns,
            int count,
            Pointer<Pointer<COMObject>> ppiKnowledgeOut,
          )>()(
        ptr.ref.lpVtbl,
        ppColumns,
        count,
        ppiKnowledgeOut,
      );

  int SerializeWithOptions(
    int targetFormatVersion,
    int dwFlags,
    Pointer<Uint8> pbBuffer,
    Pointer<Uint32> pdwSerializedSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 targetFormatVersion,
            Uint32 dwFlags,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pdwSerializedSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int targetFormatVersion,
            int dwFlags,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pdwSerializedSize,
          )>()(
        ptr.ref.lpVtbl,
        targetFormatVersion,
        dwFlags,
        pbBuffer,
        pdwSerializedSize,
      );

  int GetLowestUncontainedId(
    Pointer<COMObject> piSyncKnowledge,
    Pointer<Uint8> pbItemId,
    Pointer<Uint32> pcbItemIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piSyncKnowledge,
            Pointer<Uint8> pbItemId,
            Pointer<Uint32> pcbItemIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piSyncKnowledge,
            Pointer<Uint8> pbItemId,
            Pointer<Uint32> pcbItemIdSize,
          )>()(
        ptr.ref.lpVtbl,
        piSyncKnowledge,
        pbItemId,
        pcbItemIdSize,
      );

  int GetInspector(
    Pointer<GUID> riid,
    Pointer<Pointer> ppiInspector,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppiInspector,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppiInspector,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppiInspector,
      );

  int GetMinimumSupportedVersion(
    Pointer<Int32> pVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVersion,
          )>()(
        ptr.ref.lpVtbl,
        pVersion,
      );

  int GetStatistics(
    int which,
    Pointer<Uint32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 which,
            Pointer<Uint32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int which,
            Pointer<Uint32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        which,
        pValue,
      );

  int ContainsKnowledgeForItem(
    Pointer<COMObject> pKnowledge,
    Pointer<Uint8> pbItemId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pKnowledge,
            Pointer<Uint8> pbItemId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pKnowledge,
            Pointer<Uint8> pbItemId,
          )>()(
        ptr.ref.lpVtbl,
        pKnowledge,
        pbItemId,
      );

  int ContainsKnowledgeForChangeUnit(
    Pointer<COMObject> pKnowledge,
    Pointer<Uint8> pbItemId,
    Pointer<Uint8> pbChangeUnitId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pKnowledge,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pKnowledge,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
          )>()(
        ptr.ref.lpVtbl,
        pKnowledge,
        pbItemId,
        pbChangeUnitId,
      );

  int ProjectOntoKnowledgeWithPrerequisite(
    Pointer<COMObject> pPrerequisiteKnowledge,
    Pointer<COMObject> pTemplateKnowledge,
    Pointer<Pointer<COMObject>> ppProjectedKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPrerequisiteKnowledge,
            Pointer<COMObject> pTemplateKnowledge,
            Pointer<Pointer<COMObject>> ppProjectedKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPrerequisiteKnowledge,
            Pointer<COMObject> pTemplateKnowledge,
            Pointer<Pointer<COMObject>> ppProjectedKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pPrerequisiteKnowledge,
        pTemplateKnowledge,
        ppProjectedKnowledge,
      );

  int Complement(
    Pointer<COMObject> pSyncKnowledge,
    Pointer<Pointer<COMObject>> ppComplementedKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSyncKnowledge,
            Pointer<Pointer<COMObject>> ppComplementedKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSyncKnowledge,
            Pointer<Pointer<COMObject>> ppComplementedKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pSyncKnowledge,
        ppComplementedKnowledge,
      );

  int IntersectsWithKnowledge(
    Pointer<COMObject> pSyncKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSyncKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSyncKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pSyncKnowledge,
      );

  int GetKnowledgeCookie(
    Pointer<Pointer<COMObject>> ppKnowledgeCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppKnowledgeCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppKnowledgeCookie,
          )>()(
        ptr.ref.lpVtbl,
        ppKnowledgeCookie,
      );

  int CompareToKnowledgeCookie(
    Pointer<COMObject> pKnowledgeCookie,
    Pointer<Int32> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pKnowledgeCookie,
            Pointer<Int32> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pKnowledgeCookie,
            Pointer<Int32> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pKnowledgeCookie,
        pResult,
      );
}

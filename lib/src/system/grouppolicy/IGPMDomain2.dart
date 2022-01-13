// IGPMDomain2.dart

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

import '../../system/grouppolicy/IGPMDomain.dart';
import '../../system/grouppolicy/IGPMStarterGPO.dart';
import '../../foundation/structs.g.dart';
import '../../system/grouppolicy/IGPMGPO.dart';
import '../../system/grouppolicy/IGPMSearchCriteria.dart';
import '../../system/grouppolicy/IGPMStarterGPOCollection.dart';
import '../../specialTypes.dart';
import '../../system/grouppolicy/IGPMResult.dart';
import '../../system/grouppolicy/IGPMStarterGPOBackup.dart';

/// @nodoc
const IID_IGPMDomain2 = '{7CA6BB8B-F1EB-490A-938D-3C4E51C768E6}';

/// {@category Interface}
/// {@category com}
class IGPMDomain2 extends IGPMDomain {
  // vtable begins at 17, is 6 entries long.
  IGPMDomain2(Pointer<COMObject> ptr) : super(ptr);

  int CreateStarterGPO(
    Pointer<Pointer<COMObject>> ppnewTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppnewTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppnewTemplate,
          )>()(
        ptr.ref.lpVtbl,
        ppnewTemplate,
      );

  int CreateGPOFromStarterGPO(
    Pointer<COMObject> pGPOTemplate,
    Pointer<Pointer<COMObject>> ppnewGPO,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pGPOTemplate,
            Pointer<Pointer<COMObject>> ppnewGPO,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pGPOTemplate,
            Pointer<Pointer<COMObject>> ppnewGPO,
          )>()(
        ptr.ref.lpVtbl,
        pGPOTemplate,
        ppnewGPO,
      );

  int GetStarterGPO(
    Pointer<Utf16> bstrGuid,
    Pointer<Pointer<COMObject>> ppTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrGuid,
            Pointer<Pointer<COMObject>> ppTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrGuid,
            Pointer<Pointer<COMObject>> ppTemplate,
          )>()(
        ptr.ref.lpVtbl,
        bstrGuid,
        ppTemplate,
      );

  int SearchStarterGPOs(
    Pointer<COMObject> pIGPMSearchCriteria,
    Pointer<Pointer<COMObject>> ppIGPMTemplateCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<Pointer<COMObject>> ppIGPMTemplateCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIGPMSearchCriteria,
            Pointer<Pointer<COMObject>> ppIGPMTemplateCollection,
          )>()(
        ptr.ref.lpVtbl,
        pIGPMSearchCriteria,
        ppIGPMTemplateCollection,
      );

  int LoadStarterGPO(
    Pointer<Utf16> bstrLoadFile,
    int bOverwrite,
    Pointer<VARIANT> pvarGPMProgress,
    Pointer<VARIANT> pvarGPMCancel,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrLoadFile,
            Int16 bOverwrite,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrLoadFile,
            int bOverwrite,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>()(
        ptr.ref.lpVtbl,
        bstrLoadFile,
        bOverwrite,
        pvarGPMProgress,
        pvarGPMCancel,
        ppIGPMResult,
      );

  int RestoreStarterGPO(
    Pointer<COMObject> pIGPMTmplBackup,
    Pointer<VARIANT> pvarGPMProgress,
    Pointer<VARIANT> pvarGPMCancel,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIGPMTmplBackup,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIGPMTmplBackup,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>()(
        ptr.ref.lpVtbl,
        pIGPMTmplBackup,
        pvarGPMProgress,
        pvarGPMCancel,
        ppIGPMResult,
      );
}

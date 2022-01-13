// IDynamicConceptProviderConcept.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../specialTypes.dart';
import '../../../system/diagnostics/debug/IKeyStore.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDynamicConceptProviderConcept =
    '{95A7F7DD-602E-483F-9D06-A15C0EE13174}';

/// {@category Interface}
/// {@category com}
class IDynamicConceptProviderConcept extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDynamicConceptProviderConcept(Pointer<COMObject> ptr) : super(ptr);

  int GetConcept(
    Pointer<COMObject> contextObject,
    Pointer<GUID> conceptId,
    Pointer<Pointer<COMObject>> conceptInterface,
    Pointer<Pointer<COMObject>> conceptMetadata,
    Pointer<Bool> hasConcept,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<GUID> conceptId,
            Pointer<Pointer<COMObject>> conceptInterface,
            Pointer<Pointer<COMObject>> conceptMetadata,
            Pointer<Bool> hasConcept,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<GUID> conceptId,
            Pointer<Pointer<COMObject>> conceptInterface,
            Pointer<Pointer<COMObject>> conceptMetadata,
            Pointer<Bool> hasConcept,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        conceptId,
        conceptInterface,
        conceptMetadata,
        hasConcept,
      );

  int SetConcept(
    Pointer<COMObject> contextObject,
    Pointer<GUID> conceptId,
    Pointer<COMObject> conceptInterface,
    Pointer<COMObject> conceptMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<GUID> conceptId,
            Pointer<COMObject> conceptInterface,
            Pointer<COMObject> conceptMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contextObject,
            Pointer<GUID> conceptId,
            Pointer<COMObject> conceptInterface,
            Pointer<COMObject> conceptMetadata,
          )>()(
        ptr.ref.lpVtbl,
        contextObject,
        conceptId,
        conceptInterface,
        conceptMetadata,
      );

  int NotifyParent(
    Pointer<COMObject> parentModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> parentModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> parentModel,
          )>()(
        ptr.ref.lpVtbl,
        parentModel,
      );

  int NotifyParentChange(
    Pointer<COMObject> parentModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> parentModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> parentModel,
          )>()(
        ptr.ref.lpVtbl,
        parentModel,
      );

  int NotifyDestruct() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
}

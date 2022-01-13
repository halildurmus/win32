// IFsrmClassifierModuleImplementation.dart

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

import '../../storage/fileserverresourcemanager/IFsrmPipelineModuleImplementation.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmCollection.dart';
import '../../storage/fileserverresourcemanager/IFsrmPropertyBag.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IFsrmClassifierModuleImplementation =
    '{4C968FC6-6EDB-4051-9C18-73B7291AE106}';

/// {@category Interface}
/// {@category com}
class IFsrmClassifierModuleImplementation
    extends IFsrmPipelineModuleImplementation {
  // vtable begins at 9, is 6 entries long.
  IFsrmClassifierModuleImplementation(Pointer<COMObject> ptr) : super(ptr);

  VARIANT get LastModified {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> lastModified,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> lastModified,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int UseRulesAndDefinitions(
    Pointer<COMObject> rules,
    Pointer<COMObject> propertyDefinitions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> rules,
            Pointer<COMObject> propertyDefinitions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> rules,
            Pointer<COMObject> propertyDefinitions,
          )>()(
        ptr.ref.lpVtbl,
        rules,
        propertyDefinitions,
      );

  int OnBeginFile(
    Pointer<COMObject> propertyBag,
    Pointer<SAFEARRAY> arrayRuleIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> propertyBag,
            Pointer<SAFEARRAY> arrayRuleIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> propertyBag,
            Pointer<SAFEARRAY> arrayRuleIds,
          )>()(
        ptr.ref.lpVtbl,
        propertyBag,
        arrayRuleIds,
      );

  int DoesPropertyValueApply(
    Pointer<Utf16> property,
    Pointer<Utf16> value,
    Pointer<Int16> applyValue,
    GUID idRule,
    GUID idPropDef,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> property,
            Pointer<Utf16> value,
            Pointer<Int16> applyValue,
            GUID idRule,
            GUID idPropDef,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> property,
            Pointer<Utf16> value,
            Pointer<Int16> applyValue,
            GUID idRule,
            GUID idPropDef,
          )>()(
        ptr.ref.lpVtbl,
        property,
        value,
        applyValue,
        idRule,
        idPropDef,
      );

  int GetPropertyValueToApply(
    Pointer<Utf16> property,
    Pointer<Pointer<Utf16>> value,
    GUID idRule,
    GUID idPropDef,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> property,
            Pointer<Pointer<Utf16>> value,
            GUID idRule,
            GUID idPropDef,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> property,
            Pointer<Pointer<Utf16>> value,
            GUID idRule,
            GUID idPropDef,
          )>()(
        ptr.ref.lpVtbl,
        property,
        value,
        idRule,
        idPropDef,
      );

  int OnEndFile() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

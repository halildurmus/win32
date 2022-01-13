// IFsrmClassifierModuleDefinition.dart

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

import '../../storage/fileserverresourcemanager/IFsrmPipelineModuleDefinition.dart';
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFsrmClassifierModuleDefinition =
    '{BB36EA26-6318-4B8C-8592-F72DD602E7A5}';

/// {@category Interface}
/// {@category com}
class IFsrmClassifierModuleDefinition extends IFsrmPipelineModuleDefinition {
  // vtable begins at 31, is 6 entries long.
  IFsrmClassifierModuleDefinition(Pointer<COMObject> ptr) : super(ptr);

  Pointer<SAFEARRAY> get PropertiesAffected {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> propertiesAffected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> propertiesAffected,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PropertiesAffected(Pointer<SAFEARRAY> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(32)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<SAFEARRAY> propertiesAffected,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<SAFEARRAY> propertiesAffected,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<SAFEARRAY> get PropertiesUsed {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> propertiesUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> propertiesUsed,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PropertiesUsed(Pointer<SAFEARRAY> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(34)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<SAFEARRAY> propertiesUsed,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<SAFEARRAY> propertiesUsed,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get NeedsExplicitValue {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> needsExplicitValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> needsExplicitValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set NeedsExplicitValue(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(36)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 needsExplicitValue,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int needsExplicitValue,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

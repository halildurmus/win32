// IDebugHostSymbols.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugHostModuleSignature.dart';
import '../../../system/diagnostics/debug/IDebugHostModule.dart';
import '../../../system/diagnostics/debug/IDebugHostTypeSignature.dart';
import '../../../system/diagnostics/debug/IDebugHostContext.dart';
import '../../../system/diagnostics/debug/IDebugHostSymbolEnumerator.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugHostType.dart';

/// @nodoc
const IID_IDebugHostSymbols = '{854FD751-C2E1-4EB2-B525-6619CB97A588}';

/// {@category Interface}
/// {@category com}
class IDebugHostSymbols extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDebugHostSymbols(Pointer<COMObject> ptr) : super(ptr);

  int CreateModuleSignature(
    Pointer<Utf16> pwszModuleName,
    Pointer<Utf16> pwszMinVersion,
    Pointer<Utf16> pwszMaxVersion,
    Pointer<Pointer<COMObject>> ppModuleSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszModuleName,
            Pointer<Utf16> pwszMinVersion,
            Pointer<Utf16> pwszMaxVersion,
            Pointer<Pointer<COMObject>> ppModuleSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszModuleName,
            Pointer<Utf16> pwszMinVersion,
            Pointer<Utf16> pwszMaxVersion,
            Pointer<Pointer<COMObject>> ppModuleSignature,
          )>()(
        ptr.ref.lpVtbl,
        pwszModuleName,
        pwszMinVersion,
        pwszMaxVersion,
        ppModuleSignature,
      );

  int CreateTypeSignature(
    Pointer<Utf16> signatureSpecification,
    Pointer<COMObject> module,
    Pointer<Pointer<COMObject>> typeSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> signatureSpecification,
            Pointer<COMObject> module,
            Pointer<Pointer<COMObject>> typeSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> signatureSpecification,
            Pointer<COMObject> module,
            Pointer<Pointer<COMObject>> typeSignature,
          )>()(
        ptr.ref.lpVtbl,
        signatureSpecification,
        module,
        typeSignature,
      );

  int CreateTypeSignatureForModuleRange(
    Pointer<Utf16> signatureSpecification,
    Pointer<Utf16> moduleName,
    Pointer<Utf16> minVersion,
    Pointer<Utf16> maxVersion,
    Pointer<Pointer<COMObject>> typeSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> signatureSpecification,
            Pointer<Utf16> moduleName,
            Pointer<Utf16> minVersion,
            Pointer<Utf16> maxVersion,
            Pointer<Pointer<COMObject>> typeSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> signatureSpecification,
            Pointer<Utf16> moduleName,
            Pointer<Utf16> minVersion,
            Pointer<Utf16> maxVersion,
            Pointer<Pointer<COMObject>> typeSignature,
          )>()(
        ptr.ref.lpVtbl,
        signatureSpecification,
        moduleName,
        minVersion,
        maxVersion,
        typeSignature,
      );

  int EnumerateModules(
    Pointer<COMObject> context,
    Pointer<Pointer<COMObject>> moduleEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<Pointer<COMObject>> moduleEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<Pointer<COMObject>> moduleEnum,
          )>()(
        ptr.ref.lpVtbl,
        context,
        moduleEnum,
      );

  int FindModuleByName(
    Pointer<COMObject> context,
    Pointer<Utf16> moduleName,
    Pointer<Pointer<COMObject>> module,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<Utf16> moduleName,
            Pointer<Pointer<COMObject>> module,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Pointer<Utf16> moduleName,
            Pointer<Pointer<COMObject>> module,
          )>()(
        ptr.ref.lpVtbl,
        context,
        moduleName,
        module,
      );

  int FindModuleByLocation(
    Pointer<COMObject> context,
    Location moduleLocation,
    Pointer<Pointer<COMObject>> module,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
            Location moduleLocation,
            Pointer<Pointer<COMObject>> module,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
            Location moduleLocation,
            Pointer<Pointer<COMObject>> module,
          )>()(
        ptr.ref.lpVtbl,
        context,
        moduleLocation,
        module,
      );

  int GetMostDerivedObject(
    Pointer<COMObject> pContext,
    Location location,
    Pointer<COMObject> objectType,
    Pointer<Location> derivedLocation,
    Pointer<Pointer<COMObject>> derivedType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pContext,
            Location location,
            Pointer<COMObject> objectType,
            Pointer<Location> derivedLocation,
            Pointer<Pointer<COMObject>> derivedType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pContext,
            Location location,
            Pointer<COMObject> objectType,
            Pointer<Location> derivedLocation,
            Pointer<Pointer<COMObject>> derivedType,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
        location,
        objectType,
        derivedLocation,
        derivedType,
      );
}

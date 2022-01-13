// IDebugHostSymbol.dart

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
import '../../../system/diagnostics/debug/IDebugHostContext.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugHostSymbolEnumerator.dart';
import '../../../system/diagnostics/debug/IDebugHostType.dart';
import '../../../system/diagnostics/debug/IDebugHostModule.dart';
import '../../../system/diagnostics/debug/IDebugHostSymbol.dart';

/// @nodoc
const IID_IDebugHostSymbol = '{0F819103-87DE-4E96-8277-E05CD441FB22}';

/// {@category Interface}
/// {@category com}
class IDebugHostSymbol extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDebugHostSymbol(Pointer<COMObject> ptr) : super(ptr);

  int GetContext(
    Pointer<Pointer<COMObject>> context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> context,
          )>()(
        ptr.ref.lpVtbl,
        context,
      );

  int EnumerateChildren(
    int kind,
    Pointer<Utf16> name,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 kind,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int kind,
            Pointer<Utf16> name,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        kind,
        name,
        ppEnum,
      );

  int GetSymbolKind(
    Pointer<Int32> kind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> kind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> kind,
          )>()(
        ptr.ref.lpVtbl,
        kind,
      );

  int GetName(
    Pointer<Pointer<Utf16>> symbolName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> symbolName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> symbolName,
          )>()(
        ptr.ref.lpVtbl,
        symbolName,
      );

  int GetType(
    Pointer<Pointer<COMObject>> type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> type,
          )>()(
        ptr.ref.lpVtbl,
        type,
      );

  int GetContainingModule(
    Pointer<Pointer<COMObject>> containingModule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> containingModule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> containingModule,
          )>()(
        ptr.ref.lpVtbl,
        containingModule,
      );

  int CompareAgainst(
    Pointer<COMObject> pComparisonSymbol,
    int comparisonFlags,
    Pointer<Bool> pMatches,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pComparisonSymbol,
            Uint32 comparisonFlags,
            Pointer<Bool> pMatches,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pComparisonSymbol,
            int comparisonFlags,
            Pointer<Bool> pMatches,
          )>()(
        ptr.ref.lpVtbl,
        pComparisonSymbol,
        comparisonFlags,
        pMatches,
      );
}

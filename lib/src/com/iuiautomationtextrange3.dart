// iuiautomationtextrange3.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iuiautomationtextrange2.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTextRange3 = '{6a315d69-5512-4c2e-85f0-53fce6dd4bc2}';

/// Extends the IUIAutomationTextRange2 interface to support faster access
/// to the underlying rich text data on a text range.
///
/// {@category Interface}
/// {@category com}
class IUIAutomationTextRange3 extends IUIAutomationTextRange2 {
  // vtable begins at 22, is 3 entries long.
  IUIAutomationTextRange3(super.ptr);

  factory IUIAutomationTextRange3.from(IUnknown interface) =>
      IUIAutomationTextRange3(
          interface.toInterface(IID_IUIAutomationTextRange3));

  int getEnclosingElementBuildCache(Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> enclosingElement) =>
      ptr.ref.vtable
              .elementAt(22)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> enclosingElement)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> enclosingElement)>()(
          ptr.ref.lpVtbl, cacheRequest, enclosingElement);

  int getChildrenBuildCache(Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> children) =>
      ptr.ref.vtable
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<COMObject> cacheRequest,
                          Pointer<Pointer<COMObject>> children)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>>
                      children)>()(ptr.ref.lpVtbl, cacheRequest, children);

  int getAttributeValues(Pointer<Uint32> attributeIds, int attributeIdCount,
          Pointer<Pointer<SAFEARRAY>> attributeValues) =>
      ptr.ref.vtable
              .elementAt(24)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Uint32> attributeIds,
                              Int32 attributeIdCount,
                              Pointer<Pointer<SAFEARRAY>> attributeValues)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Uint32> attributeIds,
                      int attributeIdCount,
                      Pointer<Pointer<SAFEARRAY>> attributeValues)>()(
          ptr.ref.lpVtbl, attributeIds, attributeIdCount, attributeValues);
}

// iuiautomationelement7.dart

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
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iuiautomationelement6.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationElement7 = '{204e8572-cfc3-4c11-b0c8-7da7420750b7}';

/// Extends the IUIAutomationElement6 interface.
///
/// {@category com}
class IUIAutomationElement7 extends IUIAutomationElement6 {
  // vtable begins at 110, is 5 entries long.
  IUIAutomationElement7(super.ptr);

  factory IUIAutomationElement7.from(IUnknown interface) =>
      IUIAutomationElement7(interface.toInterface(IID_IUIAutomationElement7));

  int findFirstWithOptions(
          int scope,
          Pointer<COMObject> condition,
          int traversalOptions,
          Pointer<COMObject> root,
          Pointer<Pointer<COMObject>> found) =>
      (ptr.ref.vtable + 110)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 scope,
                              Pointer<COMObject> condition,
                              Int32 traversalOptions,
                              Pointer<COMObject> root,
                              Pointer<Pointer<COMObject>> found)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int scope,
                      Pointer<COMObject> condition,
                      int traversalOptions,
                      Pointer<COMObject> root,
                      Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, traversalOptions, root, found);

  int findAllWithOptions(
          int scope,
          Pointer<COMObject> condition,
          int traversalOptions,
          Pointer<COMObject> root,
          Pointer<Pointer<COMObject>> found) =>
      (ptr.ref.vtable + 111)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 scope,
                              Pointer<COMObject> condition,
                              Int32 traversalOptions,
                              Pointer<COMObject> root,
                              Pointer<Pointer<COMObject>> found)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int scope,
                      Pointer<COMObject> condition,
                      int traversalOptions,
                      Pointer<COMObject> root,
                      Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, traversalOptions, root, found);

  int findFirstWithOptionsBuildCache(
          int scope,
          Pointer<COMObject> condition,
          Pointer<COMObject> cacheRequest,
          int traversalOptions,
          Pointer<COMObject> root,
          Pointer<Pointer<COMObject>> found) =>
      (ptr.ref.vtable + 112)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 scope,
                              Pointer<COMObject> condition,
                              Pointer<COMObject> cacheRequest,
                              Int32 traversalOptions,
                              Pointer<COMObject> root,
                              Pointer<Pointer<COMObject>> found)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int scope,
                      Pointer<COMObject> condition,
                      Pointer<COMObject> cacheRequest,
                      int traversalOptions,
                      Pointer<COMObject> root,
                      Pointer<Pointer<COMObject>> found)>()(ptr.ref.lpVtbl,
          scope, condition, cacheRequest, traversalOptions, root, found);

  int findAllWithOptionsBuildCache(
          int scope,
          Pointer<COMObject> condition,
          Pointer<COMObject> cacheRequest,
          int traversalOptions,
          Pointer<COMObject> root,
          Pointer<Pointer<COMObject>> found) =>
      (ptr.ref.vtable + 113)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 scope,
                              Pointer<COMObject> condition,
                              Pointer<COMObject> cacheRequest,
                              Int32 traversalOptions,
                              Pointer<COMObject> root,
                              Pointer<Pointer<COMObject>> found)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int scope,
                      Pointer<COMObject> condition,
                      Pointer<COMObject> cacheRequest,
                      int traversalOptions,
                      Pointer<COMObject> root,
                      Pointer<Pointer<COMObject>> found)>()(ptr.ref.lpVtbl,
          scope, condition, cacheRequest, traversalOptions, root, found);

  int
      getCurrentMetadataValue(
              int targetId, int metadataId, Pointer<VARIANT> returnVal) =>
          (ptr.ref.vtable + 114)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Int32 targetId,
                                  Uint32 metadataId,
                                  Pointer<VARIANT> returnVal)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer, int targetId, int metadataId,
                          Pointer<VARIANT> returnVal)>()(
              ptr.ref.lpVtbl, targetId, metadataId, returnVal);
}

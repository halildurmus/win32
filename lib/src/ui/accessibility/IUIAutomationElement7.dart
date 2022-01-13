// IUIAutomationElement7.dart

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

import '../../ui/accessibility/IUIAutomationElement6.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../ui/accessibility/IUIAutomationCondition.dart';
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/IUIAutomationElementArray.dart';
import '../../ui/accessibility/IUIAutomationCacheRequest.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IUIAutomationElement7 = '{204E8572-CFC3-4C11-B0C8-7DA7420750B7}';

/// {@category Interface}
/// {@category com}
class IUIAutomationElement7 extends IUIAutomationElement6 {
  // vtable begins at 110, is 5 entries long.
  IUIAutomationElement7(Pointer<COMObject> ptr) : super(ptr);

  int FindFirstWithOptions(
    int scope,
    Pointer<COMObject> condition,
    int traversalOptions,
    Pointer<COMObject> root,
    Pointer<Pointer<COMObject>> found,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(110)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scope,
            Pointer<COMObject> condition,
            Int32 traversalOptions,
            Pointer<COMObject> root,
            Pointer<Pointer<COMObject>> found,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scope,
            Pointer<COMObject> condition,
            int traversalOptions,
            Pointer<COMObject> root,
            Pointer<Pointer<COMObject>> found,
          )>()(
        ptr.ref.lpVtbl,
        scope,
        condition,
        traversalOptions,
        root,
        found,
      );

  int FindAllWithOptions(
    int scope,
    Pointer<COMObject> condition,
    int traversalOptions,
    Pointer<COMObject> root,
    Pointer<Pointer<COMObject>> found,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(111)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scope,
            Pointer<COMObject> condition,
            Int32 traversalOptions,
            Pointer<COMObject> root,
            Pointer<Pointer<COMObject>> found,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scope,
            Pointer<COMObject> condition,
            int traversalOptions,
            Pointer<COMObject> root,
            Pointer<Pointer<COMObject>> found,
          )>()(
        ptr.ref.lpVtbl,
        scope,
        condition,
        traversalOptions,
        root,
        found,
      );

  int FindFirstWithOptionsBuildCache(
    int scope,
    Pointer<COMObject> condition,
    Pointer<COMObject> cacheRequest,
    int traversalOptions,
    Pointer<COMObject> root,
    Pointer<Pointer<COMObject>> found,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(112)
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
            Pointer<Pointer<COMObject>> found,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scope,
            Pointer<COMObject> condition,
            Pointer<COMObject> cacheRequest,
            int traversalOptions,
            Pointer<COMObject> root,
            Pointer<Pointer<COMObject>> found,
          )>()(
        ptr.ref.lpVtbl,
        scope,
        condition,
        cacheRequest,
        traversalOptions,
        root,
        found,
      );

  int FindAllWithOptionsBuildCache(
    int scope,
    Pointer<COMObject> condition,
    Pointer<COMObject> cacheRequest,
    int traversalOptions,
    Pointer<COMObject> root,
    Pointer<Pointer<COMObject>> found,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(113)
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
            Pointer<Pointer<COMObject>> found,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scope,
            Pointer<COMObject> condition,
            Pointer<COMObject> cacheRequest,
            int traversalOptions,
            Pointer<COMObject> root,
            Pointer<Pointer<COMObject>> found,
          )>()(
        ptr.ref.lpVtbl,
        scope,
        condition,
        cacheRequest,
        traversalOptions,
        root,
        found,
      );

  int GetCurrentMetadataValue(
    int targetId,
    int metadataId,
    Pointer<VARIANT> returnVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(114)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 targetId,
            Int32 metadataId,
            Pointer<VARIANT> returnVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int targetId,
            int metadataId,
            Pointer<VARIANT> returnVal,
          )>()(
        ptr.ref.lpVtbl,
        targetId,
        metadataId,
        returnVal,
      );
}

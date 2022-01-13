// IXpsOMCanvas.dart

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

import '../../storage/xps/IXpsOMVisual.dart';
import '../../storage/xps/IXpsOMVisualCollection.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMDictionary.dart';
import '../../storage/xps/IXpsOMRemoteDictionaryResource.dart';
import '../../storage/xps/IXpsOMCanvas.dart';

/// @nodoc
const IID_IXpsOMCanvas = '{221D1452-331E-47C6-87E9-6CCEFB9B5BA3}';

/// {@category Interface}
/// {@category com}
class IXpsOMCanvas extends IXpsOMVisual {
  // vtable begins at 30, is 13 entries long.
  IXpsOMCanvas(Pointer<COMObject> ptr) : super(ptr);

  int GetVisuals(
    Pointer<Pointer<COMObject>> visuals,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> visuals,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> visuals,
          )>()(
        ptr.ref.lpVtbl,
        visuals,
      );

  int GetUseAliasedEdgeMode(
    Pointer<Int32> useAliasedEdgeMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> useAliasedEdgeMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> useAliasedEdgeMode,
          )>()(
        ptr.ref.lpVtbl,
        useAliasedEdgeMode,
      );

  int SetUseAliasedEdgeMode(
    int useAliasedEdgeMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 useAliasedEdgeMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int useAliasedEdgeMode,
          )>()(
        ptr.ref.lpVtbl,
        useAliasedEdgeMode,
      );

  int GetAccessibilityShortDescription(
    Pointer<Pointer<Utf16>> shortDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> shortDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> shortDescription,
          )>()(
        ptr.ref.lpVtbl,
        shortDescription,
      );

  int SetAccessibilityShortDescription(
    Pointer<Utf16> shortDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> shortDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> shortDescription,
          )>()(
        ptr.ref.lpVtbl,
        shortDescription,
      );

  int GetAccessibilityLongDescription(
    Pointer<Pointer<Utf16>> longDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> longDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> longDescription,
          )>()(
        ptr.ref.lpVtbl,
        longDescription,
      );

  int SetAccessibilityLongDescription(
    Pointer<Utf16> longDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> longDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> longDescription,
          )>()(
        ptr.ref.lpVtbl,
        longDescription,
      );

  int GetDictionary(
    Pointer<Pointer<COMObject>> resourceDictionary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> resourceDictionary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> resourceDictionary,
          )>()(
        ptr.ref.lpVtbl,
        resourceDictionary,
      );

  int GetDictionaryLocal(
    Pointer<Pointer<COMObject>> resourceDictionary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> resourceDictionary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> resourceDictionary,
          )>()(
        ptr.ref.lpVtbl,
        resourceDictionary,
      );

  int SetDictionaryLocal(
    Pointer<COMObject> resourceDictionary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> resourceDictionary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> resourceDictionary,
          )>()(
        ptr.ref.lpVtbl,
        resourceDictionary,
      );

  int GetDictionaryResource(
    Pointer<Pointer<COMObject>> remoteDictionaryResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> remoteDictionaryResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> remoteDictionaryResource,
          )>()(
        ptr.ref.lpVtbl,
        remoteDictionaryResource,
      );

  int SetDictionaryResource(
    Pointer<COMObject> remoteDictionaryResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> remoteDictionaryResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> remoteDictionaryResource,
          )>()(
        ptr.ref.lpVtbl,
        remoteDictionaryResource,
      );

  int Clone(
    Pointer<Pointer<COMObject>> canvas,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> canvas,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> canvas,
          )>()(
        ptr.ref.lpVtbl,
        canvas,
      );
}

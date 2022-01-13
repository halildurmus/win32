// IXpsOMPage.dart

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

import '../../storage/xps/IXpsOMPart.dart';
import '../../storage/xps/IXpsOMPageReference.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMVisualCollection.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/xps/IXpsOMDictionary.dart';
import '../../storage/xps/IXpsOMRemoteDictionaryResource.dart';
import '../../system/com/ISequentialStream.dart';
import '../../storage/xps/IXpsOMPage.dart';

/// @nodoc
const IID_IXpsOMPage = '{D3E18888-F120-4FEE-8C68-35296EAE91D4}';

/// {@category Interface}
/// {@category com}
class IXpsOMPage extends IXpsOMPart {
  // vtable begins at 5, is 22 entries long.
  IXpsOMPage(Pointer<COMObject> ptr) : super(ptr);

  int GetOwner(
    Pointer<Pointer<COMObject>> pageReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pageReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pageReference,
          )>()(
        ptr.ref.lpVtbl,
        pageReference,
      );

  int GetVisuals(
    Pointer<Pointer<COMObject>> visuals,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetPageDimensions(
    Pointer<XPS_SIZE> pageDimensions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_SIZE> pageDimensions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_SIZE> pageDimensions,
          )>()(
        ptr.ref.lpVtbl,
        pageDimensions,
      );

  int SetPageDimensions(
    Pointer<XPS_SIZE> pageDimensions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_SIZE> pageDimensions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_SIZE> pageDimensions,
          )>()(
        ptr.ref.lpVtbl,
        pageDimensions,
      );

  int GetContentBox(
    Pointer<XPS_RECT> contentBox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_RECT> contentBox,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_RECT> contentBox,
          )>()(
        ptr.ref.lpVtbl,
        contentBox,
      );

  int SetContentBox(
    Pointer<XPS_RECT> contentBox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_RECT> contentBox,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_RECT> contentBox,
          )>()(
        ptr.ref.lpVtbl,
        contentBox,
      );

  int GetBleedBox(
    Pointer<XPS_RECT> bleedBox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_RECT> bleedBox,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_RECT> bleedBox,
          )>()(
        ptr.ref.lpVtbl,
        bleedBox,
      );

  int SetBleedBox(
    Pointer<XPS_RECT> bleedBox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_RECT> bleedBox,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_RECT> bleedBox,
          )>()(
        ptr.ref.lpVtbl,
        bleedBox,
      );

  int GetLanguage(
    Pointer<Pointer<Utf16>> language,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> language,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> language,
          )>()(
        ptr.ref.lpVtbl,
        language,
      );

  int SetLanguage(
    Pointer<Utf16> language,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> language,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> language,
          )>()(
        ptr.ref.lpVtbl,
        language,
      );

  int GetName(
    Pointer<Pointer<Utf16>> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int SetName(
    Pointer<Utf16> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int GetIsHyperlinkTarget(
    Pointer<Int32> isHyperlinkTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isHyperlinkTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isHyperlinkTarget,
          )>()(
        ptr.ref.lpVtbl,
        isHyperlinkTarget,
      );

  int SetIsHyperlinkTarget(
    int isHyperlinkTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 isHyperlinkTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int isHyperlinkTarget,
          )>()(
        ptr.ref.lpVtbl,
        isHyperlinkTarget,
      );

  int GetDictionary(
    Pointer<Pointer<COMObject>> resourceDictionary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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
          .elementAt(20)
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
          .elementAt(21)
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
          .elementAt(22)
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
          .elementAt(23)
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

  int Write(
    Pointer<COMObject> stream,
    int optimizeMarkupSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stream,
            Int32 optimizeMarkupSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stream,
            int optimizeMarkupSize,
          )>()(
        ptr.ref.lpVtbl,
        stream,
        optimizeMarkupSize,
      );

  int GenerateUnusedLookupKey(
    int type,
    Pointer<Pointer<Utf16>> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 type,
            Pointer<Pointer<Utf16>> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            Pointer<Pointer<Utf16>> key,
          )>()(
        ptr.ref.lpVtbl,
        type,
        key,
      );

  int Clone(
    Pointer<Pointer<COMObject>> page,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> page,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> page,
          )>()(
        ptr.ref.lpVtbl,
        page,
      );
}

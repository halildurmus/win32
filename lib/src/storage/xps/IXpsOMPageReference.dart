// IXpsOMPageReference.dart

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

import '../../system/com/IUnknown.dart';
import '../../storage/xps/IXpsOMDocument.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMPage.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/xps/IXpsOMStoryFragmentsResource.dart';
import '../../storage/xps/IXpsOMPrintTicketResource.dart';
import '../../storage/xps/IXpsOMImageResource.dart';
import '../../storage/xps/IXpsOMNameCollection.dart';
import '../../storage/xps/IXpsOMPartResources.dart';
import '../../storage/xps/IXpsOMPageReference.dart';

/// @nodoc
const IID_IXpsOMPageReference = '{ED360180-6F92-4998-890D-2F208531A0A0}';

/// {@category Interface}
/// {@category com}
class IXpsOMPageReference extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IXpsOMPageReference(Pointer<COMObject> ptr) : super(ptr);

  int GetOwner(
    Pointer<Pointer<COMObject>> document,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> document,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> document,
          )>()(
        ptr.ref.lpVtbl,
        document,
      );

  int GetPage(
    Pointer<Pointer<COMObject>> page,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SetPage(
    Pointer<COMObject> page,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> page,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> page,
          )>()(
        ptr.ref.lpVtbl,
        page,
      );

  int DiscardPage() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int IsPageLoaded(
    Pointer<Int32> isPageLoaded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isPageLoaded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isPageLoaded,
          )>()(
        ptr.ref.lpVtbl,
        isPageLoaded,
      );

  int GetAdvisoryPageDimensions(
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

  int SetAdvisoryPageDimensions(
    Pointer<XPS_SIZE> pageDimensions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetStoryFragmentsResource(
    Pointer<Pointer<COMObject>> storyFragmentsResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> storyFragmentsResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> storyFragmentsResource,
          )>()(
        ptr.ref.lpVtbl,
        storyFragmentsResource,
      );

  int SetStoryFragmentsResource(
    Pointer<COMObject> storyFragmentsResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> storyFragmentsResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> storyFragmentsResource,
          )>()(
        ptr.ref.lpVtbl,
        storyFragmentsResource,
      );

  int GetPrintTicketResource(
    Pointer<Pointer<COMObject>> printTicketResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> printTicketResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> printTicketResource,
          )>()(
        ptr.ref.lpVtbl,
        printTicketResource,
      );

  int SetPrintTicketResource(
    Pointer<COMObject> printTicketResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> printTicketResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> printTicketResource,
          )>()(
        ptr.ref.lpVtbl,
        printTicketResource,
      );

  int GetThumbnailResource(
    Pointer<Pointer<COMObject>> imageResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageResource,
          )>()(
        ptr.ref.lpVtbl,
        imageResource,
      );

  int SetThumbnailResource(
    Pointer<COMObject> imageResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> imageResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> imageResource,
          )>()(
        ptr.ref.lpVtbl,
        imageResource,
      );

  int CollectLinkTargets(
    Pointer<Pointer<COMObject>> linkTargets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> linkTargets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> linkTargets,
          )>()(
        ptr.ref.lpVtbl,
        linkTargets,
      );

  int CollectPartResources(
    Pointer<Pointer<COMObject>> partResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> partResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> partResources,
          )>()(
        ptr.ref.lpVtbl,
        partResources,
      );

  int HasRestrictedFonts(
    Pointer<Int32> restrictedFonts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> restrictedFonts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> restrictedFonts,
          )>()(
        ptr.ref.lpVtbl,
        restrictedFonts,
      );

  int Clone(
    Pointer<Pointer<COMObject>> pageReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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
}

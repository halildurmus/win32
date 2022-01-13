// IShellUIHelper6.dart

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

import '../../ui/shell/IShellUIHelper5.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IShellUIHelper6 = '{987A573E-46EE-4E89-96AB-DDF7F8FDC98C}';

/// {@category Interface}
/// {@category com}
class IShellUIHelper6 extends IShellUIHelper5 {
  // vtable begins at 74, is 14 entries long.
  IShellUIHelper6(Pointer<COMObject> ptr) : super(ptr);

  int msStopPeriodicTileUpdate() => ptr.ref.lpVtbl.value
          .elementAt(74)
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

  int msStartPeriodicTileUpdate(
    VARIANT pollingUris,
    VARIANT startTime,
    VARIANT uiUpdateRecurrence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT pollingUris,
            VARIANT startTime,
            VARIANT uiUpdateRecurrence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT pollingUris,
            VARIANT startTime,
            VARIANT uiUpdateRecurrence,
          )>()(
        ptr.ref.lpVtbl,
        pollingUris,
        startTime,
        uiUpdateRecurrence,
      );

  int msStartPeriodicTileUpdateBatch(
    VARIANT pollingUris,
    VARIANT startTime,
    VARIANT uiUpdateRecurrence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT pollingUris,
            VARIANT startTime,
            VARIANT uiUpdateRecurrence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT pollingUris,
            VARIANT startTime,
            VARIANT uiUpdateRecurrence,
          )>()(
        ptr.ref.lpVtbl,
        pollingUris,
        startTime,
        uiUpdateRecurrence,
      );

  int msClearTile() => ptr.ref.lpVtbl.value
          .elementAt(77)
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

  int msEnableTileNotificationQueue(
    int fChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fChange,
          )>()(
        ptr.ref.lpVtbl,
        fChange,
      );

  int msPinnedSiteState(
    Pointer<VARIANT> pvarSiteState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarSiteState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarSiteState,
          )>()(
        ptr.ref.lpVtbl,
        pvarSiteState,
      );

  int msEnableTileNotificationQueueForSquare150x150(
    int fChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fChange,
          )>()(
        ptr.ref.lpVtbl,
        fChange,
      );

  int msEnableTileNotificationQueueForWide310x150(
    int fChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fChange,
          )>()(
        ptr.ref.lpVtbl,
        fChange,
      );

  int msEnableTileNotificationQueueForSquare310x310(
    int fChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fChange,
          )>()(
        ptr.ref.lpVtbl,
        fChange,
      );

  int msScheduledTileNotification(
    Pointer<Utf16> bstrNotificationXml,
    Pointer<Utf16> bstrNotificationId,
    Pointer<Utf16> bstrNotificationTag,
    VARIANT startTime,
    VARIANT expirationTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrNotificationXml,
            Pointer<Utf16> bstrNotificationId,
            Pointer<Utf16> bstrNotificationTag,
            VARIANT startTime,
            VARIANT expirationTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrNotificationXml,
            Pointer<Utf16> bstrNotificationId,
            Pointer<Utf16> bstrNotificationTag,
            VARIANT startTime,
            VARIANT expirationTime,
          )>()(
        ptr.ref.lpVtbl,
        bstrNotificationXml,
        bstrNotificationId,
        bstrNotificationTag,
        startTime,
        expirationTime,
      );

  int msRemoveScheduledTileNotification(
    Pointer<Utf16> bstrNotificationId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrNotificationId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrNotificationId,
          )>()(
        ptr.ref.lpVtbl,
        bstrNotificationId,
      );

  int msStartPeriodicBadgeUpdate(
    Pointer<Utf16> pollingUri,
    VARIANT startTime,
    VARIANT uiUpdateRecurrence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pollingUri,
            VARIANT startTime,
            VARIANT uiUpdateRecurrence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pollingUri,
            VARIANT startTime,
            VARIANT uiUpdateRecurrence,
          )>()(
        ptr.ref.lpVtbl,
        pollingUri,
        startTime,
        uiUpdateRecurrence,
      );

  int msStopPeriodicBadgeUpdate() => ptr.ref.lpVtbl.value
          .elementAt(86)
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

  int msLaunchInternetOptions() => ptr.ref.lpVtbl.value
          .elementAt(87)
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

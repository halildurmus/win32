// IXpsOMCoreProperties.dart

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
import '../../storage/xps/IXpsOMPackage.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMCoreProperties.dart';

/// @nodoc
const IID_IXpsOMCoreProperties = '{3340FE8F-4027-4AA1-8F5F-D35AE45FE597}';

/// {@category Interface}
/// {@category com}
class IXpsOMCoreProperties extends IXpsOMPart {
  // vtable begins at 5, is 34 entries long.
  IXpsOMCoreProperties(Pointer<COMObject> ptr) : super(ptr);

  int GetOwner(
    Pointer<Pointer<COMObject>> package,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> package,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> package,
          )>()(
        ptr.ref.lpVtbl,
        package,
      );

  int GetCategory(
    Pointer<Pointer<Utf16>> category,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> category,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> category,
          )>()(
        ptr.ref.lpVtbl,
        category,
      );

  int SetCategory(
    Pointer<Utf16> category,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> category,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> category,
          )>()(
        ptr.ref.lpVtbl,
        category,
      );

  int GetContentStatus(
    Pointer<Pointer<Utf16>> contentStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> contentStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> contentStatus,
          )>()(
        ptr.ref.lpVtbl,
        contentStatus,
      );

  int SetContentStatus(
    Pointer<Utf16> contentStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> contentStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> contentStatus,
          )>()(
        ptr.ref.lpVtbl,
        contentStatus,
      );

  int GetContentType(
    Pointer<Pointer<Utf16>> contentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> contentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> contentType,
          )>()(
        ptr.ref.lpVtbl,
        contentType,
      );

  int SetContentType(
    Pointer<Utf16> contentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> contentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> contentType,
          )>()(
        ptr.ref.lpVtbl,
        contentType,
      );

  int GetCreated(
    Pointer<SYSTEMTIME> created,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> created,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> created,
          )>()(
        ptr.ref.lpVtbl,
        created,
      );

  int SetCreated(
    Pointer<SYSTEMTIME> created,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> created,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> created,
          )>()(
        ptr.ref.lpVtbl,
        created,
      );

  int GetCreator(
    Pointer<Pointer<Utf16>> creator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> creator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> creator,
          )>()(
        ptr.ref.lpVtbl,
        creator,
      );

  int SetCreator(
    Pointer<Utf16> creator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> creator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> creator,
          )>()(
        ptr.ref.lpVtbl,
        creator,
      );

  int GetDescription(
    Pointer<Pointer<Utf16>> description,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> description,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> description,
          )>()(
        ptr.ref.lpVtbl,
        description,
      );

  int SetDescription(
    Pointer<Utf16> description,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> description,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> description,
          )>()(
        ptr.ref.lpVtbl,
        description,
      );

  int GetIdentifier(
    Pointer<Pointer<Utf16>> identifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> identifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> identifier,
          )>()(
        ptr.ref.lpVtbl,
        identifier,
      );

  int SetIdentifier(
    Pointer<Utf16> identifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> identifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> identifier,
          )>()(
        ptr.ref.lpVtbl,
        identifier,
      );

  int GetKeywords(
    Pointer<Pointer<Utf16>> keywords,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> keywords,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> keywords,
          )>()(
        ptr.ref.lpVtbl,
        keywords,
      );

  int SetKeywords(
    Pointer<Utf16> keywords,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> keywords,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> keywords,
          )>()(
        ptr.ref.lpVtbl,
        keywords,
      );

  int GetLanguage(
    Pointer<Pointer<Utf16>> language,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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
          .elementAt(23)
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

  int GetLastModifiedBy(
    Pointer<Pointer<Utf16>> lastModifiedBy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> lastModifiedBy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> lastModifiedBy,
          )>()(
        ptr.ref.lpVtbl,
        lastModifiedBy,
      );

  int SetLastModifiedBy(
    Pointer<Utf16> lastModifiedBy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lastModifiedBy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lastModifiedBy,
          )>()(
        ptr.ref.lpVtbl,
        lastModifiedBy,
      );

  int GetLastPrinted(
    Pointer<SYSTEMTIME> lastPrinted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> lastPrinted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> lastPrinted,
          )>()(
        ptr.ref.lpVtbl,
        lastPrinted,
      );

  int SetLastPrinted(
    Pointer<SYSTEMTIME> lastPrinted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> lastPrinted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> lastPrinted,
          )>()(
        ptr.ref.lpVtbl,
        lastPrinted,
      );

  int GetModified(
    Pointer<SYSTEMTIME> modified,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> modified,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> modified,
          )>()(
        ptr.ref.lpVtbl,
        modified,
      );

  int SetModified(
    Pointer<SYSTEMTIME> modified,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> modified,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> modified,
          )>()(
        ptr.ref.lpVtbl,
        modified,
      );

  int GetRevision(
    Pointer<Pointer<Utf16>> revision,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> revision,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> revision,
          )>()(
        ptr.ref.lpVtbl,
        revision,
      );

  int SetRevision(
    Pointer<Utf16> revision,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> revision,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> revision,
          )>()(
        ptr.ref.lpVtbl,
        revision,
      );

  int GetSubject(
    Pointer<Pointer<Utf16>> subject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> subject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> subject,
          )>()(
        ptr.ref.lpVtbl,
        subject,
      );

  int SetSubject(
    Pointer<Utf16> subject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> subject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> subject,
          )>()(
        ptr.ref.lpVtbl,
        subject,
      );

  int GetTitle(
    Pointer<Pointer<Utf16>> title,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> title,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> title,
          )>()(
        ptr.ref.lpVtbl,
        title,
      );

  int SetTitle(
    Pointer<Utf16> title,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> title,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> title,
          )>()(
        ptr.ref.lpVtbl,
        title,
      );

  int GetVersion(
    Pointer<Pointer<Utf16>> version,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> version,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> version,
          )>()(
        ptr.ref.lpVtbl,
        version,
      );

  int SetVersion(
    Pointer<Utf16> version,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> version,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> version,
          )>()(
        ptr.ref.lpVtbl,
        version,
      );

  int Clone(
    Pointer<Pointer<COMObject>> coreProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> coreProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> coreProperties,
          )>()(
        ptr.ref.lpVtbl,
        coreProperties,
      );
}

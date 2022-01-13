// IWebWizardHost.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IWebWizardHost = '{18BCC359-4990-4BFB-B951-3C83702BE5F9}';

/// {@category Interface}
/// {@category com}
class IWebWizardHost extends IDispatch {
  // vtable begins at 7, is 9 entries long.
  IWebWizardHost(Pointer<COMObject> ptr) : super(ptr);

  int FinalBack() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int FinalNext() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  set Caption(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrCaption,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrCaption,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get Caption {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCaption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCaption,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int put_Property(
    Pointer<Utf16> bstrPropertyName,
    Pointer<VARIANT> pvProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropertyName,
            Pointer<VARIANT> pvProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropertyName,
            Pointer<VARIANT> pvProperty,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropertyName,
        pvProperty,
      );

  int get_Property(
    Pointer<Utf16> bstrPropertyName,
    Pointer<VARIANT> pvProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropertyName,
            Pointer<VARIANT> pvProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropertyName,
            Pointer<VARIANT> pvProperty,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropertyName,
        pvProperty,
      );

  int SetWizardButtons(
    int vfEnableBack,
    int vfEnableNext,
    int vfLastPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 vfEnableBack,
            Int16 vfEnableNext,
            Int16 vfLastPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vfEnableBack,
            int vfEnableNext,
            int vfLastPage,
          )>()(
        ptr.ref.lpVtbl,
        vfEnableBack,
        vfEnableNext,
        vfLastPage,
      );

  int SetHeaderText(
    Pointer<Utf16> bstrHeaderTitle,
    Pointer<Utf16> bstrHeaderSubtitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrHeaderTitle,
            Pointer<Utf16> bstrHeaderSubtitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrHeaderTitle,
            Pointer<Utf16> bstrHeaderSubtitle,
          )>()(
        ptr.ref.lpVtbl,
        bstrHeaderTitle,
        bstrHeaderSubtitle,
      );
}

/// @nodoc
const CLSID_WebWizardHost = '{C827F149-55C1-4D28-935E-57E47CAED973}';

/// {@category com}
class WebWizardHost extends IWebWizardHost {
  WebWizardHost(Pointer<COMObject> ptr) : super(ptr);

  factory WebWizardHost.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WebWizardHost);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWebWizardHost);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WebWizardHost(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}

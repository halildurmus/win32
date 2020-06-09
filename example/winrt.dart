// winrt.dart

// FFI prototypes for the Win32 API methods in WinRT

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/src/generated/IFileOpenPicker.dart';
import 'package:win32/win32.dart';

// From api-ms-win-core-winrt-l1-1-0.dll
// https://docs.microsoft.com/en-us/windows/win32/apiindex/umbrella-lib-onecore#apis-from-api-ms-win-core-winrt-l1-1-0dll

// HRESULT RoInitialize(
//   RO_INIT_TYPE initType
// );
typedef RoInitialize_Native = Int32 Function(Int32 initType);
typedef RoInitialize_Dart = int Function(int initType);

// void RoUninitialize();
typedef RoUninitialize_Native = Void Function();
typedef RoUninitialize_Dart = void Function();

// HRESULT RoActivateInstance(
//   HSTRING      activatableClassId,
//   IInspectable **instance
// );
typedef RoActivateInstance_Native = Int32 Function(
    IntPtr activatableClassId, Pointer<IntPtr> instance);
typedef RoActivateInstance_Dart = int Function(
    int activatableClassId, Pointer<IntPtr> instance);

// HRESULT WindowsCreateString(
//   PCNZWCH sourceString,
//   UINT32  length,
//   HSTRING *string
// );
typedef WindowsCreateString_Native = Int32 Function(
    Pointer<Utf16> sourceString, Uint32 length, Pointer<IntPtr> string);
typedef WindowsCreateString_Dart = int Function(
    Pointer<Utf16> sourceString, int length, Pointer<IntPtr> string);

// HRESULT WindowsDeleteString(
//   HSTRING string
// );
typedef WindowsDeleteString_Native = Int32 Function(IntPtr string);
typedef WindowsDeleteString_Dart = int Function(int string);

// PCWSTR WindowsGetStringRawBuffer(
//   HSTRING string,
//   UINT32  *length
// );
typedef WindowsGetStringRawBuffer_Native = Pointer<Utf16> Function(
    IntPtr string, Pointer<Uint32> length);
typedef WindowsGetStringRawBuffer_Dart = Pointer<Utf16> Function(
    int string, Pointer<Uint32> length);

class RO_INIT_TYPE {
  static final RO_INIT_SINGLETHREADED = 0;
  static final RO_INIT_MULTITHREADED = 1;
}

void main() {
  final winrt = DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');
  final RoInitialize = winrt
      .lookupFunction<RoInitialize_Native, RoInitialize_Dart>('RoInitialize');
  final RoUninitialize =
      winrt.lookupFunction<RoUninitialize_Native, RoUninitialize_Dart>(
          'RoUninitialize');
  final RoActivateInstance =
      winrt.lookupFunction<RoActivateInstance_Native, RoActivateInstance_Dart>(
          'RoActivateInstance');

  final winrt_string =
      DynamicLibrary.open('api-ms-win-core-winrt-string-l1-1-0.dll');
  final WindowsCreateString = winrt_string.lookupFunction<
      WindowsCreateString_Native,
      WindowsCreateString_Dart>('WindowsCreateString');
  final WindowsDeleteString = winrt_string.lookupFunction<
      WindowsDeleteString_Native,
      WindowsDeleteString_Dart>('WindowsDeleteString');
  final WindowsGetStringRawBuffer = winrt_string.lookupFunction<
      WindowsGetStringRawBuffer_Native,
      WindowsGetStringRawBuffer_Dart>('WindowsGetStringRawBuffer');

  RoInitialize(RO_INIT_TYPE.RO_INIT_SINGLETHREADED);

  final fileOpenPickerClassName = 'Windows.Storage.Pickers.FileOpenPicker';
  final fileOpenPickerClassHString = allocate<IntPtr>();

  var hr = WindowsCreateString(Utf16.toUtf16(fileOpenPickerClassName),
      fileOpenPickerClassName.length, fileOpenPickerClassHString);
  if (FAILED(hr)) {
    print('WindowsCreateString failed.');
  }

  final inspectablePtr = allocate<IntPtr>();
  hr = RoActivateInstance(fileOpenPickerClassHString.value, inspectablePtr);
  if (FAILED(hr)) {
    print('RoActivateInstance failed.');
  }

  final classNamePtr = allocate<IntPtr>();
  final inspectable = IInspectable(inspectablePtr.cast());
  hr = inspectable.GetRuntimeClassName(classNamePtr);
  if (FAILED(hr)) {
    print('GetRuntimeClassName failed.');
  }

  final iFOP = GUID.allocate();
  hr = IIDFromString(TEXT(IID_IFileOpenPicker), iFOP.addressOf);
  if (FAILED(hr)) {
    print('IIDFromString failed.');
  }
  print(iFOP);

  final pickerPtr = allocate<IntPtr>();
  hr = inspectable.QueryInterface(iFOP.addressOf, pickerPtr);

  if (FAILED(hr)) {
    print('QueryInterface failed.');
  }

  final picker = IFileOpenPicker(pickerPtr.cast());
  picker.ViewMode = PickerViewMode.Thumbnail;
  picker.PickSingleFileAsync(nullptr);

  final stringPtr = WindowsGetStringRawBuffer(classNamePtr.value, nullptr);
  print(stringPtr.unpackString(128));

  RoUninitialize();

  print('Complete');
}

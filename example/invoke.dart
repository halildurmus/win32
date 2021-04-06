import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// TODO: Tidy up this sample
void main() {
  var hr = OleInitialize(nullptr);

  if (FAILED(hr)) {
    print('Failed at OleInitialize.');
    throw WindowsException(hr);
  }

  final shellApp = calloc<GUID>();
  hr = CLSIDFromProgID(TEXT('Shell.Application'), shellApp);
  if (FAILED(hr)) {
    print('Failed at CLSIDFromProgID.');
    throw WindowsException(hr);
  }

  final inst = calloc<COMObject>();
  final iidIDispatch = calloc<GUID>()..ref.setGUID(IID_IDispatch);

  hr = CoCreateInstance(
      shellApp, nullptr, CLSCTX_INPROC_SERVER, iidIDispatch, inst.cast());
  if (FAILED(hr)) {
    print('Failed at CoCreateInstance.');
    print('CLSID: ${shellApp.ref.toString()}');
    print('IID: ${iidIDispatch.ref.toString()}');
    throw WindowsException(hr);
  }

  final pDisp = IDispatch(inst.cast());
  print('IDispatch.ptr == ${pDisp.ptr.address.toHexString(64)}');
  print('calling GetTypeInfoCount');
  final typeInfoCount = calloc<Uint32>();
  hr = pDisp.GetTypeInfoCount(typeInfoCount);
  if (SUCCEEDED(hr)) {
    print('There are ${typeInfoCount.value} type info interfaces provided.');
  } else {
    print('Failed at IDispatch::GetTypeInfoCount.');
    throw WindowsException(hr);
  }

  print('calling GetTypeInfo');
  final ppTypeInfo = calloc<Pointer>();
  hr = pDisp.GetTypeInfo(0, 0, ppTypeInfo.cast());
  if (FAILED(hr)) {
    print('Failed at IDispatch::GetTypeInfo.');
    throw WindowsException(hr);
  }

  print('calling GetTypeAttr');
  final ppTypeAttr = calloc<Pointer<TYPEATTR>>();
  final pTypeInfo = ITypeInfo(ppTypeInfo.cast());
  print('ITypeInfo.ptr == ${pTypeInfo.ptr.address.toHexString(64)}');
  hr = pTypeInfo.GetTypeAttr(ppTypeAttr);
  if (FAILED(hr)) {
    print('Failed at ITypeInfo::GetTypeAttr.');
    throw WindowsException(hr);
  }

  final ptNameFunc = 'MinimizeAll'.toNativeUtf16();
  final ptName = calloc<Pointer<Utf16>>()..value = ptNameFunc;
  final iidNull = calloc<GUID>();
  print(iidNull.ref.toString());

  final dispid = calloc<Int32>();
  print('calling GetIDsOfNames');
  hr = pDisp.GetIDsOfNames(
      iidNull, ptName.cast(), 1, LOCALE_USER_DEFAULT, dispid);
  if (FAILED(hr)) {
    print('Failed at IDispatch::GetIDsOfNames.');
    throw WindowsException(hr);
  } else {
    print('Got ID from ${dispid.value}.');
  }

  final noArgs = calloc<DISPPARAMS>();
  hr = pDisp.Invoke(dispid.value, iidNull, LOCALE_SYSTEM_DEFAULT,
      DISPATCH_METHOD, noArgs, nullptr, nullptr, nullptr);
  if (FAILED(hr)) {
    print('Failed at IDispatch::Invoke.');
    throw WindowsException(hr);
  } else {
    print('Succeeded. And here we are in Dart again.');
  }

  OleUninitialize();
}

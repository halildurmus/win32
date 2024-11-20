import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;

void main() {
  setUpAll(WindowsMetadata.load);

  group('WinType', () {
    testMethodParameterType('NtQueryObject', 'ObjectInformationClass', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('LONG');
      check(type.ffiType).equals('Int32');
      check(type.dartType).equals('int');
      check(type.publicType).equals('OBJECT_INFORMATION_CLASS');
      check(type.alignment).equals(4);
      check(type.size).equals(4);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isEnum).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
    });

    testMethodParameterType('BluetoothRemoveDevice', 'pAddress', (type) {
      check(type).isA<ConstPointerType>();
      check(type.cType).equals('BLUETOOTH_ADDRESS*');
      check(type.ffiType).equals('Pointer<BLUETOOTH_ADDRESS>');
      check(type.dartType).equals('Pointer<BLUETOOTH_ADDRESS>');
      check(type.publicType).equals('Pointer<BLUETOOTH_ADDRESS>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('SysAllocString', 'psz', (type) {
      check(type).isA<PCWSTRType>();
      check(type.cType).equals('PCWSTR');
      check(type.ffiType).equals('PCWSTR');
      check(type.dartType).equals('PCWSTR');
      check(type.publicType).equals('PCWSTR');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isTrue();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isTrue();
      check(type.isString).isTrue();
      check(type.isStruct).isFalse();
      check(type.isWrapperStruct).isFalse();
    });

    testMethodParameterType('SysFreeString', 'bstrString', (type) {
      check(type).isA<BSTRType>();
      check(type.cType).equals('BSTR');
      check(type.ffiType).equals('BSTR');
      check(type.dartType).equals('BSTR');
      check(type.publicType).equals('BSTR');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isFalse();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isTrue();
      check(type.isString).isTrue();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isTrue();
    });

    testMethodParameterType('WindowsConcatString', 'string1', (type) {
      check(type).isA<StringType>();
      check(type.cType).equals('HSTRING');
      check(type.ffiType).equals('HSTRING');
      check(type.dartType).equals('int');
      check(type.publicType).equals('int');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isFalse();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isFalse();
      check(type.isString).isTrue();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isTrue();
    });

    testMethodParameterType('CreateDIBitmap', 'iUsage', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('DWORD');
      check(type.ffiType).equals('Uint32');
      check(type.dartType).equals('int');
      check(type.publicType).equals('DIB_USAGE');
      check(type.alignment).equals(4);
      check(type.size).equals(4);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isEnum).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
    });

    testMethodParameterType('EnumFontFamiliesExW', 'lpProc', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('FONTENUMPROCW');
      check(type.ffiType).equals('Pointer<NativeFunction<FONTENUMPROC>>');
      check(type.dartType).equals('Pointer<NativeFunction<FONTENUMPROC>>');
      check(type.publicType).equals('Pointer<NativeFunction<FONTENUMPROC>>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isDelegate).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('CredFree', 'Buffer', (type) {
      check(type).isA<ConstPointerType>();
      check(type.cType).equals('void*');
      check(type.ffiType).equals('Pointer');
      check(type.dartType).equals('Pointer');
      check(type.publicType).equals('Pointer');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('GenerateConsoleCtrlEvent', 'dwCtrlEvent', (type) {
      check(type).isA<Uint32Type>();
      check(type.cType).equals('unsigned long');
      check(type.ffiType).equals('Uint32');
      check(type.dartType).equals('int');
      check(type.publicType).equals('int');
      check(type.alignment).equals(4);
      check(type.size).equals(4);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isTrue();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
    });

    testMethodParameterType('SymEnumSymbolsW', 'EnumSymbolsCallback', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('PSYM_ENUMERATESYMBOLS_CALLBACKW');
      check(
        type.ffiType,
      ).equals('Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>');
      check(
        type.dartType,
      ).equals('Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>');
      check(
        type.publicType,
      ).equals('Pointer<NativeFunction<PSYM_ENUMERATESYMBOLS_CALLBACK>>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isDelegate).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('ReportEventW', 'wType', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('USHORT');
      check(type.ffiType).equals('Uint16');
      check(type.dartType).equals('int');
      check(type.publicType).equals('REPORT_EVENT_TYPE');
      check(type.alignment).equals(2);
      check(type.size).equals(2);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isEnum).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
    });

    testMethodParameterType('GetActiveObject', 'ppunk', (type) {
      check(type).isA<MutablePointerType>();
      check(type.cType).equals('IUnknown*');
      check(type.ffiType).equals('Pointer<VTablePointer>');
      check(type.dartType).equals('Pointer<VTablePointer>');
      check(type.publicType).equals('Pointer<VTablePointer>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('CredReadW', 'Credential', (type) {
      check(type).isA<MutablePointerType>();
      check(type.cType).equals('CREDENTIALW**');
      check(type.ffiType).equals('Pointer<Pointer<CREDENTIAL>>');
      check(type.dartType).equals('Pointer<Pointer<CREDENTIAL>>');
      check(type.publicType).equals('Pointer<Pointer<CREDENTIAL>>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('SetFilePointerEx', 'liDistanceToMove', (type) {
      check(type).isA<Int64Type>();
      check(type.cType).equals('long long');
      check(type.ffiType).equals('Int64');
      check(type.dartType).equals('int');
      check(type.publicType).equals('int');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isTrue();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
    });

    testMethodParameterType('CoCreateInstance', 'pUnkOuter', (type) {
      check(type).isA<IUnknownType>();
      check(type.cType).equals('IUnknown');
      check(type.dartType).equals('VTablePointer');
      check(type.ffiType).equals('VTablePointer');
      check(type.publicType).equals('IUnknown');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isTrue();
      check(type.isCopyable).isFalse();
      check(type.isInterface).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('CoSetProxyBlanket', 'pProxy', (type) {
      check(type).isA<IUnknownType>();
      check(type.cType).equals('IUnknown');
      check(type.dartType).equals('VTablePointer');
      check(type.ffiType).equals('VTablePointer');
      check(type.publicType).equals('IUnknown');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isTrue();
      check(type.isCopyable).isFalse();
      check(type.isInterface).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('CreateAntiMoniker', 'ppmk', (type) {
      check(type).isA<MutablePointerType>();
      check(type.cType).equals('IMoniker*');
      check(type.ffiType).equals('Pointer<VTablePointer>');
      check(type.dartType).equals('Pointer<VTablePointer>');
      check(type.publicType).equals('Pointer<VTablePointer>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('GetNamedPipeInfo', 'lpFlags', (type) {
      check(type).isA<MutablePointerType>();
      check(type.cType).equals('DWORD*');
      check(type.ffiType).equals('Pointer<Uint32>');
      check(type.dartType).equals('Pointer<Uint32>');
      check(type.publicType).equals('Pointer<Uint32>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType(
      'InitializeProcThreadAttributeList',
      'lpAttributeList',
      (type) {
        check(type).isA<TypeDefType>();
        check(type.cType).equals('LPPROC_THREAD_ATTRIBUTE_LIST');
        check(type.ffiType).equals('LPPROC_THREAD_ATTRIBUTE_LIST');
        check(type.dartType).equals('int');
        check(type.publicType).equals('int');
        check(type.alignment).equals(8);
        check(type.size).equals(8);
        check(type.isConvertible).isTrue();
        check(type.isCopyable).isTrue();
        check(type.isIntrinsic).isFalse();
        check(type.isPrimitive).isTrue();
        check(type.isPointer).isFalse();
        check(type.isStruct).isTrue();
        check(type.isWrapperStruct).isTrue();
      },
    );

    testMethodParameterType('ChooseFontW', 'param0', (type) {
      check(type).isA<MutablePointerType>();
      check(type.cType).equals('CHOOSEFONTW*');
      check(type.ffiType).equals('Pointer<CHOOSEFONT>');
      check(type.dartType).equals('Pointer<CHOOSEFONT>');
      check(type.publicType).equals('Pointer<CHOOSEFONT>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('GetKeyboardState', 'lpKeyState', (type) {
      check(type).isA<MutablePointerType>();
      check(type.cType).equals('unsigned char*');
      check(type.ffiType).equals('Pointer<Uint8>');
      check(type.dartType).equals('Pointer<Uint8>');
      check(type.publicType).equals('Pointer<Uint8>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('GetKeyNameTextA', 'lpString', (type) {
      check(type).isA<PSTRType>();
      check(type.cType).equals('PSTR');
      check(type.ffiType).equals('PSTR');
      check(type.dartType).equals('PSTR');
      check(type.publicType).equals('PSTR');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isTrue();
      check(type.isString).isTrue();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isTrue();
    });

    testMethodParameterType('SHGetKnownFolderPath', 'ppszPath', (type) {
      check(type).isA<MutablePointerType>();
      check(type.cType).equals('PWSTR*');
      check(type.ffiType).equals('Pointer<PWSTR>');
      check(type.dartType).equals('Pointer<PWSTR>');
      check(type.publicType).equals('Pointer<PWSTR>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('PSPropertyBag_WriteGUID', 'value', (type) {
      check(type).isA<ConstPointerType>();
      check(type.cType).equals('GUID*');
      check(type.ffiType).equals('Pointer<GUID>');
      check(type.dartType).equals('Pointer<GUID>');
      check(type.publicType).equals('Pointer<GUID>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodParameterType('CloseWindow', 'hWnd', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('HWND');
      check(type.ffiType).equals('HWND');
      check(type.dartType).equals('int');
      check(type.publicType).equals('int');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isTrue();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isTrue();
    });

    testMethodParameterType('GetWindowTextW', 'lpString', (type) {
      check(type).isA<PWSTRType>();
      check(type.cType).equals('PWSTR');
      check(type.ffiType).equals('PWSTR');
      check(type.dartType).equals('PWSTR');
      check(type.publicType).equals('PWSTR');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isTrue();
      check(type.isString).isTrue();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isTrue();
    });

    testMethodParameterType('CascadeWindows', 'lpKids', (type) {
      check(type).isA<ConstPointerType>();
      check(type.cType).equals('HWND*');
      check(type.ffiType).equals('Pointer<HWND>');
      check(type.dartType).equals('Pointer<HWND>');
      check(type.publicType).equals('Pointer<HWND>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodReturnType('NtQueryObject', (type) {
      check(type).isA<NTSTATUSType>();
      check(type.cType).equals('NTSTATUS');
      check(type.ffiType).equals('Int32');
      check(type.dartType).equals('int');
      check(type.publicType).equals('NTSTATUS');
      check(type.alignment).equals(4);
      check(type.size).equals(4);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isEnum).isFalse();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isTrue();
    });

    testMethodReturnType('CreateCompatibleDC', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('HDC');
      check(type.ffiType).equals('HDC');
      check(type.dartType).equals('int');
      check(type.publicType).equals('int');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isTrue();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isTrue();
    });

    testMethodReturnType('CredFree', (type) {
      check(type).isA<VoidType>();
      check(type.cType).equals('void');
      check(type.ffiType).equals('Void');
      check(type.dartType).equals('void');
      check(type.publicType).equals('void');
      check(type.alignment).equals(0);
      check(type.size).equals(0);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isTrue();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
      check(type.isVoid).isTrue();
    });

    testMethodReturnType('CoInitialize', (type) {
      check(type).isA<HRESULTType>();
      check(type.cType).equals('HRESULT');
      check(type.ffiType).equals('Int32');
      check(type.dartType).equals('int');
      check(type.publicType).equals('HRESULT');
      check(type.alignment).equals(4);
      check(type.size).equals(4);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isTrue();
    });

    testMethodReturnType('GetProcAddress', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('FARPROC');
      check(type.ffiType).equals('FARPROC');
      check(type.dartType).equals('FARPROC');
      check(type.publicType).equals('FARPROC');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isDelegate).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testMethodReturnType('GetCurrentProcess', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('HANDLE');
      check(type.ffiType).equals('HANDLE');
      check(type.dartType).equals('int');
      check(type.publicType).equals('int');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isTrue();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isTrue();
    });

    testStructFieldType('ACCESS_STATE', 'ObjectName', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('UNICODE_STRING');
      check(type.ffiType).equals('UNICODE_STRING');
      check(type.dartType).equals('UNICODE_STRING');
      check(type.publicType).equals('UNICODE_STRING');
      check(type.alignment).equals(8);
      check(type.size).equals(16);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isFalse();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isFalse();
    });

    testStructFieldType('BLUETOOTH_RADIO_INFO', 'szName', (type) {
      check(type).isA<ArrayType>();
      check(type.cType).equals('char arr[248]');
      check(type.ffiType).equals('Array<Uint16>');
      check(type.dartType).equals('Array<Uint16>');
      check(type.publicType).equals('Array<Uint16>');
      check(type.alignment).equals(2);
      check(type.size).equals(496);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isFalse();
    });

    testStructFieldType('DWM_BLURBEHIND', 'fEnable', (type) {
      check(type).isA<BOOLType>();
      check(type.cType).equals('BOOL');
      check(type.ffiType).equals('BOOL');
      check(type.dartType).equals('int');
      check(type.publicType).equals('bool');
      check(type.alignment).equals(4);
      check(type.size).equals(4);
      check(type.isBool).isTrue();
      check(type.isConvertible).isTrue();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isTrue();
    });

    testStructFieldType('BITMAPINFO', 'bmiColors', (type) {
      check(type).isA<ArrayType>();
      check(type.cType).equals('RGBQUAD arr[1]');
      check(type.ffiType).equals('Array<RGBQUAD>');
      check(type.dartType).equals('Array<RGBQUAD>');
      check(type.publicType).equals('Array<RGBQUAD>');
      check(type.alignment).equals(1);
      check(type.size).equals(4);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isFalse();
    });

    testStructFieldType('YAMAHA_ADPCMWAVEFORMAT', 'wfx', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('WAVEFORMATEX');
      check(type.ffiType).equals('WAVEFORMATEX');
      check(type.dartType).equals('WAVEFORMATEX');
      check(type.publicType).equals('WAVEFORMATEX');
      check(type.alignment).equals(4);
      check(type.size).equals(18);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isFalse();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isFalse();
    });

    testStructFieldType('DHCP_ALL_OPTIONS', 'VendorOptions', (type) {
      check(type).isA<MutablePointerType>();
      check(type.cType).equals('_Anonymous_e__Struct*');
      check(type.ffiType).equals('Pointer<DHCP_ALL_OPTIONS_0>');
      check(type.dartType).equals('Pointer<DHCP_ALL_OPTIONS_0>');
      check(type.publicType).equals('Pointer<DHCP_ALL_OPTIONS_0>');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isTrue();
    });

    testStructFieldType('DOT11_NETWORK_LIST', 'Network', (type) {
      check(type).isA<ArrayType>();
      check(type.cType).equals('DOT11_NETWORK arr[1]');
      check(type.ffiType).equals('Array<DOT11_NETWORK>');
      check(type.dartType).equals('Array<DOT11_NETWORK>');
      check(type.publicType).equals('Array<DOT11_NETWORK>');
      check(type.alignment).equals(4);
      check(type.size).equals(40);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isFalse();
    });

    testStructFieldType('WLAN_RAW_DATA_LIST', 'DataList', (type) {
      check(type).isA<ArrayType>();
      check(type.cType).equals('_Anonymous_e__Struct arr[1]');
      check(type.ffiType).equals('Array<WLAN_RAW_DATA_LIST_0>');
      check(type.dartType).equals('Array<WLAN_RAW_DATA_LIST_0>');
      check(type.publicType).equals('Array<WLAN_RAW_DATA_LIST_0>');
      check(type.alignment).equals(4);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isFalse();
    });

    testStructFieldType('STATSTG', 'cbSize', (type) {
      check(type).isA<Uint64Type>();
      check(type.cType).equals('unsigned long long');
      check(type.ffiType).equals('Uint64');
      check(type.dartType).equals('int');
      check(type.publicType).equals('int');
      check(type.alignment).equals(8);
      check(type.size).equals(8);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isTrue();
      check(type.isPrimitive).isTrue();
      check(type.isPointer).isFalse();
    });

    testStructFieldType('MAGCOLOREFFECT', 'transform', (type) {
      check(type).isA<ArrayType>();
      check(type.cType).equals('float arr[25]');
      check(type.ffiType).equals('Array<Float>');
      check(type.dartType).equals('Array<Float>');
      check(type.publicType).equals('Array<Float>');
      check(type.alignment).equals(4);
      check(type.size).equals(100);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isFalse();
    });

    testStructFieldType('DEVMODEW', 'Anonymous1', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('_Anonymous1_e__Union');
      check(type.ffiType).equals('DEVMODE_0');
      check(type.dartType).equals('DEVMODE_0');
      check(type.publicType).equals('DEVMODE_0');
      check(type.alignment).equals(4);
      check(type.size).equals(16);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isFalse();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isFalse();
    });

    testStructFieldType('DEVMODEW', 'Anonymous2', (type) {
      check(type).isA<TypeDefType>();
      check(type.cType).equals('_Anonymous2_e__Union');
      check(type.ffiType).equals('DEVMODE_1');
      check(type.dartType).equals('DEVMODE_1');
      check(type.publicType).equals('DEVMODE_1');
      check(type.alignment).equals(4);
      check(type.size).equals(4);
      check(type.isConvertible).isFalse();
      check(type.isCopyable).isTrue();
      check(type.isIntrinsic).isFalse();
      check(type.isPrimitive).isFalse();
      check(type.isPointer).isFalse();
      check(type.isStruct).isTrue();
      check(type.isWrapperStruct).isFalse();
    });
  });
}

@isTest
void testMethodParameterType(
  String methodName,
  String parameterName,
  void Function(InteropType) type,
) {
  test('$methodName.$parameterName parameter', () {
    final method = WindowsMetadata.findFunctionByName(methodName);
    final parameter = method.findParameter(parameterName);
    type(parameter.type);
  });
}

@isTest
void testMethodReturnType(String methodName, void Function(InteropType) type) {
  test('$methodName return', () {
    final method = WindowsMetadata.findFunctionByName(methodName);
    type(method.returnType);
  });
}

@isTest
void testStructFieldType(
  String struct,
  String fieldName,
  void Function(InteropType) type,
) {
  test('$struct.$fieldName field', () {
    final typeDef = WindowsMetadata.findTypeDefByName(struct);
    final field = typeDef.findField(fieldName);
    type(field.type);
  });
}

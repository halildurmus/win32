@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('typePretendsToBeAnsi', () {
    expect(typePretendsToBeAnsi('RGNDATA'), isTrue);
    expect(typePretendsToBeAnsi('ENUMLOGFONTEXA'), isFalse);
  });

  test('stripAnsiUnicodeSuffix', () {
    expect(stripAnsiUnicodeSuffix('RGNDATA'), equals('RGNDATA'));
    expect(stripAnsiUnicodeSuffix('ENUMLOGFONTEXA'), equals('ENUMLOGFONTEX'));
    expect(stripAnsiUnicodeSuffix('ENUMLOGFONTEXW'), equals('ENUMLOGFONTEX'));
  });

  test('typeArguments', () {
    expect(
        typeArguments('IAsyncOperation<StorageFile>'), equals('StorageFile'));
    expect(typeArguments('IMap<String, Object?>'), equals('String, Object?'));
    expect(typeArguments('IMapView<String, IVectorView<TextSegment>?>'),
        equals('String, IVectorView<TextSegment>?'));
  });

  test('outerType', () {
    expect(
        outerType('IAsyncOperation<StorageFile>'), equals('IAsyncOperation'));
    expect(outerType('IMap<String, Object?>'), equals('IMap'));
    expect(outerType('IMapView<String, IVectorView<TextSegment>?>'),
        equals('IMapView'));
  });

  test('primitiveTypeNameFromBaseType', () {
    expect(primitiveTypeNameFromBaseType(BaseType.booleanType), equals('bool'));
    expect(
        primitiveTypeNameFromBaseType(BaseType.doubleType), equals('double'));
    expect(primitiveTypeNameFromBaseType(BaseType.floatType), equals('double'));
    expect(primitiveTypeNameFromBaseType(BaseType.int8Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.int16Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.int32Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.int64Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.uint8Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.uint16Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.uint32Type), equals('int'));
    expect(primitiveTypeNameFromBaseType(BaseType.uint64Type), equals('int'));
    expect(
        primitiveTypeNameFromBaseType(BaseType.stringType), equals('String'));
  });

  test('parseTypeIdentifierName', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        parseTypeIdentifierName(calendarFactory
            .findMethod('CreateCalendar')!
            .returnType
            .typeIdentifier),
        equals('Calendar'));

    final propertyValueStatics = MetadataStore.getMetadataForType(
        'Windows.Foundation.IPropertyValueStatics')!;
    expect(
        parseTypeIdentifierName(propertyValueStatics
            .findMethod('CreateGuid')!
            .parameters
            .first
            .typeIdentifier),
        equals('GUID'));
    expect(
        parseTypeIdentifierName(propertyValueStatics
            .findMethod('CreatePoint')!
            .parameters
            .first
            .typeIdentifier),
        equals('Point'));
    expect(
        parseTypeIdentifierName(propertyValueStatics
            .findMethod('CreateTimeSpan')!
            .parameters
            .first
            .typeIdentifier),
        equals('Duration'));

    final jsonObject =
        MetadataStore.getMetadataForType('Windows.Data.Json.JsonObject')!;
    expect(parseTypeIdentifierName(jsonObject.interfaces[2].typeSpec!),
        equals('IMap<String, IJsonValue?>'));
    expect(parseTypeIdentifierName(jsonObject.interfaces[3].typeSpec!),
        equals('IIterable<IKeyValuePair<String, IJsonValue?>>'));

    final propertySet = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;
    expect(
        parseTypeIdentifierName(
            propertySet.findMethod('Insert')!.parameters.last.typeIdentifier),
        equals('Object'));

    final phoneNumberFormatterStatics = MetadataStore.getMetadataForType(
        'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics')!;
    expect(
        parseTypeIdentifierName(phoneNumberFormatterStatics
            .findMethod('TryCreate')!
            .parameters
            .last
            .typeIdentifier),
        equals('PhoneNumberFormatter'));
  });

  test('parseGenericTypeIdentifierName', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        () => parseGenericTypeIdentifierName(calendarFactory
            .findMethod('CreateCalendar')!
            .returnType
            .typeIdentifier),
        throwsArgumentError);

    final stringMap = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.StringMap')!;
    expect(parseGenericTypeIdentifierName(stringMap.interfaces[0].typeSpec!),
        equals('IMap<String, String?>'));
    expect(parseGenericTypeIdentifierName(stringMap.interfaces[1].typeSpec!),
        equals('IIterable<IKeyValuePair<String, String?>>'));
    expect(parseGenericTypeIdentifierName(stringMap.interfaces[2].typeSpec!),
        equals('IObservableMap<String, String?>'));
    expect(
        parseGenericTypeIdentifierName(
            stringMap.findMethod('First')!.returnType.typeIdentifier),
        equals('IIterator<IKeyValuePair<String, String?>>'));
    expect(
        parseGenericTypeIdentifierName(
            stringMap.findMethod('GetView')!.returnType.typeIdentifier),
        equals('IMapView<String, String?>'));

    final fileOpenPicker = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;
    expect(
        parseGenericTypeIdentifierName(fileOpenPicker
            .findMethod('get_FileTypeFilter')!
            .returnType
            .typeIdentifier),
        equals('IVector<String>'));
    expect(
        parseGenericTypeIdentifierName(fileOpenPicker
            .findMethod('PickSingleFileAsync')!
            .returnType
            .typeIdentifier),
        equals('IAsyncOperation<StorageFile>'));
    expect(
        parseGenericTypeIdentifierName(fileOpenPicker
            .findMethod('PickMultipleFilesAsync')!
            .returnType
            .typeIdentifier),
        equals('IAsyncOperation<IVectorView<StorageFile>>'));

    final storageFileQueryResult2 = MetadataStore.getMetadataForType(
        'Windows.Storage.Search.IStorageFileQueryResult2')!;
    expect(
        parseGenericTypeIdentifierName(storageFileQueryResult2
            .findMethod('GetMatchingPropertiesWithRanges')!
            .returnType
            .typeIdentifier),
        equals('IMap<String, IVectorView<TextSegment>?>'));

    final pedometer2 = MetadataStore.getMetadataForType(
        'Windows.Devices.Sensors.IPedometer2')!;
    expect(
        parseGenericTypeIdentifierName(pedometer2
            .findMethod('GetCurrentReadings')!
            .returnType
            .typeIdentifier),
        equals('IMapView<PedometerStepKind, PedometerReading?>'));
  });

  test('parseArgumentForCreatorParameter', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        parseArgumentForCreatorParameter(calendarFactory
            .findMethod('CreateCalendar')!
            .returnType
            .typeIdentifier),
        equals('Calendar.fromRawPointer'));

    final propertyValueStatics = MetadataStore.getMetadataForType(
        'Windows.Foundation.IPropertyValueStatics')!;
    expect(
        parseArgumentForCreatorParameter(propertyValueStatics
            .findMethod('CreateGuid')!
            .parameters
            .first
            .typeIdentifier),
        isNull);
    expect(
        parseArgumentForCreatorParameter(propertyValueStatics
            .findMethod('CreatePoint')!
            .parameters
            .first
            .typeIdentifier),
        isNull);
    expect(
        parseArgumentForCreatorParameter(propertyValueStatics
            .findMethod('CreateTimeSpan')!
            .parameters
            .first
            .typeIdentifier),
        isNull);

    final jsonObject =
        MetadataStore.getMetadataForType('Windows.Data.Json.JsonObject')!;
    expect(
        parseArgumentForCreatorParameter(jsonObject.interfaces[2].typeSpec!),
        equals(
            '(Pointer<COMObject> ptr) => IMap.fromRawPointer(ptr, creator: IJsonValue.fromRawPointer)'));
    expect(
        parseArgumentForCreatorParameter(jsonObject.interfaces[3].typeSpec!),
        equals(
            '(Pointer<COMObject> ptr) => IIterable.fromRawPointer(ptr, creator: (Pointer<COMObject> ptr) => IKeyValuePair.fromRawPointer(ptr, creator: IJsonValue.fromRawPointer))'));

    final propertySet = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.PropertySet')!;
    expect(
        parseArgumentForCreatorParameter(
            propertySet.findMethod('Insert')!.parameters.last.typeIdentifier),
        isNull);

    final phoneNumberFormatterStatics = MetadataStore.getMetadataForType(
        'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics')!;
    expect(
        parseArgumentForCreatorParameter(phoneNumberFormatterStatics
            .findMethod('TryCreate')!
            .parameters
            .last
            .typeIdentifier),
        equals('PhoneNumberFormatter.fromRawPointer'));
  });

  test('parseArgumentForCreatorParameterFromGenericTypeIdentifier', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        () => parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            calendarFactory
                .findMethod('CreateCalendar')!
                .returnType
                .typeIdentifier),
        throwsArgumentError);

    final stringMap = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.StringMap')!;
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            stringMap.interfaces[0].typeSpec!),
        equals('IMap.fromRawPointer'));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            stringMap.interfaces[1].typeSpec!),
        equals(
            '(Pointer<COMObject> ptr) => IIterable.fromRawPointer(ptr, creator: IKeyValuePair.fromRawPointer)'));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            stringMap.interfaces[2].typeSpec!),
        equals('IObservableMap.fromRawPointer'));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            stringMap.findMethod('First')!.returnType.typeIdentifier),
        equals(
            '(Pointer<COMObject> ptr) => IIterator.fromRawPointer(ptr, creator: IKeyValuePair.fromRawPointer)'));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            stringMap.findMethod('GetView')!.returnType.typeIdentifier),
        equals('IMapView.fromRawPointer'));

    final fileOpenPicker = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(fileOpenPicker
            .findMethod('get_FileTypeFilter')!
            .returnType
            .typeIdentifier),
        equals('IVector.fromRawPointer'));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(fileOpenPicker
            .findMethod('PickSingleFileAsync')!
            .returnType
            .typeIdentifier),
        equals(
            '(Pointer<COMObject> ptr) => IAsyncOperation.fromRawPointer(ptr, creator: StorageFile.fromRawPointer)'));
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(fileOpenPicker
            .findMethod('PickMultipleFilesAsync')!
            .returnType
            .typeIdentifier),
        equals(
            '(Pointer<COMObject> ptr) => IAsyncOperation.fromRawPointer(ptr, creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr, creator: StorageFile.fromRawPointer))'));

    final storageFileQueryResult2 = MetadataStore.getMetadataForType(
        'Windows.Storage.Search.IStorageFileQueryResult2')!;
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(
            storageFileQueryResult2
                .findMethod('GetMatchingPropertiesWithRanges')!
                .returnType
                .typeIdentifier),
        equals(
            '(Pointer<COMObject> ptr) => IMap.fromRawPointer(ptr, creator: IVectorView.fromRawPointer)'));

    final pedometer2 = MetadataStore.getMetadataForType(
        'Windows.Devices.Sensors.IPedometer2')!;
    expect(
        parseArgumentForCreatorParameterFromGenericTypeIdentifier(pedometer2
            .findMethod('GetCurrentReadings')!
            .returnType
            .typeIdentifier),
        equals(
            '(Pointer<COMObject> ptr) => IMapView.fromRawPointer(ptr, creator: PedometerReading.fromRawPointer)'));
  });

  test('stripGenerics', () {
    expect(stripGenerics('TypedEventHandler`2'), equals('TypedEventHandler'));
    expect(stripGenerics('LicenseChangedEventHandler'),
        equals('LicenseChangedEventHandler'));
  });

  test('typedefIsAnsi', () {
    final scope = MetadataStore.getWin32Scope();
    final rgnData = scope.findTypeDef('Windows.Win32.Graphics.Gdi.RGNDATA')!;
    expect(typedefIsAnsi(rgnData), isFalse);

    final enumLogFontExA =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.ENUMLOGFONTEXA')!;
    expect(typedefIsAnsi(enumLogFontExA), isTrue);

    final enumLogFontExW =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.ENUMLOGFONTEXW')!;
    expect(typedefIsAnsi(enumLogFontExW), isFalse);
  });

  test('mangleName', () {
    final scope = MetadataStore.getWin32Scope();
    final propVariant = scope
        .findTypeDef('Windows.Win32.System.Com.StructuredStorage.PROPVARIANT')!;

    final union1 = propVariant.fields.first.typeIdentifier.type;
    expect(union1, isNotNull);
    expect(mangleName(union1!), equals('_PROPVARIANT__Anonymous_e__Union'));

    final struct1 = union1.fields.first.typeIdentifier.type;
    expect(struct1, isNotNull);
    expect(mangleName(struct1!),
        equals('_PROPVARIANT__Anonymous_e__Union__Anonymous_e__Struct'));

    final union2 = struct1.fields.last.typeIdentifier.type;
    expect(union2, isNotNull);
    expect(
        mangleName(union2!),
        equals(
            '_PROPVARIANT__Anonymous_e__Union__Anonymous_e__Struct__Anonymous_e__Union'));
  });

  test('stripAnsiUnicodeSuffix', () {
    expect(stripAnsiUnicodeSuffix('AREA'), equals('AREA'));
    expect(stripAnsiUnicodeSuffix('Pointer<AREA>'), equals('Pointer<AREA>'));
    expect(stripAnsiUnicodeSuffix('ADDJOB_INFO_1W'), equals('ADDJOB_INFO_1'));
    expect(stripAnsiUnicodeSuffix('Pointer<ADDJOB_INFO_1W>'),
        equals('Pointer<ADDJOB_INFO_1>'));
  });

  test('wrapCommentText', () {
    expect(wrapCommentText('', 12), isEmpty);

    expect(wrapCommentText('This is a short string', 8),
        equals('/// This\n/// is a\n/// short\n/// string'));

    expect(wrapCommentText('This is a short string', 12),
        equals('/// This is\n/// a short\n/// string'));

    expect(wrapCommentText('This is a short string', 20),
        equals('/// This is a short\n/// string'));

    expect(wrapCommentText('This is a short string', 200),
        equals('/// This is a short string'));
  });

  test('classNameForInterfaceName', () {
    expect(classNameForInterfaceName('Windows.Win32.UI.Shell.IShellLinkW'),
        equals('Windows.Win32.UI.Shell.ShellLink'));
    expect(classNameForInterfaceName('Windows.Win32.UI.Shell.IShellLinkA'),
        equals('Windows.Win32.UI.Shell.ShellLink'));
    expect(classNameForInterfaceName('Windows.Win32.UI.Shell.IShellLink'),
        equals('Windows.Win32.UI.Shell.ShellLink'));
  });

  test('toCamelCase', () {
    expect('TitleCase'.toCamelCase(), equals('titleCase'));
    expect('camelCase'.toCamelCase(), equals('camelCase'));
    expect(''.toCamelCase(), equals(''));
  });

  test('private', () {
    expect(private('foo'), equals('_foo'));
    expect(private('_foo'), equals('__foo'));
  });

  test('stripLeadingUnderscores', () {
    expect(stripLeadingUnderscores('_leading'), equals('leading'));
    expect(stripLeadingUnderscores('__leading'), equals('leading'));
    expect(stripLeadingUnderscores('_2'), equals('x2'));
    expect(stripLeadingUnderscores('noUnderscore'), equals('noUnderscore'));
  });

  test('libraryFromDllName', () {
    expect(libraryFromDllName('kernel32'), equals('kernel32.dll'));
    expect(libraryFromDllName('gdi32'), equals('gdi32.dll'));
    expect(libraryFromDllName('bthprops'), equals('bthprops.cpl'));
    expect(libraryFromDllName('winspool'), equals('winspool.drv'));
  });

  test('relativePath', () {
    expect(relativePath('winrt_helpers.dart', start: 'winrt/foundation'),
        equals('../../winrt_helpers.dart'));
    expect(
        relativePath('winrt/globalization/calendar.dart',
            start: 'winrt/globalization'),
        equals('calendar.dart'));
    expect(relativePath('com/iinspectable.dart', start: 'winrt/storage'),
        equals('../../com/iinspectable.dart'));
    expect(
        relativePath('winrt/foundation/collections/ivector.dart',
            start: 'winrt/globalization'),
        equals('../foundation/collections/ivector.dart'));
    expect(
        relativePath(
            'winrt/globalization/phonenumberformatting/phonenumberformatter.dart',
            start: 'winrt/globalization'),
        equals('phonenumberformatting/phonenumberformatter.dart'));
  });

  test('folderFromNamespace', () {
    expect(
        folderFromNamespace('Windows.Win32.System.Console'), equals('system'));
    expect(folderFromNamespace('Windows.Win32.UI.Shell.Common'),
        equals('ui/shell'));
  });

  test('folderFromWinRTType', () {
    expect(folderFromWinRTType('Windows.Globalization.Calendar'),
        equals('globalization'));
    expect(folderFromWinRTType('Windows.Storage.Pickers.FileOpenPicker'),
        equals('storage/pickers'));
    expect(
        folderFromWinRTType('Windows.Devices.Geolocation.Geofencing.Geofence'),
        equals('devices/geolocation/geofencing'));
  });

  test('filePathFromWinRTType', () {
    expect(filePathFromWinRTType('Windows.Globalization.Calendar'),
        equals('globalization/calendar.dart'));
    expect(filePathFromWinRTType('Windows.Storage.Pickers.FileOpenPicker'),
        equals('storage/pickers/fileopenpicker.dart'));
    expect(
        filePathFromWinRTType(
            'Windows.Devices.Geolocation.Geofencing.Geofence'),
        equals('devices/geolocation/geofencing/geofence.dart'));
  });

  test('parentNamespace', () {
    expect(parentNamespace('Windows.Foundation.IAsyncInfo'),
        equals('Windows.Foundation'));
    expect(parentNamespace('Windows.Gaming.Input.Gamepad'),
        equals('Windows.Gaming.Input'));
    expect(parentNamespace('Windows.Devices.Display.Core.DisplayManager'),
        equals('Windows.Devices.Display.Core'));
  });

  test('groupTypesByParentNamespace', () {
    expect(
        groupTypesByParentNamespace([
          'Windows.Foundation.IAsyncInfo',
          'Windows.Foundation.IClosable',
          'Windows.Foundation.IPropertyValue',
          'Windows.Foundation.IStringable',
          'Windows.Foundation.PropertyValue',
          'Windows.Gaming.Input.Gamepad',
          'Windows.Globalization.Calendar',
          'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
          'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo',
          'Windows.Networking.IHostName',
          'Windows.Storage.IStorageItem',
          'Windows.Storage.UserDataPaths',
          'Windows.Storage.Pickers.FileOpenPicker',
          'Windows.UI.Notifications.IToastNotificationManagerStatics',
          'Windows.UI.Notifications.ToastNotification',
        ]),
        equals([
          NamespaceGroup(
            namespace: 'Windows.Foundation',
            types: [
              'Windows.Foundation.IAsyncInfo',
              'Windows.Foundation.IClosable',
              'Windows.Foundation.IPropertyValue',
              'Windows.Foundation.IStringable',
              'Windows.Foundation.PropertyValue'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Gaming.Input',
            types: ['Windows.Gaming.Input.Gamepad'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Globalization',
            types: ['Windows.Globalization.Calendar'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Globalization.PhoneNumberFormatting',
            types: [
              'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
              'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Networking',
            types: ['Windows.Networking.IHostName'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Storage',
            types: [
              'Windows.Storage.IStorageItem',
              'Windows.Storage.UserDataPaths'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Storage.Pickers',
            types: ['Windows.Storage.Pickers.FileOpenPicker'],
          ),
          NamespaceGroup(
            namespace: 'Windows.UI.Notifications',
            types: [
              'Windows.UI.Notifications.IToastNotificationManagerStatics',
              'Windows.UI.Notifications.ToastNotification'
            ],
          )
        ]));
  });
}

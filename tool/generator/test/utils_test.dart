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

  test('primitiveTypeSignatureFromBaseType', () {
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.booleanType), equals('b1'));
    expect(primitiveTypeSignatureFromBaseType(BaseType.charType), equals('c2'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.doubleType), equals('f8'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.floatType), equals('f4'));
    expect(primitiveTypeSignatureFromBaseType(BaseType.int8Type), equals('i1'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.int16Type), equals('i2'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.int32Type), equals('i4'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.int64Type), equals('i8'));

    expect(primitiveTypeSignatureFromBaseType(BaseType.objectType),
        equals('cinterface(IInspectable)'));
    expect(primitiveTypeSignatureFromBaseType(BaseType.stringType),
        equals('string'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.uint8Type), equals('u1'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.uint16Type), equals('u2'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.uint32Type), equals('u4'));
    expect(
        primitiveTypeSignatureFromBaseType(BaseType.uint64Type), equals('u8'));
  });

  test('parseTypeDefSignature', () {
    final asyncAction =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;
    expect(parseTypeDefSignature(asyncAction),
        equals('{5a648006-843a-4da9-865b-9d26e5dfad7b}'));

    final calendar =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
    expect(
        parseTypeDefSignature(calendar),
        equals(
            'rc(Windows.Globalization.Calendar;{ca30221d-86d9-40fb-a26b-d44eb7cf08ea})'));

    final jsonObject =
        MetadataStore.getMetadataForType('Windows.Data.Json.JsonObject')!;
    // IIterable<IKeyValuePair<String, IJsonValue>>
    final iterable = jsonObject.interfaces[3];
    expect(
        parseTypeDefSignature(iterable),
        equals(
            'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};string;{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e}))'));
  });

  test('parseTypeIdentifierSignature', () {
    final iPropertyValue =
        MetadataStore.getMetadataForType('Windows.Foundation.IPropertyValue')!;
    final getDateTime =
        iPropertyValue.findMethod('GetDateTime')!.returnType.typeIdentifier;
    final getGuid =
        iPropertyValue.findMethod('GetGuid')!.returnType.typeIdentifier;
    final getPoint =
        iPropertyValue.findMethod('GetPoint')!.returnType.typeIdentifier;
    final getTimeSpan =
        iPropertyValue.findMethod('GetTimeSpan')!.returnType.typeIdentifier;
    expect(parseTypeIdentifierSignature(getDateTime),
        equals('struct(Windows.Foundation.DateTime;i8)'));
    expect(parseTypeIdentifierSignature(getGuid), equals('g16'));
    expect(parseTypeIdentifierSignature(getPoint),
        equals('struct(Windows.Foundation.Point;f4;f4)'));
    expect(parseTypeIdentifierSignature(getTimeSpan),
        equals('struct(Windows.Foundation.TimeSpan;i8)'));

    final asyncAction =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;
    final completedHandler =
        asyncAction.findMethod('get_Completed')!.returnType.typeIdentifier;
    expect(parseTypeIdentifierSignature(completedHandler),
        equals('delegate({a4ed5c81-76c9-40bd-8be6-b1d90fb20ae7})'));

    final asyncInfo =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncInfo')!;
    final status =
        asyncInfo.findMethod('get_Status')!.returnType.typeIdentifier;
    expect(parseTypeIdentifierSignature(status),
        equals('enum(Windows.Foundation.AsyncStatus;i4)'));

    final uriRuntimeClassFactory = MetadataStore.getMetadataForType(
        'Windows.Foundation.IUriRuntimeClassFactory')!;
    final createUri = uriRuntimeClassFactory
        .findMethod('CreateUri')!
        .returnType
        .typeIdentifier;
    expect(
        parseTypeIdentifierSignature(createUri),
        equals(
            'rc(Windows.Foundation.Uri;{9e365e57-48b2-4160-956f-c7385120bbfc})'));

    final stringMap = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.StringMap')!;
    // IMap<String, String>
    final map = stringMap.interfaces.elementAt(0).typeSpec!;
    expect(
        parseTypeIdentifierSignature(map),
        equals(
            'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)'));
  });

  test('parseGenericTypeIdentifierSignature', () {
    final calendarFactory = MetadataStore.getMetadataForType(
        'Windows.Globalization.ICalendarFactory')!;
    expect(
        () => parseGenericTypeIdentifierSignature(calendarFactory
            .findMethod('CreateCalendar')!
            .returnType
            .typeIdentifier),
        throwsArgumentError);

    final mediaPropertySet = MetadataStore.getMetadataForType(
        'Windows.Media.MediaProperties.MediaPropertySet')!;
    // IMap<GUID, Object>
    final map = mediaPropertySet.interfaces.elementAt(0).typeSpec!;
    expect(
        parseGenericTypeIdentifierSignature(map),
        equals(
            'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};g16;cinterface(IInspectable))'));
    // IIterable<IKeyValuePair<GUID, Object>>
    final iterable = mediaPropertySet.interfaces.elementAt(1).typeSpec!;
    expect(
        parseGenericTypeIdentifierSignature(iterable),
        equals(
            'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};g16;cinterface(IInspectable)))'));

    final timePickerFlyout = MetadataStore.getMetadataForType(
        'Windows.UI.Xaml.Controls.ITimePickerFlyout')!;
    // IAsyncOperation<IReference<Duration>>
    final asyncOperation =
        timePickerFlyout.findMethod('ShowAtAsync')!.returnType.typeIdentifier;
    expect(
        parseGenericTypeIdentifierSignature(asyncOperation),
        equals(
            'pinterface({9fc2b0bb-e446-44e2-aa61-9cab8f636af2};pinterface({61c17706-2d65-11e0-9ae8-d48564015472};struct(Windows.Foundation.TimeSpan;i8)))'));

    final pedometer2 = MetadataStore.getMetadataForType(
        'Windows.Devices.Sensors.IPedometer2')!;
    // IMapView<PedometerStepKind, PedometerReading>
    final mapView =
        pedometer2.findMethod('GetCurrentReadings')!.returnType.typeIdentifier;
    expect(
        parseGenericTypeIdentifierSignature(mapView),
        equals(
            'pinterface({e480ce40-a338-4ada-adcf-272272e48cb9};enum(Windows.Devices.Sensors.PedometerStepKind;i4);rc(Windows.Devices.Sensors.PedometerReading;{2245dcf4-a8e1-432f-896a-be0dd9b02d24}))'));
  });

  test('iidFromSignature', () {
    // IAsyncOperation<IReference<Duration>>
    expect(
        iidFromSignature(
            'pinterface({9fc2b0bb-e446-44e2-aa61-9cab8f636af2};pinterface({61c17706-2d65-11e0-9ae8-d48564015472};struct(Windows.Foundation.TimeSpan;i8)))'),
        equals('{24A901AD-910F-5C0F-B23C-67007577A558}'));

    // IMap<GUID, Object>
    expect(
        iidFromSignature(
            'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};g16;cinterface(IInspectable))'),
        equals('{5EE3189C-7DBF-5998-AD07-5414FB82567C}'));

    // IIterable<IKeyValuePair<GUID, Object>>
    expect(
        iidFromSignature(
            'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};g16;cinterface(IInspectable)))'),
        equals('{F3B20528-E3B3-5331-B2D0-0C2623AEE785}'));

    // IIterable<IKeyValuePair<String, IJsonValue>>
    expect(
        iidFromSignature(
            'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};string;{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e}))'),
        equals('{DFABB6E1-0411-5A8F-AA87-354E7110F099}'));

    // IIterable<String>
    expect(
        iidFromSignature(
            'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};string)'),
        equals('{E2FCC7C1-3BFC-5A0B-B2B0-72E769D1CB7E}'));

    // IMap<String, String>
    expect(
        iidFromSignature(
            'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)'),
        equals('{F6D1F700-49C2-52AE-8154-826F9908773C}'));

    // IMapView<PedometerStepKind, PedometerReading>
    expect(
        iidFromSignature(
            'pinterface({e480ce40-a338-4ada-adcf-272272e48cb9};enum(Windows.Devices.Sensors.PedometerStepKind;i4);rc(Windows.Devices.Sensors.PedometerReading;{2245dcf4-a8e1-432f-896a-be0dd9b02d24}))'),
        equals('{64F0C54C-4865-56BD-AC98-64A98451E362}'));

    // IVector<IJsonValue>
    expect(
        iidFromSignature(
            'pinterface({913337e9-11a1-4345-a3a2-4e7f956e222d};{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e})'),
        equals('{D44662BC-DCE3-59A8-9272-4B210F33908B}'));

    // IVector<String>
    expect(
        iidFromSignature(
            'pinterface({913337e9-11a1-4345-a3a2-4e7f956e222d};string)'),
        equals('{98B9ACC1-4B56-532E-AC73-03D5291CCA90}'));
  });

  test('iidFromTypeDef', () {
    final stringMap = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.StringMap')!;
    // IMap<String, String>
    expect(iidFromTypeDef(stringMap.interfaces[0]),
        equals('{F6D1F700-49C2-52AE-8154-826F9908773C}'));
    // IIterable<IKeyValuePair<String, String>>
    expect(iidFromTypeDef(stringMap.interfaces[1]),
        equals('{E9BDAAF0-CBF6-5C72-BE90-29CBF3A1319B}'));

    final iPropertySet = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IPropertySet')!;
    // IObservableMap<String, Object>
    expect(iidFromTypeDef(iPropertySet.interfaces[0]),
        equals('{236AAC9D-FB12-5C4D-A41C-9E445FB4D7EC}'));

    final mediaPropertySet = MetadataStore.getMetadataForType(
        'Windows.Media.MediaProperties.MediaPropertySet')!;
    // IMap<GUID, Object>
    expect(iidFromTypeDef(mediaPropertySet.interfaces[0]),
        equals('{5EE3189C-7DBF-5998-AD07-5414FB82567C}'));

    final jsonObject =
        MetadataStore.getMetadataForType('Windows.Data.Json.JsonObject')!;
    // IMap<String, IJsonValue>
    expect(iidFromTypeDef(jsonObject.interfaces[2]),
        equals('{C9D9A725-786B-5113-B4B7-9B61764C220B}'));
    // IIterable<IKeyValuePair<String, IJsonValue>>
    expect(iidFromTypeDef(jsonObject.interfaces[3]),
        equals('{DFABB6E1-0411-5A8F-AA87-354E7110F099}'));
  });

  test('iidFromTypeIdentifier', () {
    final iFileOpenPicker = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;
    // IAsyncOperation<IVectorView<StorageFile>>
    expect(
        iidFromTypeIdentifier(iFileOpenPicker
            .findMethod('PickMultipleFilesAsync')!
            .returnType
            .typeIdentifier),
        equals('{03362E33-E413-5F29-97D0-48A4780935F9}'));

    final iStorageFileQueryResult2 = MetadataStore.getMetadataForType(
        'Windows.Storage.Search.IStorageFileQueryResult2')!;
    // IMap<String, IVectorView<TextSegment>>
    expect(
        iidFromTypeIdentifier(iStorageFileQueryResult2
            .findMethod('GetMatchingPropertiesWithRanges')!
            .returnType
            .typeIdentifier),
        equals('{A31B6540-B2B1-536D-818F-8ADE7051C3B3}'));

    final iPedometer2 = MetadataStore.getMetadataForType(
        'Windows.Devices.Sensors.IPedometer2')!;
    // IMapView<PedometerStepKind, PedometerReading>
    expect(
        iidFromTypeIdentifier(iPedometer2
            .findMethod('GetCurrentReadings')!
            .returnType
            .typeIdentifier),
        equals('{64F0C54C-4865-56BD-AC98-64A98451E362}'));

    final iTimePickerFlyout = MetadataStore.getMetadataForType(
        'Windows.UI.Xaml.Controls.ITimePickerFlyout')!;
    // IAsyncOperation<IReference<TimeSpan>>
    expect(
        iidFromTypeIdentifier(iTimePickerFlyout
            .findMethod('ShowAtAsync')!
            .returnType
            .typeIdentifier),
        equals('{24A901AD-910F-5C0F-B23C-67007577A558}'));
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

@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import 'helpers.dart';

void main() {
  final windowsBuildNumber = getWindowsBuildNumber();
  test('Class valuetype is correctly identified', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker')!;

    final method = winTypeDef.findMethod('put_ViewMode')!;
    final classType = method.parameters.first.typeIdentifier;
    final typeProjection = TypeProjection(classType);

    expect(typeProjection.isWrappedValueType, isTrue);
  });

  test('Property getter projects appropriate results for interface.', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Media.Playback.MediaPlayer')!;

    final method = winTypeDef.findMethod('get_Source')!;
    final typeProjection = TypeProjection(method.returnType.typeIdentifier);
    expect(typeProjection.dartType, equals('Pointer<COMObject>'));
    expect(typeProjection.nativeType, equals('Pointer<COMObject>'));
    expect(typeProjection.methodParamType, equals('IMediaPlaybackSource'));
  });

  test('Property setter projects appropriate results for delegate.', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IAsyncAction')!;

    final method = winTypeDef.findMethod('put_Completed')!;
    final typeProjection =
        TypeProjection(method.parameters.first.typeIdentifier);
    expect(typeProjection.dartType,
        equals('Pointer<NativeFunction<AsyncActionCompletedHandler>>'));
    expect(typeProjection.nativeType,
        equals('Pointer<NativeFunction<AsyncActionCompletedHandler>>'));
  });

  test('WinRT string projects correctly.', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IPropertyValue');
    expect(winTypeDef, isNotNull);

    final method = winTypeDef!.findMethod('GetString');
    expect(method, isNotNull);
    final typeIdentifier = method!.returnType.typeIdentifier;
    final typeProjection = TypeProjection(typeIdentifier);

    expect(typeProjection.nativeType, equals('IntPtr'));
    expect(typeProjection.dartType, equals('int'));
  });

  test('WinRT interface has right vtable start', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IPropertyValue');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.vtableStart, equals(6));
  });

  test('WinRT interface has right inheritance chain', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IPropertyValue');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.inheritsFrom, isEmpty);
  });

  test('WinRT interface has right short name', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.IPropertyValue');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.shortName, equals('IPropertyValue'));
  });

  test('WinRT interface has right IID', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.guidConstants, contains('IID_IFileOpenPicker'));
    expect(projection.guidConstants,
        contains('{2ca8278a-12c5-4c5f-8977-94547793c241}'));
  });

  test('WinRT interface has right number of methods', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.methodProjections.length, equals(11));
  });

  test('WinRT interface has right first method', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.methodProjections.first.name, equals('get_ViewMode'));
  });

  test('WinRT interface has right first method type', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final getPropertyProjection = projection.methodProjections.first;

    expect(
        getPropertyProjection.runtimeType, equals(WinRTGetPropertyProjection));
    expect(
        projection.methodProjections.first.returnType.dartType, equals('int'));
    expect(projection.methodProjections.first.returnType.typeIdentifier.name,
        endsWith('PickerViewMode'));
    expect(projection.methodProjections.first.parameters, isEmpty);
    expect(
        (getPropertyProjection as WinRTGetPropertyProjection).exposedMethodName,
        equals('viewMode'));
  });

  test('WinRT interface import is meaningful', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.interfaceImports, equals(['iinspectable.dart']));
  });

  test('WinRT interface import header is meaningful', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Gaming.Input.IGamepadStatics2');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.importHeader, contains("import 'igamepadstatics.dart'"));
  });

  test('WinRT class includes correct import file for structs', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Gaming.Input.Gamepad');

    final projection = WinRTClassProjection(winTypeDef!);
    expect(projection.importHeader, contains("import 'structs.g.dart'"));
  });

  test('WinRT interface includes correct import file for structs', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Gaming.Input.IGamepad');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.importHeader, contains("import 'structs.g.dart"));
  });

  test('WinRT GetDateTime returns a DateTime', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final dateTimeProjection =
        projection.methodProjections.firstWhere((m) => m.name == 'GetDateTime');

    expect(dateTimeProjection.nativePrototype,
        equalsIgnoringWhitespace('HRESULT Function(Pointer, Pointer<Uint64>)'));
    expect(dateTimeProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, Pointer<Uint64>)'));
    expect(dateTimeProjection.returnType.dartType, equals('int'));
    expect(dateTimeProjection.toString().trimLeft(),
        startsWith('DateTime getDateTime'));
  });

  test('WinRT exposed get property name is properly converted to camelCase',
      () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Networking.IHostName');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final ipInformationProjection = projection.methodProjections
            .firstWhere((m) => m.name == 'get_IPInformation')
        as WinRTGetPropertyProjection;
    expect(ipInformationProjection.exposedMethodName, equals('ipInformation'));
  });

  test('WinRT exposed method name is properly converted to camelCase', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.UI.ViewManagement.IUISettings');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final ipInformationProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'UIElementColor');

    expect(ipInformationProjection.camelCasedName, equals('uiElementColor'));
  });

  test('WinRT get property successfully projects something', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final output = projection.methodProjections.first.toString();
    expect(output, isNotEmpty);
  });

  test('WinRT get property successfully projects HSTRING', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final numeralSystemProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'get_NumeralSystem');

    expect(numeralSystemProjection.nativePrototype,
        equalsIgnoringWhitespace('HRESULT Function(Pointer, Pointer<IntPtr>)'));
    expect(numeralSystemProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, Pointer<IntPtr>)'));
    expect(numeralSystemProjection.returnType.dartType, equals('int'));
    expect(numeralSystemProjection.toString().trimLeft(),
        startsWith('String get numeralSystem'));
  });

  test('WinRT get property successfully projects int', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final numDaysProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'get_NumberOfDaysInThisMonth');

    expect(numDaysProjection.nativePrototype,
        equalsIgnoringWhitespace('HRESULT Function(Pointer, Pointer<Int32>)'));
    expect(numDaysProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, Pointer<Int32>)'));
    expect(numDaysProjection.toString().trimLeft(),
        startsWith('int get numberOfDaysInThisMonth'));
  });

  test('WinRT get property successfully projects DateTime', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.FileProperties.IBasicProperties');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final dateModifiedProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'get_DateModified');

    expect(dateModifiedProjection.nativePrototype,
        equalsIgnoringWhitespace('HRESULT Function(Pointer, Pointer<Uint64>)'));
    expect(dateModifiedProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, Pointer<Uint64>)'));
    expect(dateModifiedProjection.returnType.dartType, equals('int'));
    expect(dateModifiedProjection.toString().trimLeft(),
        startsWith('DateTime get dateModified'));
  });

  test('WinRT get property successfully projects Duration', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.System.Power.IPowerManagerStatics');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final dischargeTimeProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'get_RemainingDischargeTime');

    expect(dischargeTimeProjection.nativePrototype,
        equalsIgnoringWhitespace('HRESULT Function(Pointer, Pointer<Uint64>)'));
    expect(dischargeTimeProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, Pointer<Uint64>)'));
    expect(dischargeTimeProjection.returnType.dartType, equals('int'));
    expect(dischargeTimeProjection.toString().trimLeft(),
        startsWith('Duration get remainingDischargeTime'));
  });

  test('WinRT get property successfully projects List<String>', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final languagesProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'get_Languages');

    expect(
        languagesProjection.nativePrototype,
        equalsIgnoringWhitespace(
            'HRESULT Function(Pointer, Pointer<COMObject>)'));
    expect(languagesProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, Pointer<COMObject>)'));
    expect(languagesProjection.toString().trimLeft(),
        startsWith('List<String> get languages'));
    expect(languagesProjection.toString(),
        contains("iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'"));
  });

  test('WinRT get property successfully projects IMap<String, String>', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.UI.Notifications.INotificationData');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final valuesProjection =
        projection.methodProjections.firstWhere((m) => m.name == 'get_Values');

    expect(
        valuesProjection.nativePrototype,
        equalsIgnoringWhitespace(
            'HRESULT Function(Pointer, Pointer<COMObject>)'));
    expect(valuesProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, Pointer<COMObject>)'));
    expect(valuesProjection.toString().trimLeft(),
        startsWith('IMap<String, String> get values'));
    expect(valuesProjection.toString(),
        contains("iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}'"));
  });

  test('WinRT get property successfully projects nullable types', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.UI.Notifications.IToastNotification');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final expirationTimeSystemProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'get_ExpirationTime');

    expect(
        expirationTimeSystemProjection.nativePrototype,
        equalsIgnoringWhitespace(
            'HRESULT Function(Pointer, Pointer<COMObject>)'));
    expect(expirationTimeSystemProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, Pointer<COMObject>)'));
    expect(expirationTimeSystemProjection.returnType.dartType,
        equals('COMObject'));
    expect(expirationTimeSystemProjection.toString().trimLeft(),
        startsWith('DateTime? get expirationTime'));
    expect(expirationTimeSystemProjection.toString(),
        contains("referenceIid: '{5541d8a7-497c-5aa4-86fc-7713adbf2a2c}'"));
  });

  test('WinRT Clone method successfully projects Pointer<COMObject>', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final cloneProjection =
        projection.methodProjections.firstWhere((m) => m.name == 'Clone');

    expect(
        cloneProjection.nativePrototype,
        equalsIgnoringWhitespace(
            'HRESULT Function(Pointer, Pointer<COMObject>)'));
    expect(cloneProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, Pointer<COMObject>)'));
    expect(cloneProjection.returnType.dartType, equals('Pointer<COMObject>'));
    expect(
        cloneProjection.toString().trimLeft(), startsWith('Calendar clone()'));
  });

  test('WinRT TryCreate method successfully projects Pointer<COMObject>', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Globalization.PhoneNumberFormatting.IPhoneNumberFormatterStatics');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final tryCreateProjection =
        projection.methodProjections.firstWhere((m) => m.name == 'TryCreate');

    expect(
        tryCreateProjection.nativePrototype,
        equalsIgnoringWhitespace(
            'HRESULT Function(Pointer, IntPtr regionCode, Pointer<COMObject> phoneNumber)'));
    expect(
        tryCreateProjection.dartPrototype,
        equalsIgnoringWhitespace(
            'int Function(Pointer, int regionCode, Pointer<COMObject> phoneNumber)'));
    expect(
        tryCreateProjection.toString().trimLeft(),
        startsWith(
            'void tryCreate(String regionCode, PhoneNumberFormatter phoneNumber)'));
  });

  test('WinRT set property successfully projects something', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final output = projection.methodProjections[1].toString();
    expect(output, isNotEmpty);
  });

  test('WinRT set property contains key information', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final setEraProjection =
        projection.methodProjections.firstWhere((m) => m.name == 'put_Era');

    expect(setEraProjection.nativePrototype,
        equalsIgnoringWhitespace('HRESULT Function(Pointer, Int32)'));
    expect(setEraProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, int)'));
    expect(setEraProjection.returnType.dartType, equals('void'));
    expect(setEraProjection.toString().trimLeft(),
        startsWith('set era(int value)'));
  });

  test('WinRT set property successfully projects nullable DateTime parameter',
      () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.UI.Notifications.IToastNotification');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final expirationTimeProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'put_ExpirationTime');

    expect(expirationTimeProjection.nativePrototype,
        equalsIgnoringWhitespace('HRESULT Function(Pointer, COMObject)'));
    expect(expirationTimeProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, COMObject)'));
    expect(expirationTimeProjection.returnType.dartType, equals('void'));
    expect(expirationTimeProjection.toString().trimLeft(),
        startsWith('set expirationTime(DateTime? value)'));
    expect(expirationTimeProjection.toString(),
        contains('''final referencePtr = value == null
            ? calloc<COMObject>()
            : boxValue(value, convertToIReference: true);'''));
  });

  test('WinRT set property successfully projects nullable enum parameter', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Devices.Bluetooth.Advertisement.IBluetoothLEAdvertisement');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final flagsProjection =
        projection.methodProjections.firstWhere((m) => m.name == 'put_Flags');

    expect(flagsProjection.nativePrototype,
        equalsIgnoringWhitespace('HRESULT Function(Pointer, COMObject)'));
    expect(flagsProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, COMObject)'));
    expect(flagsProjection.returnType.dartType, equals('void'));
    expect(flagsProjection.toString().trimLeft(),
        startsWith('set flags(BluetoothLEAdvertisementFlags? value)'));
    expect(flagsProjection.toString(),
        contains('''final referencePtr = value == null
            ? calloc<COMObject>()
            : boxValue(value?.value, convertToIReference: true, nativeType: Uint32);'''));
  });

  test('WinRT method projects DateTime parameter correctly', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final setDateTimeProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'SetDateTime') as WinRTMethodProjection;
    final dateTimeParameter =
        setDateTimeProjection.parameters.first as WinRTParameterProjection;

    expect(dateTimeParameter.preamble, isNotEmpty);
    expect(setDateTimeProjection.parametersPreamble, isNotEmpty);
  });

  test('WinRT method projects nested type correctly', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.StringMap');

    final projection = WinRTClassProjection(winTypeDef!);
    final firstProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'First') as WinRTMethodProjection;

    expect(firstProjection.returnType.methodParamType,
        equals('IIterator<IKeyValuePair<String, String>>'));
    expect(firstProjection.toString().trimLeft(),
        startsWith('IIterator<IKeyValuePair<String, String>> first()'));
  });

  test('WinRT method projects parameter with nested type correctly', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.UI.Notifications.INotificationDataFactory');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final createNotificationDataProjection = projection.methodProjections
            .firstWhere((m) => m.name == 'CreateNotificationDataWithValues')
        as WinRTMethodProjection;
    final initialValuesParameter = createNotificationDataProjection
        .parameters.first as WinRTParameterProjection;

    expect(initialValuesParameter.preamble, isEmpty);
    expect(initialValuesParameter.postamble, isEmpty);
    expect(initialValuesParameter.localIdentifier,
        equals('initialValues.ptr.cast<Pointer<COMObject>>().value'));
    expect(initialValuesParameter.type.methodParamType,
        equals('IIterable<IKeyValuePair<String, String>>'));
  });

  test('WinRT interface successfully projects something', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final output = projection.toString();
    expect(output, isNotEmpty);
    expect(output, contains('iinspectable.dart'));
  });

  test('WinRT class successfully projects a default constructor', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.FileOpenPicker');

    final projection = WinRTClassProjection(winTypeDef!);
    expect(projection.hasDefaultConstructor, isTrue);
    expect(
        projection.defaultConstructor,
        equalsIgnoringWhitespace(
            'FileOpenPicker() : super(ActivateClass(_className));'));
  });

  test('WinRT class does not project a default constructor', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Networking.HostName');

    final projection = WinRTClassProjection(winTypeDef!);
    expect(projection.hasDefaultConstructor, isFalse);
    expect(projection.defaultConstructor, isEmpty);
  });

  test('WinRT class includes implements keyword in class declaration', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Networking.HostName');

    final projection = WinRTClassProjection(winTypeDef!);
    expect(projection.inheritsFrom, isNotEmpty);
    expect(
        projection.classDeclaration,
        equals(
            'class HostName extends IInspectable implements IHostName, IStringable {'));
  });

  test('WinRT class does not include implements keyword in class declaration',
      () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.System.Launcher');

    final projection = WinRTClassProjection(winTypeDef!);
    expect(projection.inheritsFrom, isEmpty);
    expect(projection.classDeclaration,
        equals('class Launcher extends IInspectable {'));
  });

  test('WinRT interface that includes implements keyword in class declaration',
      () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Gaming.Input.IGamepad');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.inheritsFrom, isNotEmpty);
    expect(
        projection.classDeclaration,
        equals(
            'class IGamepad extends IInspectable implements IGameController {'));
  });

  test(
      'WinRT interface that does not include implements keyword in class declaration',
      () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.inheritsFrom, isEmpty);
    expect(projection.classDeclaration,
        equals('class ICalendar extends IInspectable {'));
  });

  test('WinRT class that inherits IStringable has Dart toString()', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo');

    final projection = WinRTClassProjection(winTypeDef!);
    expect(projection.inheritsFrom, contains('IStringable'));
    expect(projection.interfaceImports,
        contains('../../foundation/istringable.dart'));
  });

  test('WinRT class that does not inherit IStringable', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar');

    final projection = WinRTClassProjection(winTypeDef!);
    expect(projection.inheritsFrom, isNot(contains('IStringable')));
    expect(projection.interfaceImports,
        isNot(contains('../foundation/istringable.dart')));
  });

  test('WinRT class that includes _className property', () {
    const namespace = 'Windows.Globalization.Calendar';
    final winTypeDef = MetadataStore.getMetadataForType(namespace);

    final projection = WinRTClassProjection(winTypeDef!);
    expect(projection.hasDefaultConstructor, isTrue);
    expect(projection.factoryMappers, isNotEmpty);
    expect(projection.staticMappers, isEmpty);
    expect(projection.classNameDeclaration,
        equals("static const _className = '$namespace';"));
  });

  test('WinRT class that does not include _className property', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.FileProperties.BasicProperties');

    final projection = WinRTClassProjection(winTypeDef!);
    expect(projection.hasDefaultConstructor, isFalse);
    expect(projection.factoryMappers, isEmpty);
    expect(projection.staticMappers, isEmpty);
    expect(projection.classNameDeclaration, isEmpty);
  });

  test('WinRT class that imports ipropertvalue.dart', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.PropertyValue');

    final projection = WinRTClassProjection(winTypeDef!);
    expect(projection.importHeader, contains("import 'ipropertyvalue.dart'"));
  });

  test('WinRT interface that imports ipropertyvalue.dart', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.IPropertyValueStatics');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.importHeader, contains("import 'ipropertyvalue.dart'"));
  });

  test(
      'WinRT interface that imports ireference.dart and ipropertvalue_helpers.dart',
      () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Devices.Power.IBatteryReport');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.importHeader,
        contains("import '../../foundation/ireference.dart'"));
    expect(projection.importHeader,
        contains("import '../../internal/ipropertyvalue_helpers.dart'"));
  });

  test('WinRT interface that imports uri.dart', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.System.ILauncherOptions');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.importHeader,
        contains("import '../foundation/uri.dart' as winrt_uri;"));
  });

  test('WinRT interface that imports dart:async and async_helpers.dart', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Storage.Pickers.IFileOpenPicker');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.importHeader, contains("import 'dart:async';"));
    expect(projection.importHeader,
        contains("import '../../internal/async_helpers.dart';"));
  });

  test('WinRT get property successfully projects Uri', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.System.ILauncherOptions');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final fallbackUriProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'get_FallbackUri');
    expect(
        fallbackUriProjection.nativePrototype,
        equalsIgnoringWhitespace(
            'HRESULT Function(Pointer, Pointer<COMObject>)'));
    expect(fallbackUriProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, Pointer<COMObject>)'));
    expect(fallbackUriProjection.returnType.methodParamType, equals('Uri'));
    expect(fallbackUriProjection.toString().trimLeft(),
        startsWith('Uri get fallbackUri'));
    expect(
        fallbackUriProjection.toString().trimLeft(),
        contains(
            'final winrtUri = winrt_uri.Uri.fromRawPointer(retValuePtr);'));
    expect(fallbackUriProjection.toString().trimLeft(),
        contains('final uriAsString = winrtUri.toString();'));
    expect(fallbackUriProjection.toString().trimLeft(),
        contains('return Uri.parse(uriAsString);'));
  });

  test('WinRT set property successfully projects Uri', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.System.ILauncherOptions');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final fallbackUriProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'put_FallbackUri');
    expect(
        fallbackUriProjection.nativePrototype,
        equalsIgnoringWhitespace(
            'HRESULT Function(Pointer, Pointer<COMObject>)'));
    expect(fallbackUriProjection.dartPrototype,
        equalsIgnoringWhitespace('int Function(Pointer, Pointer<COMObject>)'));
    expect(fallbackUriProjection.toString().trimLeft(),
        startsWith('set fallbackUri(Uri value)'));
    expect(
        fallbackUriProjection.toString().trimLeft(),
        contains(
            'final winrtUri = winrt_uri.Uri.createUri(value.toString());'));
  });

  test('WinRT method successfully projects Uri parameter', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.System.ILauncherStatics');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    final launchUriAsyncProjection = projection.methodProjections
        .firstWhere((m) => m.name == 'LaunchUriAsync');
    final uriParameter =
        launchUriAsyncProjection.parameters.first as WinRTParameterProjection;
    expect(uriParameter.preamble,
        equals('final uriUri = winrt_uri.Uri.createUri(uri.toString());'));
    expect(uriParameter.postamble, equals('uriUri.release();'));
    expect(uriParameter.localIdentifier,
        equals('uriUri.ptr.cast<Pointer<COMObject>>().value'));
    expect(uriParameter.type.methodParamType, equals('Uri'));
  });

  test('WinRT interface includes imports for methods in implemented interfaces',
      () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Gaming.Input.IGamepad');

    final projection = WinRTInterfaceProjection(winTypeDef!);
    expect(projection.importHeader, contains("import 'headset.dart'"));
    expect(
        projection.importHeader, contains("import '../../system/user.dart'"));
    // TODO: Uncomment this once WinRT events are supported.
    // expect(projection.importHeader,
    //     contains("import '../../system/userchangedeventargs.dart'"));
  });

  if (windowsBuildNumber >= 18362) {
    test('WinRT class does not include excluded interfaces in the imports', () {
      final winTypeDef = MetadataStore.getMetadataForType(
          'Windows.Storage.Pickers.FileOpenPicker');

      final projection = WinRTClassProjection(winTypeDef!);
      expect(projection.importHeader.contains('ifileopenpicker.dart'), isTrue);
      expect(
          projection.importHeader.contains('ifileopenpicker2.dart'), isFalse);
      expect(projection.importHeader.contains('ifileopenpicker3.dart'), isTrue);
      expect(projection.importHeader.contains('ifileopenpickerstatics.dart'),
          isFalse);
      expect(projection.importHeader.contains('ifileopenpickerstatics2.dart'),
          isTrue);
      expect(
          projection.importHeader
              .contains('ifileopenpickerwithoperationid.dart'),
          isFalse);
    });
    test(
        'WinRT class does not include excluded interfaces in the implements keyword',
        () {
      final winTypeDef = MetadataStore.getMetadataForType(
          'Windows.Storage.Pickers.FileOpenPicker');

      final projection = WinRTClassProjection(winTypeDef!);
      expect(
          projection.inheritsFrom, equals('IFileOpenPicker, IFileOpenPicker3'));
      expect(
          projection.classDeclaration,
          equals(
              'class FileOpenPicker extends IInspectable implements IFileOpenPicker, IFileOpenPicker3 {'));
    });
  }
}

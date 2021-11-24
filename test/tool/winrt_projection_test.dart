@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/projection/type.dart';

void main() {
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

    expect(typeProjection.dartType, equals('Pointer<IntPtr>'));
    expect(typeProjection.nativeType, equals('Pointer<IntPtr>'));
  });
}

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('MarshallingDescriptor', () {
    group('array', () {
      test(
        'creates default marshalling descriptor with unspecified element type',
        () {
          const descriptor = MarshallingDescriptor.array(sizeParameterIndex: 1);
          check(descriptor).isA<ArrayMarshallingDescriptor>()
            ..has(
              (it) => it.arrayElementType,
              'arrayElementType',
            ).equals(NATIVE_TYPE_MAX)
            ..has((it) => it.sizeParameterIndex, 'sizeParameterIndex').equals(1)
            ..has((it) => it.numElements, 'numElements').isNull();
        },
      );

      test('creates fixed-length marshalling descriptor', () {
        const descriptor = MarshallingDescriptor.array(
          arrayElementType: NATIVE_TYPE_U2,
          sizeParameterIndex: 0,
          numElements: 10,
        );
        check(descriptor).isA<ArrayMarshallingDescriptor>()
          ..has(
            (it) => it.arrayElementType,
            'arrayElementType',
          ).equals(NATIVE_TYPE_U2)
          ..has((it) => it.sizeParameterIndex, 'sizeParameterIndex').equals(0)
          ..has((it) => it.numElements, 'numElements').equals(10);
      });

      test('throws if sizeParameterIndex is 0 but numElements is missing', () {
        check(
          () => MarshallingDescriptor.array(
            arrayElementType: NATIVE_TYPE_U1,
            sizeParameterIndex: 0,
          ),
        ).throws<AssertionError>();
      });

      test('throws if numElements is < 1', () {
        check(
          () => MarshallingDescriptor.array(
            arrayElementType: NATIVE_TYPE_I2,
            sizeParameterIndex: 0,
            numElements: 0,
          ),
        ).throws<AssertionError>();
      });

      test('throws if sizeParameterIndex is negative', () {
        check(
          () => MarshallingDescriptor.array(
            arrayElementType: NATIVE_TYPE_I4,
            sizeParameterIndex: -1,
          ),
        ).throws<AssertionError>();
      });
    });

    group('simple', () {
      test('creates valid marshalling descriptor', () {
        const descriptor = MarshallingDescriptor.simple(NATIVE_TYPE_I4);
        check(descriptor).isA<SimpleMarshallingDescriptor>();
        check(descriptor.nativeType).equals(NATIVE_TYPE_I4);
      });

      test('throws on NATIVE_TYPE_ARRAY', () {
        check(
          () => MarshallingDescriptor.simple(NATIVE_TYPE_ARRAY),
        ).throws<AssertionError>();
      });

      test('throws on NATIVE_TYPE_MAX', () {
        check(
          () => MarshallingDescriptor.simple(NATIVE_TYPE_MAX),
        ).throws<AssertionError>();
      });
    });
  });
}

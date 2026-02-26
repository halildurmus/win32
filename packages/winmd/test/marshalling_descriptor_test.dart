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
          check(
            descriptor,
          ).equals(const ArrayMarshallingDescriptor(sizeParameterIndex: 1));
          check(descriptor.toString()).equals(
            'ArrayMarshallingDescriptor(elementType: 80, sizeParameterIndex: 1)',
          );
        },
      );

      test('creates fixed-length marshalling descriptor', () {
        const descriptor = MarshallingDescriptor.array(
          elementType: NATIVE_TYPE_U2,
          sizeParameterIndex: 0,
          numElements: 10,
        );
        check(descriptor).equals(
          const ArrayMarshallingDescriptor(
            elementType: NATIVE_TYPE_U2,
            sizeParameterIndex: 0,
            numElements: 10,
          ),
        );
        check(descriptor.toString()).equals(
          'ArrayMarshallingDescriptor(elementType: 6, sizeParameterIndex: 0, '
          'numElements: 10)',
        );
      });

      test('throws if sizeParameterIndex is 0 but numElements is missing', () {
        check(
          () => MarshallingDescriptor.array(
            elementType: NATIVE_TYPE_U1,
            sizeParameterIndex: 0,
          ),
        ).throws<AssertionError>();
      });

      test('throws if numElements is < 1', () {
        check(
          () => MarshallingDescriptor.array(
            elementType: NATIVE_TYPE_I2,
            sizeParameterIndex: 0,
            numElements: 0,
          ),
        ).throws<AssertionError>();
      });

      test('throws if sizeParameterIndex is negative', () {
        check(
          () => MarshallingDescriptor.array(
            elementType: NATIVE_TYPE_I4,
            sizeParameterIndex: -1,
          ),
        ).throws<AssertionError>();
      });
    });

    group('simple', () {
      test('creates valid marshalling descriptor', () {
        const descriptor = MarshallingDescriptor.simple(NATIVE_TYPE_I4);
        check(
          descriptor,
        ).equals(const SimpleMarshallingDescriptor(NATIVE_TYPE_I4));
        check(descriptor.toString()).equals('SimpleMarshallingDescriptor(7)');
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

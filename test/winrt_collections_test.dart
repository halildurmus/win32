// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

// Exhaustively test the WinRT Collections to make sure constructors,
// properties and methods are working correctly.

void main() {
  if (isWindowsRuntimeAvailable()) {
    group('IVector<String>', () {
      late IFileOpenPicker picker;
      late IVector<String> vector;
      late Arena allocator;

      setUp(() {
        winrtInitialize();

        final object = CreateObject(
            'Windows.Storage.Pickers.FileOpenPicker', IID_IFileOpenPicker);
        picker = IFileOpenPicker.fromRawPointer(object);
        allocator = Arena();
        vector = picker.fileTypeFilter;
      });

      test('getAt fails if the vector is empty', () {
        expect(() => vector.getAt(0), throwsException);
      });

      test('getAt throws exception if the index is out of bounds', () {
        vector
          ..append('.jpg')
          ..append('.jpeg');
        expect(() => vector.getAt(2), throwsException);
      });

      test('getAt returns elements', () {
        vector
          ..append('.jpg')
          ..append('.jpeg');
        expect(vector.getAt(0), equals('.jpg'));
        expect(vector.getAt(1), equals('.jpeg'));
      });

      test('getView', () {
        vector
          ..append('.jpg')
          ..append('.jpeg');
        final list = vector.getView;
        expect(list.length, equals(2));
      });

      test('indexOf finds element', () {
        final pIndex = allocator<Uint32>();

        vector
          ..append('.jpg')
          ..append('.jpeg');
        final containsElement = vector.indexOf('.jpeg', pIndex);
        expect(containsElement, true);
        expect(pIndex.value, equals(1));
      });

      test('indexOf returns 0 if the element is not found', () {
        final pIndex = allocator<Uint32>();

        vector
          ..append('.jpg')
          ..append('.jpeg');
        final containsElement = vector.indexOf('.png', pIndex);
        expect(containsElement, false);
        expect(pIndex.value, equals(0));
      });

      test('setAt throws exception if the vector is empty', () {
        expect(() => vector.setAt(0, '.jpg'), throwsException);
      });

      test('setAt throws exception if the index is out of bounds', () {
        vector
          ..append('.jpg')
          ..append('.jpeg');
        expect(() => vector.setAt(3, '.png'), throwsException);
      });

      test('setAt', () {
        vector
          ..append('.jpg')
          ..append('.jpeg');
        expect(vector.size, equals(2));
        vector.setAt(0, '.png');
        expect(vector.size, equals(2));
        vector.setAt(1, '.gif');
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals('.png'));
        expect(vector.getAt(1), equals('.gif'));
      });

      test('insertAt throws exception if the index is out of bounds', () {
        vector
          ..append('.jpg')
          ..append('.jpeg');
        expect(() => vector.insertAt(3, '.png'), throwsException);
      });

      test('insertAt', () {
        vector
          ..append('.jpg')
          ..append('.jpeg');
        expect(vector.size, equals(2));
        vector.insertAt(0, '.png');
        expect(vector.size, equals(3));
        vector.insertAt(2, '.gif');
        expect(vector.size, equals(4));
        expect(vector.getAt(0), equals('.png'));
        expect(vector.getAt(1), equals('.jpg'));
        expect(vector.getAt(2), equals('.gif'));
        expect(vector.getAt(3), equals('.jpeg'));
      });

      test('removeAt throws exception if the vector is empty', () {
        expect(() => vector.removeAt(0), throwsException);
      });

      test('removeAt throws exception if the index is out of bounds', () {
        vector
          ..append('.jpg')
          ..append('.jpeg');
        expect(() => vector.removeAt(3), throwsException);
      });

      test('removeAt', () {
        vector
          ..append('.jpg')
          ..append('.jpeg')
          ..append('.png')
          ..append('.gif');
        expect(vector.size, equals(4));
        vector.removeAt(2);
        expect(vector.size, equals(3));
        expect(vector.getAt(2), equals('.gif'));
        vector.removeAt(0);
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals('.jpeg'));
        vector.removeAt(1);
        expect(vector.size, equals(1));
        expect(vector.getAt(0), equals('.jpeg'));
        vector.removeAt(0);
        expect(vector.size, equals(0));
      });

      test('append', () {
        expect(vector.size, equals(0));
        vector.append('.jpg');
        expect(vector.size, equals(1));
        vector.append('.jpeg');
        expect(vector.size, equals(2));
      });

      test('removeAtEnd throws exception if the vector is empty', () {
        expect(() => vector.removeAtEnd(), throwsException);
      });

      test('removeAtEnd', () {
        vector
          ..append('.jpg')
          ..append('.jpeg');
        expect(vector.size, equals(2));
        vector.removeAtEnd();
        expect(vector.size, equals(1));
      });

      test('clear', () {
        vector
          ..append('.jpg')
          ..append('.jpeg');
        expect(vector.size, equals(2));
        vector.clear();
        expect(vector.size, equals(0));
      });

      test('getMany returns 0 if the vector is empty', () {
        final pHString = allocator<HSTRING>(1);

        expect(vector.getMany(0, pHString), equals(0));
      });

      test('getMany returns elements starting from index 0', () {
        final pHString = allocator<HSTRING>(3);

        vector
          ..append('.jpg')
          ..append('.jpeg')
          ..append('.png');
        expect(vector.getMany(0, pHString), equals(3));
        final list = pHString.toList(length: vector.size);
        expect(list.length, equals(3));
        expect(list.elementAt(0), equals('.jpg'));
        expect(list.elementAt(1), equals('.jpeg'));
        expect(list.elementAt(2), equals('.png'));
      });

      test('getMany returns elements starting from index 1', () {
        final pHString = allocator<HSTRING>(2);

        vector
          ..append('.jpg')
          ..append('.jpeg')
          ..append('.png');
        expect(vector.getMany(1, pHString), equals(2));
        final list = pHString.toList(length: 2);
        expect(list.length, equals(2));
        expect(list.elementAt(0), equals('.jpeg'));
        expect(list.elementAt(1), equals('.png'));
      });

      test('replaceAll', () {
        expect(vector.size, equals(0));
        vector.replaceAll(['.jpg', '.jpeg']);
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals('.jpg'));
        expect(vector.getAt(1), equals('.jpeg'));
        vector.replaceAll(['.png', '.gif']);
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals('.png'));
        expect(vector.getAt(1), equals('.gif'));
      });

      test('toList', () {
        vector
          ..append('.jpg')
          ..append('.jpeg')
          ..append('.png');
        final list = vector.toList();
        expect(list.length, equals(3));
        expect(list.elementAt(0), equals('.jpg'));
        expect(list.elementAt(1), equals('.jpeg'));
        expect(list.elementAt(2), equals('.png'));
      });

      test('first', () {
        vector
          ..append('.jpg')
          ..append('.jpeg')
          ..append('.png');
        final iterator = vector.first();
        expect(iterator.hasCurrent, true);
        expect(iterator.current, equals('.jpg'));
        expect(iterator.moveNext(), true);
        expect(iterator.current, equals('.jpeg'));
        expect(iterator.moveNext(), true);
        expect(iterator.current, equals('.png'));
        expect(iterator.moveNext(), false);
      });

      tearDown(() {
        free(picker.ptr);
        allocator.releaseAll(reuse: true);
        winrtUninitialize();
      });
    });

    group('IVectorView<String>', () {
      late ICalendar calendar;
      late IVectorView<String> vectorView;
      late Arena allocator;

      IVectorView<String> Languages(
          Pointer<COMObject> ptr, Allocator allocator) {
        final retValuePtr = allocator<COMObject>();

        final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
              Pointer,
              Pointer<COMObject>,
            )>>>()
            .value
            .asFunction<
                int Function(
              Pointer,
              Pointer<COMObject>,
            )>()(ptr.ref.lpVtbl, retValuePtr);

        if (FAILED(hr)) throw WindowsException(hr);

        return IVectorView.fromRawPointer(retValuePtr, allocator: allocator);
      }

      setUp(() {
        winrtInitialize();

        calendar = Calendar();
        allocator = Arena();
        vectorView = Languages(calendar.ptr, allocator);
      });

      test('getAt throws exception if the index is out of bounds', () {
        expect(() => vectorView.getAt(20), throwsException);
      });

      test('getAt returns elements', () {
        final element = vectorView.getAt(0);
        // Should be something like en-US
        expect(element[2], equals('-'));
        expect(element.length, equals(5));
      });

      test('indexOf returns 0 if the element is not found', () {
        final pIndex = allocator<Uint32>();
        final containsElement = vectorView.indexOf('xx-xx', pIndex);
        expect(containsElement, false);
        expect(pIndex.value, equals(0));
      });

      test('getMany returns elements starting from index 0', () {
        final pHString = allocator<HSTRING>(vectorView.size);

        expect(vectorView.getMany(0, pHString), greaterThanOrEqualTo(1));
        final list = pHString.toList(length: vectorView.size);
        expect(list.length, greaterThanOrEqualTo(1));
        // Should be something like en-US
        expect(list.first[2], equals('-'));
        expect(list.first.length, equals(5));
      });

      test('toList', () {
        final list = vectorView.toList();
        expect(list.length, greaterThanOrEqualTo(1));
        // Should be something like en-US
        expect(list.first[2], equals('-'));
        expect(list.first.length, equals(5));
      });

      test('first', () {
        final list = vectorView.toList();
        final iterator = vectorView.first();

        for (var i = 0; i < list.length; i++) {
          expect(iterator.hasCurrent, true);
          // Should be something like en-US
          expect(iterator.current[2], equals('-'));
          // MoveNext() should return true except for the last iteration
          expect(iterator.moveNext(), i < list.length - 1);
        }
      });

      tearDown(() {
        free(calendar.ptr);
        allocator.releaseAll(reuse: true);
        winrtUninitialize();
      });
    });

    group('IVectorView<IHostName>', () {
      late INetworkInformationStatics networkInformation;
      late IVectorView<IHostName> vectorView;
      late Arena allocator;

      IVectorView<IHostName> GetHostNames(
          Pointer<COMObject> ptr, Allocator allocator) {
        final retValuePtr = allocator<COMObject>();

        final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
              Pointer,
              Pointer<COMObject>,
            )>>>()
            .value
            .asFunction<
                int Function(
              Pointer,
              Pointer<COMObject>,
            )>()(
          ptr.ref.lpVtbl,
          retValuePtr,
        );

        if (FAILED(hr)) throw WindowsException(hr);

        return IVectorView.fromRawPointer(retValuePtr,
            creator: IHostName.fromRawPointer, allocator: allocator);
      }

      setUp(() {
        winrtInitialize();

        final object = CreateActivationFactory(
            'Windows.Networking.Connectivity.NetworkInformation',
            IID_INetworkInformationStatics);
        networkInformation = INetworkInformationStatics.fromRawPointer(object);
        allocator = Arena();
        vectorView = GetHostNames(object, allocator);
      });

      test('getAt throws exception if the index is out of bounds', () {
        expect(() => vectorView.getAt(20), throwsException);
      });

      test('getAt returns elements', () {
        final element = vectorView.getAt(0);
        expect(element.displayName, isNotEmpty);
      });

      test('indexOf finds element', () {
        final pIndex = allocator<Uint32>();
        final hostName = vectorView.getAt(0);
        final containsElement = vectorView.indexOf(hostName, pIndex);
        expect(containsElement, true);
        expect(pIndex.value, greaterThanOrEqualTo(0));
      });

      test('GetMany returns elements starting from index 0', () {
        final pCOMObject = allocator<COMObject>(vectorView.size);
        expect(vectorView.getMany(0, pCOMObject), greaterThanOrEqualTo(1));
        final list = pCOMObject.toList<IHostName>(IHostName.fromRawPointer,
            length: vectorView.size);
        expect(list.length, greaterThanOrEqualTo(1));
      });

      test('toList', () {
        final list = vectorView.toList();
        expect(list.length, greaterThanOrEqualTo(1));
      });

      test('First', () {
        final list = vectorView.toList();
        final iterator = vectorView.first();

        for (var i = 0; i < list.length; i++) {
          expect(iterator.hasCurrent, true);
          expect(iterator.current.rawName, equals(list[i].rawName));
          // MoveNext() should return true except for the last iteration
          expect(iterator.moveNext(), i < list.length - 1);
        }
      });

      tearDown(() {
        free(networkInformation.ptr);
        allocator.releaseAll(reuse: true);
        winrtUninitialize();
      });
    });
  }
}

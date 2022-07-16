// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

// Exhaustively test the WinRT Collections to make sure constructors,
// properties and methods are working correctly.

void main() {
  if (isWindowsRuntimeAvailable()) {
    group('IVector<DeviceClass>', () {
      late DevicePicker picker;
      late DevicePickerFilter pickerFilter;
      late IVector<DeviceClass> vector;
      late Arena allocator;

      setUp(() {
        winrtInitialize();

        allocator = Arena();
        picker = DevicePicker(allocator: allocator);
        pickerFilter = picker.filter;
        vector = pickerFilter.supportedDeviceClasses;
      });

      test('getAt fails if the vector is empty', () {
        expect(() => vector.getAt(0), throwsException);
      });

      test('getAt throws exception if the index is out of bounds', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        expect(() => vector.getAt(2), throwsException);
      });

      test('getAt returns elements', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        expect(vector.getAt(0), equals(DeviceClass.audioCapture));
        expect(vector.getAt(1), equals(DeviceClass.audioRender));
      });

      test('getView', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        final list = vector.getView;
        expect(list.length, equals(2));
        expect(() => list..clear(), throwsUnsupportedError);
      });

      test('indexOf finds element', () {
        final pIndex = allocator<Uint32>();

        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        final containsElement = vector.indexOf(DeviceClass.audioRender, pIndex);
        expect(containsElement, isTrue);
        expect(pIndex.value, equals(1));
      });

      test('indexOf returns 0 if the element is not found', () {
        final pIndex = allocator<Uint32>();

        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        final containsElement =
            vector.indexOf(DeviceClass.imageScanner, pIndex);
        expect(containsElement, isFalse);
        expect(pIndex.value, equals(0));
      });

      test('setAt throws exception if the vector is empty', () {
        expect(
            () => vector.setAt(0, DeviceClass.audioCapture), throwsException);
      });

      test('setAt throws exception if the index is out of bounds', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        expect(
            () => vector.setAt(3, DeviceClass.imageScanner), throwsException);
      });

      test('setAt', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        expect(vector.size, equals(2));
        vector.setAt(0, DeviceClass.imageScanner);
        expect(vector.size, equals(2));
        vector.setAt(1, DeviceClass.location);
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals(DeviceClass.imageScanner));
        expect(vector.getAt(1), equals(DeviceClass.location));
      });

      test('insertAt throws exception if the index is out of bounds', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        expect(() => vector.insertAt(3, DeviceClass.imageScanner),
            throwsException);
      });

      test('insertAt', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        expect(vector.size, equals(2));
        vector.insertAt(0, DeviceClass.imageScanner);
        expect(vector.size, equals(3));
        vector.insertAt(2, DeviceClass.location);
        expect(vector.size, equals(4));
        expect(vector.getAt(0), equals(DeviceClass.imageScanner));
        expect(vector.getAt(1), equals(DeviceClass.audioCapture));
        expect(vector.getAt(2), equals(DeviceClass.location));
        expect(vector.getAt(3), equals(DeviceClass.audioRender));
      });

      test('removeAt throws exception if the vector is empty', () {
        expect(() => vector.removeAt(0), throwsException);
      });

      test('removeAt throws exception if the index is out of bounds', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        expect(() => vector.removeAt(3), throwsException);
      });

      test('removeAt', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender)
          ..append(DeviceClass.imageScanner)
          ..append(DeviceClass.location);
        expect(vector.size, equals(4));
        vector.removeAt(2);
        expect(vector.size, equals(3));
        expect(vector.getAt(2), equals(DeviceClass.location));
        vector.removeAt(0);
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals(DeviceClass.audioRender));
        vector.removeAt(1);
        expect(vector.size, equals(1));
        expect(vector.getAt(0), equals(DeviceClass.audioRender));
        vector.removeAt(0);
        expect(vector.size, equals(0));
      });

      test('append', () {
        expect(vector.size, equals(0));
        vector.append(DeviceClass.audioCapture);
        expect(vector.size, equals(1));
        vector.append(DeviceClass.audioRender);
        expect(vector.size, equals(2));
      });

      test('removeAtEnd throws exception if the vector is empty', () {
        expect(() => vector.removeAtEnd(), throwsException);
      });

      test('removeAtEnd', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        expect(vector.size, equals(2));
        vector.removeAtEnd();
        expect(vector.size, equals(1));
      });

      test('clear', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender);
        expect(vector.size, equals(2));
        vector.clear();
        expect(vector.size, equals(0));
      });

      test('getMany returns 0 if the vector is empty', () {
        final pInt32 = allocator<Int32>();

        expect(vector.getMany(0, 1, pInt32), equals(0));
      });

      test('getMany returns elements starting from index 0', () {
        final pInt32 = allocator<Int32>(3);

        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender)
          ..append(DeviceClass.imageScanner);
        expect(vector.getMany(0, 3, pInt32), equals(3));
        final list = pInt32.asTypedList(3);
        expect(list.length, equals(3));
        expect(list.elementAt(0), equals(DeviceClass.audioCapture.value));
        expect(list.elementAt(1), equals(DeviceClass.audioRender.value));
        expect(list.elementAt(2), equals(DeviceClass.imageScanner.value));
      });

      test('getMany returns elements starting from index 1', () {
        final pInt32 = allocator<Int32>(2);

        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender)
          ..append(DeviceClass.imageScanner);
        expect(vector.getMany(1, 2, pInt32), equals(2));
        final list = pInt32.asTypedList(2);
        expect(list.length, equals(2));
        expect(list.elementAt(0), equals(DeviceClass.audioRender.value));
        expect(list.elementAt(1), equals(DeviceClass.imageScanner.value));
      });

      test('replaceAll', () {
        expect(vector.size, equals(0));
        vector.replaceAll([DeviceClass.audioCapture, DeviceClass.audioRender]);
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals(DeviceClass.audioCapture));
        expect(vector.getAt(1), equals(DeviceClass.audioRender));
        vector.replaceAll([DeviceClass.imageScanner, DeviceClass.location]);
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals(DeviceClass.imageScanner));
        expect(vector.getAt(1), equals(DeviceClass.location));
      });

      test('toList', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender)
          ..append(DeviceClass.imageScanner);
        final list = vector.toList();
        expect(list.length, equals(3));
        expect(list.elementAt(0), equals(DeviceClass.audioCapture));
        expect(list.elementAt(1), equals(DeviceClass.audioRender));
        expect(list.elementAt(2), equals(DeviceClass.imageScanner));
        expect(() => list..clear(), throwsUnsupportedError);
      });

      test('first', () {
        vector
          ..append(DeviceClass.audioCapture)
          ..append(DeviceClass.audioRender)
          ..append(DeviceClass.imageScanner);
        final iterator = vector.first();
        expect(iterator.hasCurrent, isTrue);
        expect(iterator.current, equals(DeviceClass.audioCapture));
        expect(iterator.moveNext(), isTrue);
        expect(iterator.current, equals(DeviceClass.audioRender));
        expect(iterator.moveNext(), isTrue);
        expect(iterator.current, equals(DeviceClass.imageScanner));
        expect(iterator.moveNext(), isFalse);
      });

      tearDown(() {
        free(pickerFilter.ptr);
        allocator.releaseAll(reuse: true);
        winrtUninitialize();
      });
    });

    group('IVector<int>', () {
      late Printing3DMultiplePropertyMaterial material;
      late IVector<int> vector;
      late Arena allocator;

      setUp(() {
        winrtInitialize();

        allocator = Arena();
        material = Printing3DMultiplePropertyMaterial(allocator: allocator);
        vector = material.materialIndices;
      });

      test('getAt fails if the vector is empty', () {
        expect(() => vector.getAt(0), throwsException);
      });

      test('getAt throws exception if the index is out of bounds', () {
        vector
          ..append(5)
          ..append(259);
        expect(() => vector.getAt(2), throwsException);
      });

      test('getAt returns elements', () {
        vector
          ..append(5)
          ..append(259);
        expect(vector.getAt(0), equals(5));
        expect(vector.getAt(1), equals(259));
      });

      test('getView', () {
        vector
          ..append(5)
          ..append(259);
        final list = vector.getView;
        expect(list.length, equals(2));
        expect(() => list..clear(), throwsUnsupportedError);
      });

      test('indexOf finds element', () {
        final pIndex = allocator<Uint32>();

        vector
          ..append(5)
          ..append(259);
        final containsElement = vector.indexOf(259, pIndex);
        expect(containsElement, isTrue);
        expect(pIndex.value, equals(1));
      });

      test('indexOf returns 0 if the element is not found', () {
        final pIndex = allocator<Uint32>();

        vector
          ..append(5)
          ..append(259);
        final containsElement = vector.indexOf(666, pIndex);
        expect(containsElement, isFalse);
        expect(pIndex.value, equals(0));
      });

      test('setAt throws exception if the vector is empty', () {
        expect(() => vector.setAt(0, 5), throwsException);
      });

      test('setAt throws exception if the index is out of bounds', () {
        vector
          ..append(5)
          ..append(259);
        expect(() => vector.setAt(3, 666), throwsException);
      });

      test('setAt', () {
        vector
          ..append(5)
          ..append(259);
        expect(vector.size, equals(2));
        vector.setAt(0, 666);
        expect(vector.size, equals(2));
        vector.setAt(1, 4294967295); // 2 ^ 32 - 1
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals(666));
        expect(vector.getAt(1), equals(4294967295));
      });

      test('insertAt throws exception if the index is out of bounds', () {
        vector
          ..append(5)
          ..append(259);
        expect(() => vector.insertAt(3, 666), throwsException);
      });

      test('insertAt', () {
        vector
          ..append(5)
          ..append(259);
        expect(vector.size, equals(2));
        vector.insertAt(0, 666);
        expect(vector.size, equals(3));
        vector.insertAt(2, 4294967295);
        expect(vector.size, equals(4));
        expect(vector.getAt(0), equals(666));
        expect(vector.getAt(1), equals(5));
        expect(vector.getAt(2), equals(4294967295));
        expect(vector.getAt(3), equals(259));
      });

      test('removeAt throws exception if the vector is empty', () {
        expect(() => vector.removeAt(0), throwsException);
      });

      test('removeAt throws exception if the index is out of bounds', () {
        vector
          ..append(5)
          ..append(259);
        expect(() => vector.removeAt(3), throwsException);
      });

      test('removeAt', () {
        vector
          ..append(5)
          ..append(259)
          ..append(666)
          ..append(4294967295);
        expect(vector.size, equals(4));
        vector.removeAt(2);
        expect(vector.size, equals(3));
        expect(vector.getAt(2), equals(4294967295));
        vector.removeAt(0);
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals(259));
        vector.removeAt(1);
        expect(vector.size, equals(1));
        expect(vector.getAt(0), equals(259));
        vector.removeAt(0);
        expect(vector.size, equals(0));
      });

      test('append', () {
        expect(vector.size, equals(0));
        vector.append(5);
        expect(vector.size, equals(1));
        vector.append(259);
        expect(vector.size, equals(2));
      });

      test('removeAtEnd throws exception if the vector is empty', () {
        expect(() => vector.removeAtEnd(), throwsException);
      });

      test('removeAtEnd', () {
        vector
          ..append(5)
          ..append(259);
        expect(vector.size, equals(2));
        vector.removeAtEnd();
        expect(vector.size, equals(1));
      });

      test('clear', () {
        vector
          ..append(5)
          ..append(259);
        expect(vector.size, equals(2));
        vector.clear();
        expect(vector.size, equals(0));
      });

      test('getMany returns 0 if the vector is empty', () {
        final pUint32 = allocator<Uint32>();

        expect(vector.getMany(0, 1, pUint32), equals(0));
      });

      test('getMany returns elements starting from index 0', () {
        final pUint32 = allocator<Uint32>(3);

        vector
          ..append(5)
          ..append(259)
          ..append(666);
        expect(vector.getMany(0, 3, pUint32), equals(3));
        final list = pUint32.asTypedList(vector.size);
        expect(list.length, equals(3));
        expect(list.elementAt(0), equals(5));
        expect(list.elementAt(1), equals(259));
        expect(list.elementAt(2), equals(666));
      });

      test('getMany returns elements starting from index 1', () {
        final pUint32 = allocator<Uint32>(2);

        vector
          ..append(5)
          ..append(259)
          ..append(666);
        expect(vector.getMany(1, 2, pUint32), equals(2));
        final list = pUint32.asTypedList(2);
        expect(list.length, equals(2));
        expect(list.elementAt(0), equals(259));
        expect(list.elementAt(1), equals(666));
      });

      test('replaceAll', () {
        expect(vector.size, equals(0));
        vector.replaceAll([5, 259]);
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals(5));
        expect(vector.getAt(1), equals(259));
        vector.replaceAll([666, 4294967295]);
        expect(vector.size, equals(2));
        expect(vector.getAt(0), equals(666));
        expect(vector.getAt(1), equals(4294967295));
      });

      test('toList', () {
        vector
          ..append(5)
          ..append(259)
          ..append(666);
        final list = vector.toList();
        expect(list.length, equals(3));
        expect(list.elementAt(0), equals(5));
        expect(list.elementAt(1), equals(259));
        expect(list.elementAt(2), equals(666));
        expect(() => list..clear(), throwsUnsupportedError);
      });

      test('first', () {
        vector
          ..append(5)
          ..append(259)
          ..append(666);
        final iterator = vector.first();
        expect(iterator.hasCurrent, isTrue);
        expect(iterator.current, equals(5));
        expect(iterator.moveNext(), isTrue);
        expect(iterator.current, equals(259));
        expect(iterator.moveNext(), isTrue);
        expect(iterator.current, equals(666));
        expect(iterator.moveNext(), isFalse);
      });

      tearDown(() {
        allocator.releaseAll(reuse: true);
        winrtUninitialize();
      });
    });

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
        expect(() => list..clear(), throwsUnsupportedError);
      });

      test('indexOf finds element', () {
        final pIndex = allocator<Uint32>();

        vector
          ..append('.jpg')
          ..append('.jpeg');
        final containsElement = vector.indexOf('.jpeg', pIndex);
        expect(containsElement, isTrue);
        expect(pIndex.value, equals(1));
      });

      test('indexOf returns 0 if the element is not found', () {
        final pIndex = allocator<Uint32>();

        vector
          ..append('.jpg')
          ..append('.jpeg');
        final containsElement = vector.indexOf('.png', pIndex);
        expect(containsElement, isFalse);
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
        final pHString = allocator<HSTRING>();

        expect(vector.getMany(0, 1, pHString), equals(0));
      });

      test('getMany returns elements starting from index 0', () {
        final pHString = allocator<HSTRING>(3);

        vector
          ..append('.jpg')
          ..append('.jpeg')
          ..append('.png');
        expect(vector.getMany(0, 3, pHString), equals(3));
        expect(convertFromHString(pHString[0]), equals('.jpg'));
        expect(convertFromHString(pHString[1]), equals('.jpeg'));
        expect(convertFromHString(pHString[2]), equals('.png'));
      });

      test('getMany returns elements starting from index 1', () {
        final pHString = allocator<HSTRING>(2);

        vector
          ..append('.jpg')
          ..append('.jpeg')
          ..append('.png');
        expect(vector.getMany(1, 2, pHString), equals(2));
        expect(convertFromHString(pHString[0]), equals('.jpeg'));
        expect(convertFromHString(pHString[1]), equals('.png'));
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
        expect(() => list..clear(), throwsUnsupportedError);
      });

      test('first', () {
        vector
          ..append('.jpg')
          ..append('.jpeg')
          ..append('.png');
        final iterator = vector.first();
        expect(iterator.hasCurrent, isTrue);
        expect(iterator.current, equals('.jpg'));
        expect(iterator.moveNext(), isTrue);
        expect(iterator.current, equals('.jpeg'));
        expect(iterator.moveNext(), isTrue);
        expect(iterator.current, equals('.png'));
        expect(iterator.moveNext(), isFalse);
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
        expect(containsElement, isFalse);
        expect(pIndex.value, equals(0));
      });

      test('getMany returns elements starting from index 0', () {
        final pHString = allocator<HSTRING>(vectorView.size);

        expect(vectorView.getMany(0, vectorView.size, pHString),
            greaterThanOrEqualTo(1));
        // Should be something like en-US
        expect(convertFromHString(pHString[0])[2], equals('-'));
        expect(convertFromHString(pHString[0]).length, equals(5));
      });

      test('toList', () {
        final list = vectorView.toList();
        expect(list.length, greaterThanOrEqualTo(1));
        // Should be something like en-US
        expect(list.first[2], equals('-'));
        expect(list.first.length, equals(5));
        expect(() => list..clear(), throwsUnsupportedError);
      });

      test('first', () {
        final list = vectorView.toList();
        final iterator = vectorView.first();

        for (var i = 0; i < list.length; i++) {
          expect(iterator.hasCurrent, isTrue);
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
        expect(containsElement, isTrue);
        expect(pIndex.value, greaterThanOrEqualTo(0));
      });

      test('GetMany returns elements starting from index 0', () {
        final pCOMObject = allocator<COMObject>(vectorView.size);
        expect(vectorView.getMany(0, vectorView.size, pCOMObject),
            greaterThanOrEqualTo(1));
      });

      test('toList', () {
        final list = vectorView.toList();
        expect(list.length, greaterThanOrEqualTo(1));
        expect(() => list..clear(), throwsUnsupportedError);
      });

      test('First', () {
        final list = vectorView.toList();
        final iterator = vectorView.first();

        for (var i = 0; i < list.length; i++) {
          expect(iterator.hasCurrent, isTrue);
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

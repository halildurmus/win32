import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:semaphore/semaphore.dart';

import 'constants.dart';
import 'extensions/int_to_hexstring.dart';
import 'extensions/unpack_utf16.dart';
import 'macros.dart';
import 'structs.dart';
import 'winmm.dart';

typedef _MmFunc = int Function();

int _throwOnError(_MmFunc func) {
  final mmError = func();
  if (mmError != MMSYSERR_NOERROR) {
    throw MmException(mmError);
  }
  return mmError;
}

class _AudioProcResult extends Struct {
  @IntPtr()
  int hWaveOut;
  @Uint32()
  int uMsg;
  @IntPtr()
  int dwParam1;
  @IntPtr()
  int dwParam2;
}

class WaveOut {
  static final WaveOut defaultDevice = WaveOut(WAVE_MAPPER);

  static int get deviceCount => waveOutGetNumDevs();

  static bool _audioProcSetup = false;
  static Pointer<NativeFunction> _audioProcPtr;

  factory WaveOut(int deviceId,
      {int bufferCount = 4, int bufferSizeInBytes = 2048}) {
    if (!_audioProcSetup) {
      final dl = DynamicLibrary.open('audio_proc.dll');
      final initializeApi = dl.lookupFunction<IntPtr Function(Pointer<Void>),
          int Function(Pointer<Void>)>("InitDartApiDL");
      final initResult = initializeApi(NativeApi.initializeApiDLData);
      if (initResult != 0) {
        throw 'Init failed';
      }
      _audioProcPtr = dl.lookup<NativeFunction>('AudioProc');
      _audioProcSetup = true;
    }

    final waveOutCaps = WAVEOUTCAPS.allocate();
    final mmError = waveOutGetDevCaps(
        deviceId, waveOutCaps.addressOf, sizeOf<WAVEOUTCAPS>());
    if (mmError != MMSYSERR_NOERROR) {
      throw MmException(mmError);
    }
    return WaveOut._(
      deviceId,
      waveOutCaps,
      List.unmodifiable(
          SupportedWaveFormat.fromBitField(waveOutCaps.dwFormats)),
      bufferCount,
      bufferSizeInBytes,
    );
  }

  WaveOut._(this.deviceId, this._waveOutCaps, this.waveFormats,
      this._bufferCount, int _bufferSizeInBytes)
      : _bufferSemaphore = LocalSemaphore(_bufferCount) {
    _audioProcSub = _audioProcPort.listen(_waveOutProc);
    _buffers = List.generate(
      _bufferCount,
      (int index) => WaveBuffer(this, index, _bufferSizeInBytes),
    );
  }

  final _audioProcPort = ReceivePort();
  final int deviceId;
  final WAVEOUTCAPS _waveOutCaps;
  final LocalSemaphore _bufferSemaphore;
  StreamSubscription<dynamic> _audioProcSub;
  List<WaveBuffer> _buffers;

  int _hWaveOut;
  Completer<void> _closeCompleter;

  final int _bufferCount;
  int _currentBuffer = 0;
  bool _noBuffer = true;

  // Device Capabilities

  final List<SupportedWaveFormat> waveFormats;

  int get manufacturerId => _waveOutCaps.wMid;

  int get productId => _waveOutCaps.wPid;

  String get driverVersion => _waveOutCaps.driverVersion;

  String get name => _waveOutCaps.name;

  int get channelCount => _waveOutCaps.wChannels;

  bool get supportsPitchControl =>
      (_waveOutCaps.dwSupport & WAVECAPS_PITCH) != 0;

  bool get supportsPlaybackRateControl =>
      (_waveOutCaps.dwSupport & WAVECAPS_PLAYBACKRATE) != 0;

  bool get supportsVolumeControl =>
      (_waveOutCaps.dwSupport & WAVECAPS_VOLUME) != 0;

  bool get supportsLRVolumeControl =>
      (_waveOutCaps.dwSupport & WAVECAPS_LRVOLUME) != 0;

  bool get supportsSync => (_waveOutCaps.dwSupport & WAVECAPS_SYNC) != 0;

  bool get supportsSampleAccurate =>
      (_waveOutCaps.dwSupport & WAVECAPS_SAMPLEACCURATE) != 0;

  /// Determines whether the specified waveform-audio output device
  /// supports a specified waveform-audio format.
  bool isFormatSupported(SupportedWaveFormat format) {
    final waveFormatEx = format._allocatePcmWaveFormat();
    try {
      final mmError = waveOutOpen(
        nullptr, // ptr can be NULL for query
        deviceId, // the device identifier
        waveFormatEx.addressOf, // defines requested format
        NULL, // no callback
        NULL, // no instance data
        WAVE_FORMAT_QUERY, // query only, do not open device
      );
      if (mmError == MMSYSERR_NOERROR) {
        return true;
      } else if (mmError == WAVERR_BADFORMAT) {
        return false;
      }
      throw MmException(mmError);
    } finally {
      free(waveFormatEx.addressOf);
    }
  }

  Future<void> dispose() async {
    if (_hWaveOut != null) {
      reset();
    }
    for (final hdr in _buffers) {
      hdr.dispose();
    }
    await close();
    free(_waveOutCaps.addressOf);
    _audioProcSub.cancel();
  }

  // Device Control

  void open(SupportedWaveFormat format) {
    assert(_hWaveOut == null, 'Device closed');
    final phWo = allocate<Int64>();
    final waveFormatEx = format._allocatePcmWaveFormat();
    try {
      _throwOnError(
        () => waveOutOpen(
          phWo,
          deviceId,
          waveFormatEx.addressOf,
          _audioProcPtr.address,
          _audioProcPort.sendPort.nativePort,
          WAVE_ALLOWSYNC | CALLBACK_FUNCTION,
        ),
      );
      _hWaveOut = phWo.value;
    } finally {
      free(waveFormatEx.addressOf);
      free(phWo);
    }
  }

  void _waveOutProc(dynamic message) {
    final _ptr = Pointer<_AudioProcResult>.fromAddress(message as int);
    try {
      final result = _ptr.ref;
      switch (result.uMsg) {
        case WOM_OPEN:
          //print('device opened');
          break;
        case WOM_DONE:
          //WAVEHDR waveHdr = Pointer<WAVEHDR>.fromAddress(result.dwParam1).ref;
          //print('buffer done ${waveHdr.dwUser}');
          _bufferSemaphore.release();
          break;
        case WOM_CLOSE:
          //print('device closed');
          _closeCompleter.complete();
          _hWaveOut = null;
          break;
      }
    } finally {
      free(_ptr);
    }
  }

  Future<void> write(Uint8List data) async {
    var start = 0;
    var nBytes = data.length;
    final nWritten = List.filled(1, 0);
    while (nBytes != 0) {
      // Get a buffer if necessary.
      if (_noBuffer) {
        await _bufferSemaphore.acquire();
        _noBuffer = false;
      }
      // Write into a buffer.
      if (_buffers[_currentBuffer]
          .write(Uint8List.sublistView(data, start), nWritten)) {
        start += nWritten[0];
        nBytes -= nWritten[0];
        _noBuffer = true;
        _currentBuffer = (_currentBuffer + 1) % _bufferCount;
      }
    }
  }

  void flush() {
    if (!_noBuffer) {
      _buffers[_currentBuffer].flush();
      _noBuffer = true;
      _currentBuffer = (_currentBuffer + 1) % _bufferCount;
    }
  }

  Future<void> wait() async {
    //  Send any remaining buffers.
    flush();
    //  Wait for the buffers back.
    for (var i = 0; i < _bufferCount; i++) {
      await _bufferSemaphore.acquire();
    }
    for (var i = 0; i < _bufferCount; i++) {
      _bufferSemaphore.release();
    }
  }

  Future<void> close() async {
    if (_hWaveOut != null) {
      _closeCompleter = Completer<void>();
      _throwOnError(() => waveOutClose(_hWaveOut));
      await _closeCompleter.future;
    }
  }

  // Volume Control

  // Get current volume combined
  double get volume => volumeLR.jointStereo;

  set volume(double value) => volumeLR = LRVolume(value, value);

  /// Get current volume for both channels
  LRVolume get volumeLR {
    assert(_hWaveOut != null, 'Device not open');
    assert(supportsVolumeControl, 'Device does not support volume control.');
    final result = allocate<Uint32>();
    try {
      _throwOnError(() => waveOutGetVolume(_hWaveOut, result));
      final volume = LRVolume.from32bit(result.value);
      if (!supportsLRVolumeControl) {
        // https://docs.microsoft.com/en-us/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetvolume
        // If a device does not support both left and right volume control, the
        // low-order word of the specified location contains the mono volume level.
        return LRVolume(volume.left, volume.left);
      } else {
        return volume;
      }
    } finally {
      free(result);
    }
  }

  set volumeLR(LRVolume value) {
    assert(_hWaveOut != null, 'Device not open');
    assert(supportsVolumeControl, 'Device does not support volume control.');
    _throwOnError(() => waveOutSetVolume(_hWaveOut, value.volume32bit));
  }

  // Pitch Control

  double get pitch {
    assert(_hWaveOut != null, 'Device not open');
    final result = allocate<Uint32>();
    try {
      _throwOnError(() => waveOutGetPitch(_hWaveOut, result));
      return _fixedToDouble(result.value);
    } finally {
      free(result);
    }
  }

  set pitch(double value) {
    assert(_hWaveOut != null, 'Device not open');
    assert(value >= 0, 'Cannot set pitch to negative value');
    _throwOnError(() => waveOutSetPitch(_hWaveOut, _doubleToFixed(value)));
  }

  // Playback Rate Control

  double get playbackRate {
    assert(_hWaveOut != null, 'Device not open');
    final result = allocate<Uint32>();
    try {
      _throwOnError(() => waveOutGetPlaybackRate(_hWaveOut, result));
      return _fixedToDouble(result.value);
    } finally {
      free(result);
    }
  }

  set playbackRate(double value) {
    assert(_hWaveOut != null, 'Device not open');
    assert(value >= 0, 'Cannot set playback rate to negative value');
    _throwOnError(
        () => waveOutSetPlaybackRate(_hWaveOut, _doubleToFixed(value)));
  }

  /// Get position in samples-per-channel
  int get position {
    assert(_hWaveOut != null, 'Device not open');
    final result = MMTIME.allocate()..wType = TIME_SAMPLES;
    try {
      _throwOnError(
        () => waveOutGetPosition(_hWaveOut, result.addressOf, sizeOf<MMTIME>()),
      );
      return result.value;
    } finally {
      free(result.addressOf);
    }
  }

  // Playback Control

  /// Pause playback
  void pause() {
    assert(_hWaveOut != null, 'Device not open');
    _throwOnError(() => waveOutPause(_hWaveOut));
  }

  /// Restart paused playback
  void restart() {
    assert(_hWaveOut != null, 'Device not open');
    _throwOnError(() => waveOutRestart(_hWaveOut));
  }

  /// Reset device
  /// Halt's all activity and generates a WOM_DONE message for all buffers in chain.
  void reset() {
    assert(_hWaveOut != null, 'Device not open');
    _throwOnError(() => waveOutReset(_hWaveOut));
  }

  void breakLoop() {
    assert(_hWaveOut != null, 'Device not open');
    _throwOnError(() => waveOutBreakLoop(_hWaveOut));
  }

  // Convert double to 32-bit (16.16) fixed-point
  int _doubleToFixed(double input) => (input * (1 << 16)).round();

  // Convert 32-bit (16.16) fixed-point to double
  double _fixedToDouble(int input) => input.toDouble() / (1 << 16);
}

class WaveBuffer {
  WaveBuffer(this.waveOut, this._index, this._bufferSizeInBytes) {
    _waveHdr = WAVEHDR.allocate()
      ..lpData = allocate<Uint8>(count: _bufferSizeInBytes)
      ..dwUser = _index;
    _bytesUsed = 0;
  }

  final WaveOut waveOut;
  final int _index;
  final int _bufferSizeInBytes;
  WAVEHDR _waveHdr;
  int _bytesUsed;

  int get _hDeviceOut => waveOut._hWaveOut;

  bool get done => (_waveHdr.dwFlags & WHDR_DONE) != 0;

  Future wait() {
    // FIXME
    return Future.doWhile(
      () => Future.delayed(const Duration(milliseconds: 10), () => !done),
    );
  }

  void dispose() {
    if ((_waveHdr.dwFlags & WHDR_PREPARED) != 0) {
      _throwOnError(
        () => waveOutUnprepareHeader(
            _hDeviceOut, _waveHdr.addressOf, sizeOf<WAVEHDR>()),
      );
    }
    free(_waveHdr.lpData);
    free(_waveHdr.addressOf);
  }

  void flush() {
    assert(_hDeviceOut != null, 'Device not opened');
    _waveHdr.dwBufferLength = _bytesUsed;
    _bytesUsed = 0;
    if ((_waveHdr.dwFlags & WHDR_PREPARED) == 0) {
      _throwOnError(
        () => waveOutPrepareHeader(
            _hDeviceOut, _waveHdr.addressOf, sizeOf<WAVEHDR>()),
      );
    }
    _throwOnError(
      () => waveOutWrite(_hDeviceOut, _waveHdr.addressOf, sizeOf<WAVEHDR>()),
    );
  }

  bool write(Uint8List data, List<int> bytesWritten) {
    final bytes = math.min(_bufferSizeInBytes - _bytesUsed, data.length);
    final buffer = _waveHdr.lpData.asTypedList(_bufferSizeInBytes);
    buffer.setRange(_bytesUsed, _bytesUsed + bytes, data);
    _bytesUsed += bytes;
    bytesWritten[0] = bytes;
    if (_bytesUsed == _bufferSizeInBytes) {
      flush();
      return true;
    }
    return false;
  }
}

class LRVolume {
  const LRVolume(this.left, this.right);

  LRVolume.from32bit(int value)
      : left = LOWORD(value) / 0xFFFF,
        right = HIWORD(value) / 0xFFFF;

  final double left;
  final double right;

  double get jointStereo => (left + right) / 2;

  int get left16bit => (left * 0xFFFF).toInt();

  int get right16bit => (right * 0xFFFF).toInt();

  int get volume32bit => MAKELONG(left16bit, right16bit);

  @override
  String toString() =>
      'LRVolume{$left, $right => 0x${volume32bit.toHexString(32)}}';
}

class SupportedWaveFormat {
  static const format08M08 = SupportedWaveFormat(0x00000000, 8000, 1, 8);
  static const format08S08 = SupportedWaveFormat(0x00000000, 8000, 2, 8);
  static const format08M16 = SupportedWaveFormat(0x00000000, 8000, 1, 16);
  static const format08S16 = SupportedWaveFormat(0x00000000, 8000, 2, 16);
  static const format11M08 = SupportedWaveFormat(0x00000001, 11025, 1, 8);
  static const format11S08 = SupportedWaveFormat(0x00000002, 11025, 2, 8);
  static const format11M16 = SupportedWaveFormat(0x00000004, 11025, 1, 16);
  static const format11S16 = SupportedWaveFormat(0x00000008, 11025, 2, 16);
  static const format22M08 = SupportedWaveFormat(0x00000010, 22050, 1, 8);
  static const format22S08 = SupportedWaveFormat(0x00000020, 22050, 2, 8);
  static const format22M16 = SupportedWaveFormat(0x00000040, 22050, 1, 16);
  static const format22S16 = SupportedWaveFormat(0x00000080, 22050, 2, 16);
  static const format44M08 = SupportedWaveFormat(0x00000100, 44100, 1, 8);
  static const format44S08 = SupportedWaveFormat(0x00000200, 44100, 2, 8);
  static const format44M16 = SupportedWaveFormat(0x00000400, 44100, 1, 16);
  static const format44S16 = SupportedWaveFormat(0x00000800, 44100, 2, 16);
  static const format48M08 = SupportedWaveFormat(0x00001000, 48000, 1, 8);
  static const format48S08 = SupportedWaveFormat(0x00002000, 48000, 2, 8);
  static const format48M16 = SupportedWaveFormat(0x00004000, 48000, 1, 16);
  static const format48S16 = SupportedWaveFormat(0x00008000, 48000, 2, 16);
  static const format96M08 = SupportedWaveFormat(0x00010000, 96000, 1, 8);
  static const format96S08 = SupportedWaveFormat(0x00020000, 96000, 2, 8);
  static const format96M16 = SupportedWaveFormat(0x00040000, 96000, 1, 16);
  static const format96S16 = SupportedWaveFormat(0x00080000, 96000, 2, 16);

  const SupportedWaveFormat(
      this.id, this.sampleRate, this.channelCount, this.bitPerSample,
      [this.tag = WAVE_FORMAT_PCM]);

  final int tag;
  final int id;
  final int sampleRate;
  final int channelCount;
  final int bitPerSample;

  int get avgBytesPerSecond => (sampleRate * channelCount * bitPerSample) ~/ 8;

  int get blockAlign => (channelCount * bitPerSample) ~/ 8;

  WAVEFORMATEX _allocatePcmWaveFormat() => WAVEFORMATEX.allocate()
    ..wFormatTag = tag
    ..nChannels = channelCount
    ..nSamplesPerSec = sampleRate
    ..nAvgBytesPerSec = avgBytesPerSecond
    ..nBlockAlign = blockAlign
    ..wBitsPerSample = bitPerSample;

  @override
  String toString() =>
      'SupportedWaveFormat{${sampleRate / 1000}kHz, $channelCount, $bitPerSample-bit}';

  static List<SupportedWaveFormat> fromBitField(int value) =>
      values.where((el) => value & el.id != 0).toList(growable: false);

  static const values = [
    format11M08,
    format11S08,
    format11M16,
    format11S16,
    format22M08,
    format22S08,
    format22M16,
    format22S16,
    format44M08,
    format44S08,
    format44M16,
    format44S16,
    format48M08,
    format48S08,
    format48M16,
    format48S16,
    format96M08,
    format96S08,
    format96M16,
    format96S16
  ];
}

class MmException implements Exception {
  const MmException(this.code) : assert(code != 0);

  final int code;

  @override
  String toString() => 'MmException{$message}';

  String get message {
    final buffer = allocate<Uint16>(count: 256).cast<Utf16>();
    try {
      final result = waveOutGetErrorText(code, buffer, 256);
      if (result == MMSYSERR_NOERROR) {
        final message = buffer.unpackString(result);
        if (message.isNotEmpty) {
          return message;
        }
      }
      switch (code) {
        case MMSYSERR_NOERROR:
          return 'no error';
        case MMSYSERR_ERROR:
          return 'unspecified error';
        case MMSYSERR_BADDEVICEID:
          return 'device ID out of range';
        case MMSYSERR_NOTENABLED:
          return 'driver failed enable';
        case MMSYSERR_ALLOCATED:
          return 'device already allocated';
        case MMSYSERR_INVALHANDLE:
          return 'device handle is invalid';
        case MMSYSERR_NODRIVER:
          return 'no device driver present';
        case MMSYSERR_NOMEM:
          return 'memory allocation error';
        case MMSYSERR_NOTSUPPORTED:
          return "function isn't supported";
        case MMSYSERR_BADERRNUM:
          return 'error value out of range';
        case MMSYSERR_INVALFLAG:
          return 'invalid flag passed';
        case MMSYSERR_INVALPARAM:
          return 'invalid parameter passed';
        case MMSYSERR_HANDLEBUSY:
          return 'handle being used simultaneously on another thread (eg callback)';
        case MMSYSERR_INVALIDALIAS:
          return 'specified alias not found';
        case MMSYSERR_BADDB:
          return 'bad registry database';
        case MMSYSERR_KEYNOTFOUND:
          return 'registry key not found';
        case MMSYSERR_READERROR:
          return 'registry read error';
        case MMSYSERR_WRITEERROR:
          return 'registry write error';
        case MMSYSERR_DELETEERROR:
          return 'registry delete error';
        case MMSYSERR_VALNOTFOUND:
          return 'registry value not found';
        case MMSYSERR_NODRIVERCB:
          return 'driver does not call DriverCallback';
        case MMSYSERR_MOREDATA:
          return 'more data to be returned';
        case WAVERR_BADFORMAT:
          return 'unsupported wave format';
        case WAVERR_STILLPLAYING:
          return 'still something playing';
        case WAVERR_UNPREPARED:
          return 'header not prepared';
        case WAVERR_SYNC:
          return 'device is synchronous';
        default:
          return 'Error [$code]>';
      }
    } finally {
      free(buffer);
    }
  }
}

// Plays a two-second sine wave using WASAPI (shared mode).

import 'dart:ffi';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const refTimesPerSecond = 10_000_000;
const double refTimesPerMillisecond = refTimesPerSecond / 1000;

/// Simple sine-wave PCM generator.
final class SineWaveSource {
  SineWaveSource({
    required int frequency,
    required int sampleRate,
    required this.channels,
    required int durationSeconds,
  }) : _samples = _generate(frequency, sampleRate, durationSeconds);

  final int channels;

  final Float32List _samples;
  var _position = 0;

  static Float32List _generate(
    int frequency,
    int sampleRate,
    int durationSeconds,
  ) {
    final totalSamples = sampleRate * durationSeconds;
    final samples = Float32List(totalSamples);
    final radiansPerSample = 2 * math.pi * frequency / sampleRate;
    for (var i = 0; i < totalSamples; i++) {
      samples[i] = math.sin(i * radiansPerSample);
    }
    return samples;
  }

  /// Writes interleaved samples into the output buffer.
  ///
  /// Returns `false` when no data remains.
  bool write(int frameCount, Pointer<BYTE> buffer) {
    if (_position >= _samples.length) return false;

    final out = buffer.cast<FLOAT>();
    final totalSamples = frameCount * channels;

    for (var i = 0; i < totalSamples; i += channels) {
      final value = (_position < _samples.length) ? _samples[_position] : 0.0;

      for (var ch = 0; ch < channels; ch++) {
        out[i + ch] = value;
      }
      _position++;
    }

    return true;
  }
}

/// High-level WASAPI renderer.
final class WasapiRenderer {
  const WasapiRenderer(this._audioClient, this._renderClient);

  final IAudioClient3 _audioClient;
  final IAudioRenderClient _renderClient;

  int get bufferFrames => _audioClient.getBufferSize();

  void play(SineWaveSource source, WAVEFORMATEX format) {
    final sampleRate = format.nSamplesPerSec;
    final bufferDurationHns = refTimesPerSecond * bufferFrames ~/ sampleRate;

    // Initial fill
    var framesAvailable = bufferFrames;
    var data = _renderClient.getBuffer(framesAvailable);
    var hasData = source.write(framesAvailable, data);

    _renderClient.releaseBuffer(
      framesAvailable,
      hasData ? 0 : AUDCLNT_BUFFERFLAGS_SILENT,
    );

    _audioClient.start();

    while (hasData) {
      Sleep(bufferDurationHns ~/ refTimesPerMillisecond ~/ 2);
      final padding = _audioClient.getCurrentPadding();
      framesAvailable = bufferFrames - padding;
      if (framesAvailable == 0) continue;

      data = _renderClient.getBuffer(framesAvailable);
      hasData = source.write(framesAvailable, data);

      _renderClient.releaseBuffer(
        framesAvailable,
        hasData ? 0 : AUDCLNT_BUFFERFLAGS_SILENT,
      );
    }

    // Allow tail to drain
    Sleep(bufferDurationHns ~/ refTimesPerMillisecond ~/ 2);
    _audioClient.stop();
  }
}

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  using((arena) {
    // Enumerate output devices
    final enumerator = arena.com<IMMDeviceEnumerator>(MMDeviceEnumerator);

    final devices = arena.adopt(
      enumerator.enumAudioEndpoints(eRender, DEVICE_STATE_ACTIVE)!,
    );

    final count = devices.getCount();
    print('$count audio output device(s) detected:\n');

    final friendlyNameKey = arena<PROPERTYKEY>()
      ..ref = PKEY_DeviceInterface_FriendlyName;

    for (var i = 0; i < count; i++) {
      final device = arena.adopt(devices.item(i)!);
      final pId = device.getId();
      final id = pId.toDartString();
      free(pId);

      final props = arena.adopt(device.openPropertyStore(STGM_READ)!);
      final value = PropVariant.fromPointer(props.getValue(friendlyNameKey));
      final friendlyName = value.pwszVal.toDartString();
      value.free();
      print('ID: $id');
      print('Name: $friendlyName\n');
    }

    // Default render device
    final device = arena.adopt(
      enumerator.getDefaultAudioEndpoint(eRender, eConsole)!,
    );
    final audioClient = arena.adopt(
      device.activate<IAudioClient3>(CLSCTX_ALL, null),
    );
    final format = arena.using(audioClient.getMixFormat(), free);
    audioClient.initialize(
      AUDCLNT_SHAREMODE_SHARED,
      0,
      30_000, // 3 seconds in 100ns units
      0,
      format,
      null,
    );
    final renderClient = arena.adopt(
      audioClient.getService<IAudioRenderClient>(),
    );
    final WAVEFORMATEX(:nSamplesPerSec, :nChannels) = format.ref;
    final source = SineWaveSource(
      frequency: 440,
      sampleRate: nSamplesPerSec,
      channels: nChannels,
      durationSeconds: 2,
    );
    WasapiRenderer(audioClient, renderClient).play(source, format.ref);
  });
}

// Produces a two second sine wave using the Windows Audio Session API
// interface.

import 'dart:ffi';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const refTimesPerSecond = 5000000;
const double refTimesPerMillisecond = refTimesPerSecond / 1000;
const frequency = 440; // 440Hz (concert pitch)
const int sampleCount = 96000 * 2;

late Float32List pcmAudio;

var bufferSize = 0;
var pcmPos = 0;
var bufferPos = 0;

/// Initialize data values.
void initData(WAVEFORMATEX waveFormat, int totalFrames) {
  final sampleRate = waveFormat.nSamplesPerSec.toDouble();
  pcmAudio = Float32List(sampleCount);
  final radsPerSec = 2 * math.pi * frequency / sampleRate;
  for (var i = 0; i < sampleCount; i++) {
    final sampleValue = math.sin(radsPerSec * i);
    pcmAudio[i] = sampleValue;
  }
  bufferSize = totalFrames * waveFormat.nChannels;
  print('bufferSize = $bufferSize');
  print('sampsPerChan = ${totalFrames / waveFormat.nChannels}');
}

/// Loads data into the memory buffer.
///
/// Returns true if there is data, else returns false (indicating silence).
bool fillMemoryBuffer(
  int totalFrames,
  Pointer<BYTE> dataOut,
  WAVEFORMATEX waveFormat,
) {
  final fData = dataOut.cast<FLOAT>();
  final totalSamples = totalFrames * waveFormat.nChannels;
  print('Frames to Fill = $totalFrames');
  print('Samples to Fill = $totalSamples');
  print('bufferPos = $bufferPos');

  if (pcmPos < sampleCount) {
    for (var i = 0; i < totalSamples; i += waveFormat.nChannels) {
      for (var chan = 0; chan < waveFormat.nChannels; chan++) {
        fData[i + chan] = (pcmPos < sampleCount) ? pcmAudio[pcmPos] : 0.0;
      }
      pcmPos++;
    }
    bufferPos += totalSamples;
    bufferPos %= bufferSize;
  } else {
    // no more data
    return false;
  }
  return true;
}

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  // Retrieve the list of available audio output devices.
  final deviceEnumerator = createInstance<IMMDeviceEnumerator>(
    MMDeviceEnumerator,
  );

  // Get the number of available audio output devices.
  final devices = deviceEnumerator.enumAudioEndpoints(
    eRender,
    DEVICE_STATE_ACTIVE,
  )!;

  final deviceCount = devices.getCount();
  print('$deviceCount audio device(s) detected:');

  // Print available audio output devices
  for (var i = 0; i < deviceCount; i++) {
    // Get audio device from the device collection.
    final endpoint = devices.item(i)!;

    // Retrieve the current device id
    final id = endpoint.getId().toDartString();

    // Retrieve the current device properties.
    final props = endpoint.openPropertyStore(STGM_READ)!;

    // Retrieve the current device friendly name.
    final propVal = PropVariant.fromPointer(
      props.getValue(PKEY_DeviceInterface_FriendlyName.ptr),
    );

    // Check the retrieved device friendly name.
    if (propVal.isEmpty) {
      print(' Unknown device');
    } else {
      print(' ID: $id Name: ${propVal.value}');
    }
  }

  // Retrieve the default audio output device.
  final device = deviceEnumerator.getDefaultAudioEndpoint(eRender, eConsole)!;

  // Activate an IAudioClient interface for fthe output device.
  final audioClient = device.activate<IAudioClient3>(CLSCTX_ALL, null);

  // Initialize the audio stream.
  final waveFormat = audioClient.getMixFormat();
  final sampleRate = waveFormat.ref.nSamplesPerSec;
  audioClient.initialize(
    AUDCLNT_SHAREMODE_SHARED,
    0,
    30000, // buffer capacity of 3s (30,000 * 100ns).
    0,
    waveFormat,
    null,
  );

  // Activate an IAudioRenderClient interface.
  final audioRenderClient = audioClient.getService<IAudioRenderClient>();

  // Grab the entire buffer for the initial fill operation.
  final bufferFrameCount = audioClient.getBufferSize();
  print('Buffer Size = $bufferFrameCount frames');
  final data = audioRenderClient.getBuffer(bufferFrameCount);

  // Load the initial data into the shared buffer.
  initData(waveFormat.ref, bufferFrameCount);
  var dataLoaded = fillMemoryBuffer(bufferFrameCount, data, waveFormat.ref);
  audioRenderClient.releaseBuffer(
    bufferFrameCount,
    dataLoaded ? 0 : AUDCLNT_BUFFERFLAGS_SILENT,
  );

  // Calculate the actual duration of the allocated buffer.
  final hnsActualDuration = refTimesPerSecond * bufferFrameCount / sampleRate;

  audioClient.start(); // Start playing.

  while (dataLoaded) {
    // Sleep for half the buffer duration.
    Sleep(hnsActualDuration / refTimesPerMillisecond ~/ 2);
    // See how much buffer space is available.
    final padding = audioClient.getCurrentPadding();
    final numFramesAvailable = bufferFrameCount - padding;
    // Grab all the available space in the shared buffer.
    final data = audioRenderClient.getBuffer(numFramesAvailable);
    // Get next half second of data from the audio source.
    dataLoaded = fillMemoryBuffer(numFramesAvailable, data, waveFormat.ref);
    audioRenderClient.releaseBuffer(
      numFramesAvailable,
      dataLoaded ? 0 : AUDCLNT_BUFFERFLAGS_SILENT,
    );
  }

  // Wait for last data in buffer to play before stopping.
  Sleep(hnsActualDuration / refTimesPerMillisecond ~/ 2);
  audioClient.stop(); // Stop playing.

  // Clean up.
  free(waveFormat);
  print('All done!');
}

import 'dart:ffi';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const WMMEDIASUBTYPE_Base = "{00000000-0000-0010-8000-00aa00389b71}";

const REFTIMES_PER_SEC = 5000000;
const REFTIMES_PER_MILLISEC = 10000;
const frequency = 510;
const sampleCount = 96000 * 2;

late Float32List pcmAudio;

int bufferSize = 0;
int pcmPos = 0;
int bufferPos = 0;

void initData(WAVEFORMATEXTENSIBLE waveFormat, int totalFrames) {
  final sampleRate = waveFormat.Format.nSamplesPerSec.toDouble();
  pcmAudio = Float32List(sampleCount);
  final radsPerSec = 2 * math.pi * frequency / sampleRate;
  for (var i = 0; i < sampleCount; i++) {
    final sampleValue = math.sin(radsPerSec * i);
    pcmAudio[i] = sampleValue;
  }
  bufferSize = totalFrames * waveFormat.Format.nChannels;
  print("bufferSize = $bufferSize");
  print("sampsPerChan = ${totalFrames / waveFormat.Format.nChannels}");
}

/// Coerce a returned wave format into a consistent format.
Pointer<WAVEFORMATEXTENSIBLE> convertFormat(Pointer<WAVEFORMATEX> waveFormat) {
  if (waveFormat.ref.wFormatTag == WAVE_FORMAT_EXTENSIBLE) {
    return waveFormat.cast();
  } else {
    final waveFormatEx = calloc<WAVEFORMATEXTENSIBLE>()
      ..ref.Format = waveFormat.ref
      ..ref.SubFormat = GUIDFromString(WMMEDIASUBTYPE_Base).ref
      ..ref.SubFormat.Data1 = waveFormat.ref.wFormatTag
      ..ref.Samples.wValidBitsPerSample = waveFormat.ref.wBitsPerSample
      ..ref.dwChannelMask = 0
      ..ref.Format.wFormatTag = WAVE_FORMAT_EXTENSIBLE;
    return waveFormatEx;
  }
}

void printFormat(Pointer<WAVEFORMATEXTENSIBLE> waveFormat) {
  print("Channel Count = ${waveFormat.ref.Format.nChannels}");
  final formatTag = waveFormat.ref.SubFormat.Data1;
  switch (formatTag) {
    case WAVE_FORMAT_IEEE_FLOAT:
      print("Audio Format = WAVE_FORMAT_IEEE_FLOAT");
      break;
    case WAVE_FORMAT_PCM:
      print("Audio Format = WAVE_FORMAT_PCM");
      break;
    default:
      print("Audio Format = Unknown");
      break;
  }
}

/// Loads data into the memory buffer.
///
/// Returns true if there is data, else returns false (indicating silence).
bool fillMemoryBuffer(
    int totalFrames, Pointer<BYTE> dataOut, WAVEFORMATEXTENSIBLE waveFormat) {
  final fData = dataOut.cast<FLOAT>();
  final totalSamples = totalFrames * waveFormat.Format.nChannels;
  print("Frames to Fill = $totalFrames");
  print("Samples to Fill = $totalSamples");
  print("bufferPos = $bufferPos");

  if (pcmPos < sampleCount) {
    for (var i = 0; i < totalSamples; i += waveFormat.Format.nChannels) {
      for (var chan = 0; chan < waveFormat.Format.nChannels; chan++) {
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

int getBufferFrameCount(IAudioClient pAudioClient) {
  final pBufferFrameCount = calloc<UINT32>();
  check(pAudioClient.GetBufferSize(pBufferFrameCount));
  final bufferFrameCount = pBufferFrameCount.value;
  free(pBufferFrameCount);

  return bufferFrameCount;
}

void check(int hr) {
  if (FAILED(hr)) throw WindowsException(hr);
}

void main() {
  // Initialize COM
  check(CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED));

  // Retrieve the default audio output device.
  final pDeviceEnumerator = MMDeviceEnumerator.createInstance();
  final ppEndpoint = calloc<Pointer<COMObject>>();
  check(pDeviceEnumerator.GetDefaultAudioEndpoint(
      0, // dataflow: rendering device
      0, // role: system notification sound
      ppEndpoint));
  pDeviceEnumerator.Release();
  free(pDeviceEnumerator.ptr);

  // Activate an IAudioClient interface for the output device.
  final pDevice = IMMDevice(ppEndpoint.cast());
  final iidAudioClient = convertToIID(IID_IAudioClient);
  final ppAudioClient = calloc<Pointer<COMObject>>();
  check(pDevice.Activate(iidAudioClient, CLSCTX_ALL, nullptr, ppAudioClient));
  free(iidAudioClient);
  final pAudioClient = IAudioClient(ppAudioClient.cast());

  // Initialize the audio stream.
  final ppFormat = calloc<Pointer<WAVEFORMATEX>>();
  check(pAudioClient.GetMixFormat(ppFormat));
  final pWaveFormat = ppFormat.value;
  final sampleRate = pWaveFormat.ref.nSamplesPerSec;
  check(pAudioClient.Initialize(
      AUDCLNT_SHAREMODE.AUDCLNT_SHAREMODE_SHARED,
      0,
      30000, // buffer capacity of 3s (30,000 * 100ns)
      0,
      ppFormat.value,
      nullptr));

  // Tell the audio source which format to use.
  final pWaveFormatExtensible = convertFormat(pWaveFormat);
  printFormat(pWaveFormatExtensible);

  // Activate an IAudioRenderClient interface.
  final iidAudioRenderClient = convertToIID(IID_IAudioRenderClient);
  final ppAudioRenderClient = calloc<Pointer<COMObject>>();
  check(pAudioClient.GetService(iidAudioRenderClient, ppAudioRenderClient));
  free(iidAudioRenderClient);
  final pRenderClient = IAudioRenderClient(ppAudioRenderClient.cast());

  // Grab the entire buffer for the initial fill operation.
  final bufferFrameCount = getBufferFrameCount(pAudioClient);
  print("Buffer Size = $bufferFrameCount frames");
  final pData = calloc<Pointer<BYTE>>();
  check(pRenderClient.GetBuffer(bufferFrameCount, pData));

  // Load the initial data into the shared buffer.
  initData(pWaveFormatExtensible.ref, bufferFrameCount);
  var dataLoaded = fillMemoryBuffer(
      bufferFrameCount, pData.value, pWaveFormatExtensible.ref);
  check(pRenderClient.ReleaseBuffer(bufferFrameCount,
      dataLoaded ? 0 : AUDCLNT_BUFFERFLAGS.AUDCLNT_BUFFERFLAGS_SILENT));

  // Calculate the actual duration of the allocated buffer.
  final hnsActualDuration = REFTIMES_PER_SEC * bufferFrameCount / sampleRate;

  check(pAudioClient.Start()); // Start playing.

  final pNumFramesPadding = calloc<UINT32>();
  while (dataLoaded) {
    // Sleep for half the buffer duration.
    Sleep(hnsActualDuration / REFTIMES_PER_MILLISEC ~/ 2);
    // See how much buffer space is available.
    check(pAudioClient.GetCurrentPadding(pNumFramesPadding));
    final numFramesAvailable = bufferFrameCount - pNumFramesPadding.value;
    // Grab all the available space in the shared buffer.
    check(pRenderClient.GetBuffer(numFramesAvailable, pData));
    // Get next half second of data from the audio source.
    dataLoaded = fillMemoryBuffer(
        numFramesAvailable, pData.value, pWaveFormatExtensible.ref);
    check(pRenderClient.ReleaseBuffer(numFramesAvailable,
        dataLoaded ? 0 : AUDCLNT_BUFFERFLAGS.AUDCLNT_BUFFERFLAGS_SILENT));
  }
  free(pNumFramesPadding);

  // Wait for last data in buffer to play before stopping.
  Sleep(hnsActualDuration / REFTIMES_PER_MILLISEC ~/ 2);
  check(pAudioClient.Stop()); // Stop playing.

  // Clear up
  pDevice.Release();
  free(ppEndpoint);

  pAudioClient.Release();
  free(ppAudioClient);

  pRenderClient.Release();
  free(ppFormat);

  free(ppAudioRenderClient);
  free(pData);

  // Uninitialize COM now that we're done with it.
  CoUninitialize();
  print('All done!');
}

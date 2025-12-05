import 'package:flutter/material.dart';

class AudioModifierScreen extends StatefulWidget {
  const AudioModifierScreen({super.key});

  @override
  State<AudioModifierScreen> createState() => _AudioModifierScreenState();
}

class _AudioModifierScreenState extends State<AudioModifierScreen> {
  double _pitch = 1.0;
  double _speed = 1.0;
  double _volume = 100.0;
  double _noiseLevel = 0.0;
  bool _addNoise = false;
  bool _reverseAudio = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Modifier'),
        backgroundColor: Colors.green.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildInfoCard(),
            const SizedBox(height: 20),
            _buildPitchControl(),
            const SizedBox(height: 20),
            _buildSpeedControl(),
            const SizedBox(height: 20),
            _buildVolumeControl(),
            const SizedBox(height: 20),
            _buildNoiseControl(),
            const SizedBox(height: 20),
            _buildReverseControl(),
            const SizedBox(height: 30),
            _buildExportButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard() {
    return Card(
      color: Colors.green.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.audiotrack, size: 64, color: Colors.green.shade700),
            const SizedBox(height: 12),
            Text(
              'Audio Modification Tools',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Modify audio properties untuk menghindari deteksi copyright',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPitchControl() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.music_note),
                const SizedBox(width: 8),
                Text(
                  'Pitch: ${_pitch.toStringAsFixed(2)}x',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            Slider(
              value: _pitch,
              min: 0.5,
              max: 2.0,
              divisions: 15,
              label: '${_pitch.toStringAsFixed(2)}x',
              onChanged: (value) => setState(() => _pitch = value),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpeedControl() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.speed),
                const SizedBox(width: 8),
                Text(
                  'Speed: ${_speed.toStringAsFixed(2)}x',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            Slider(
              value: _speed,
              min: 0.5,
              max: 2.0,
              divisions: 15,
              label: '${_speed.toStringAsFixed(2)}x',
              onChanged: (value) => setState(() => _speed = value),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVolumeControl() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.volume_up),
                const SizedBox(width: 8),
                Text(
                  'Volume: ${_volume.toInt()}%',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            Slider(
              value: _volume,
              min: 0,
              max: 200,
              divisions: 20,
              label: '${_volume.toInt()}%',
              onChanged: (value) => setState(() => _volume = value),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNoiseControl() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: const Text('Add Background Noise'),
              value: _addNoise,
              onChanged: (value) => setState(() => _addNoise = value),
            ),
            if (_addNoise) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.graphic_eq),
                  const SizedBox(width: 8),
                  Text(
                    'Noise Level: ${_noiseLevel.toInt()}%',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Slider(
                value: _noiseLevel,
                min: 0,
                max: 100,
                divisions: 10,
                label: '${_noiseLevel.toInt()}%',
                onChanged: (value) => setState(() => _noiseLevel = value),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildReverseControl() {
    return Card(
      child: SwitchListTile(
        title: const Text('Reverse Audio'),
        subtitle: const Text('Play audio backwards'),
        value: _reverseAudio,
        onChanged: (value) => setState(() => _reverseAudio = value),
      ),
    );
  }

  Widget _buildExportButton() {
    return ElevatedButton.icon(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Fitur export membutuhkan desktop/mobile app'),
            duration: Duration(seconds: 3),
          ),
        );
      },
      icon: const Icon(Icons.download),
      label: const Text('Export Audio (Desktop Only)'),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        backgroundColor: Colors.green.shade700,
        foregroundColor: Colors.white,
      ),
    );
  }
}

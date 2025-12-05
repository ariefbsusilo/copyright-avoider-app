import 'package:flutter/material.dart';

class VideoModifierScreen extends StatefulWidget {
  const VideoModifierScreen({super.key});

  @override
  State<VideoModifierScreen> createState() => _VideoModifierScreenState();
}

class _VideoModifierScreenState extends State<VideoModifierScreen> {
  double _speed = 1.0;
  bool _flipHorizontal = false;
  bool _flipVertical = false;
  String _selectedFilter = 'none';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Modifier'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildInfoCard(),
            const SizedBox(height: 20),
            _buildSpeedControl(),
            const SizedBox(height: 20),
            _buildFlipControls(),
            const SizedBox(height: 20),
            _buildFilterControl(),
            const SizedBox(height: 30),
            _buildExportButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard() {
    return Card(
      color: Colors.blue.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.video_library, size: 64, color: Colors.blue.shade700),
            const SizedBox(height: 12),
            Text(
              'Video Modification Tools',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Adjust video properties untuk menghindari deteksi copyright',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
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
                  'Video Speed: ${_speed.toStringAsFixed(2)}x',
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

  Widget _buildFlipControls() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flip Video',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SwitchListTile(
              title: const Text('Flip Horizontal'),
              value: _flipHorizontal,
              onChanged: (value) => setState(() => _flipHorizontal = value),
            ),
            SwitchListTile(
              title: const Text('Flip Vertical'),
              value: _flipVertical,
              onChanged: (value) => setState(() => _flipVertical = value),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterControl() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Color Filter',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: [
                ChoiceChip(
                  label: const Text('None'),
                  selected: _selectedFilter == 'none',
                  onSelected: (_) => setState(() => _selectedFilter = 'none'),
                ),
                ChoiceChip(
                  label: const Text('Sepia'),
                  selected: _selectedFilter == 'sepia',
                  onSelected: (_) => setState(() => _selectedFilter = 'sepia'),
                ),
                ChoiceChip(
                  label: const Text('Grayscale'),
                  selected: _selectedFilter == 'grayscale',
                  onSelected: (_) => setState(() => _selectedFilter = 'grayscale'),
                ),
                ChoiceChip(
                  label: const Text('Invert'),
                  selected: _selectedFilter == 'invert',
                  onSelected: (_) => setState(() => _selectedFilter = 'invert'),
                ),
              ],
            ),
          ],
        ),
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
      label: const Text('Export Video (Desktop Only)'),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(16),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
      ),
    );
  }
}

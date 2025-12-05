import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tips & Guidelines'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.amber.shade300, Colors.orange.shade300],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              children: [
                Icon(Icons.school, size: 48, color: Colors.white),
                SizedBox(height: 12),
                Text(
                  'Panduan Lengkap Copyright',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Pelajari cara legal untuk menggunakan konten',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // Apa itu Copyright
          _buildExpandableSection(
            'Apa itu Copyright?',
            Icons.copyright,
            Colors.blue,
            [
              'Copyright adalah hak cipta yang melindungi karya kreatif seperti musik, video, foto, dan tulisan.',
              '',
              'Di YouTube, sistem Content ID secara otomatis mendeteksi konten yang dilindungi hak cipta.',
              '',
              'Pelanggaran copyright dapat menyebabkan:',
              '• Video dihapus',
              '• Channel mendapat strike',
              '• Monetisasi dicabut',
              '• Channel ditutup permanent (3 strikes)',
            ],
          ),

          const SizedBox(height: 16),

          // Cara Legal Menggunakan Konten
          _buildExpandableSection(
            'Cara Legal Menggunakan Konten',
            Icons.check_circle,
            Colors.green,
            [
              '1. BUAT KONTEN SENDIRI',
              '   • Rekam video sendiri',
              '   • Buat musik sendiri',
              '   • Ambil foto sendiri',
              '',
              '2. GUNAKAN KONTEN BEBAS ROYALTI',
              '   • YouTube Audio Library',
              '   • Creative Commons (CC)',
              '   • Pixabay, Pexels',
              '   • Freesound.org',
              '',
              '3. DAPATKAN IZIN/LISENSI',
              '   • Minta izin dari pemilik',
              '   • Beli lisensi musik',
              '   • Gunakan platform royalty-free berbayar',
              '',
              '4. FAIR USE (Terbatas)',
              '   • Review atau kritik',
              '   • Parodi',
              '   • Pendidikan/penelitian',
              '   • Berita/komentar',
            ],
          ),

          const SizedBox(height: 16),

          // Sumber Konten Legal
          _buildResourceSection(
            'Sumber Konten GRATIS & LEGAL',
            Icons.music_note,
            Colors.purple,
            [
              _Resource(
                'YouTube Audio Library',
                'Musik & sound effects gratis dari YouTube',
                'https://studio.youtube.com',
              ),
              _Resource(
                'Pixabay',
                'Video, gambar, dan musik gratis',
                'https://pixabay.com',
              ),
              _Resource(
                'Pexels',
                'Video dan foto stock gratis',
                'https://pexels.com',
              ),
              _Resource(
                'Freesound',
                'Sound effects gratis',
                'https://freesound.org',
              ),
              _Resource(
                'Incompetech',
                'Musik instrumental gratis',
                'https://incompetech.com',
              ),
              _Resource(
                'Bensound',
                'Musik gratis untuk konten',
                'https://bensound.com',
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Mengapa Modifikasi Konten Tidak Selalu Aman
          _buildWarningSection(
            'Mengapa Modifikasi Tidak Selalu Aman?',
            [
              '⚠️ Content ID YouTube sangat canggih dan dapat mendeteksi:',
              '',
              '• Audio yang diubah pitch/speed-nya',
              '• Video yang di-flip atau di-mirror',
              '• Konten dengan filter atau efek',
              '',
              '❌ MITOS yang salah:',
              '• "Ubah speed 10% aman" - SALAH',
              '• "Mirror video tidak ketahuan" - SALAH',
              '• "Tambah voice over aman" - SALAH',
              '• "Potong 10 detik aman" - SALAH',
              '',
              '✅ FAKTA:',
              'Satu-satunya cara 100% aman adalah menggunakan konten yang legal atau buatan sendiri!',
            ],
          ),

          const SizedBox(height: 16),

          // Best Practices
          _buildExpandableSection(
            'Best Practices untuk Creator',
            Icons.stars,
            Colors.orange,
            [
              '✓ Selalu cek lisensi sebelum menggunakan konten',
              '✓ Simpan bukti izin/lisensi',
              '✓ Credit creator asli di deskripsi',
              '✓ Gunakan YouTube Audio Library',
              '✓ Invest di musik/aset berlisensi',
              '✓ Belajar membuat konten original',
              '',
              '✗ Jangan download dari YouTube lain',
              '✗ Jangan gunakan musik populer tanpa izin',
              '✗ Jangan klaim sebagai karya sendiri',
              '✗ Jangan abaikan copyright claim',
            ],
          ),

          const SizedBox(height: 16),

          // Apa yang Harus Dilakukan Jika Kena Copyright
          _buildExpandableSection(
            'Kena Copyright Claim/Strike?',
            Icons.report_problem,
            Colors.red,
            [
              'JIKA KENA CLAIM (Monetisasi diberikan ke pemilik):',
              '• Tidak berbahaya untuk channel',
              '• Video tetap bisa ditonton',
              '• Terima saja jika memang salah',
              '',
              'JIKA KENA STRIKE (Lebih serius):',
              '• Strike 1: Warning + batasan',
              '• Strike 2: Tidak bisa upload 2 minggu',
              '• Strike 3: Channel ditutup permanent',
              '',
              'SOLUSI:',
              '1. Hapus video yang bermasalah',
              '2. Ajukan counter-notification (jika yakin benar)',
              '3. Tunggu 90 hari (strike hilang)',
              '4. Pelajari kesalahan dan jangan ulangi',
            ],
          ),

          const SizedBox(height: 16),

          // Kesimpulan
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.blue.shade200, width: 2),
            ),
            child: Column(
              children: [
                Icon(Icons.lightbulb, size: 48, color: Colors.blue.shade700),
                const SizedBox(height: 12),
                const Text(
                  '💡 Kesimpulan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Cara terbaik menjadi creator sukses adalah dengan membuat konten ORIGINAL dan menggunakan aset LEGAL. Investasi di skill dan tools yang benar akan menghasilkan channel yang sustainable dan bebas masalah.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue.shade900,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildExpandableSection(
    String title,
    IconData icon,
    Color color,
    List<String> content,
  ) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ExpansionTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: content.map((text) {
                if (text.isEmpty) return const SizedBox(height: 8);
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(
                    text,
                    style: const TextStyle(fontSize: 14, height: 1.5),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResourceSection(
    String title,
    IconData icon,
    Color color,
    List<_Resource> resources,
  ) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ExpansionTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: resources.map((resource) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: color.withOpacity(0.2),
                    child: Icon(Icons.link, color: color, size: 20),
                  ),
                  title: Text(
                    resource.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(resource.description),
                      const SizedBox(height: 4),
                      Text(
                        resource.url,
                        style: TextStyle(
                          color: Colors.blue.shade700,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  isThreeLine: true,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWarningSection(String title, List<String> content) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red.shade300, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.warning, color: Colors.red.shade700, size: 28),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade900,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...content.map((text) {
            if (text.isEmpty) return const SizedBox(height: 8);
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color: Colors.red.shade900,
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

class _Resource {
  final String name;
  final String description;
  final String url;

  _Resource(this.name, this.description, this.url);
}

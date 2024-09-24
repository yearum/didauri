import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/image/didaur-removebg-preview 1.svg',
              height: 10,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Afternoon',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'everyone',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),

            // List of Articles
            Expanded(
              child: ListView(
                children: [
                  ArticleCard(
                    title: 'Berbagai Makanan Diawetkan',
                    description:
                        'Teknik Pengawetan Makanan\nMemperpanjang Masa Pakai Bahan Makanan dengan Mudah.',
                    imageUrl:
                        'assets/image/usong 1.png', // Ganti dengan URL gambar yang valid
                  ),
                  ArticleCard(
                    title: 'Aktivitas Pengomposan',
                    description:
                        'Manajemen Limbah Rumah Tangga\nLangkah-langkah Membuat Kompos dari Sisa Makanan Organik.',
                    imageUrl:
                        'assets/image/sampah-VSCO (1) 2.png', // Ganti dengan URL gambar yang valid
                  ),
                  ArticleCard(
                    title: 'Tumpukan Makanan Terbuang',
                    description:
                        'Mengenal Food Waste\nDampaknya Terhadap Lingkungan dan Kehidupan Kita.',
                    imageUrl:
                        'assets/image/Recipe Card.png', // Ganti dengan URL gambar yang valid
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  ArticleCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

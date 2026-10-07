import 'package:flutter/material.dart';
import 'menu_page.dart';
import 'product_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Daftar data produk pada etalase toko online
  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Sepatu Boots',
      'price': 'Rp 250.000',
      'category': 'Fashion',
      'stock': '15',
      'condition': 'Baru',
      'icon': Icons.roller_skating,
      'description':
          'Sepatu sneakers kasual berbahan kanvas premium dengan sol karet anti selip. Sangat nyaman digunakan untuk aktivitas sehari-hari, kuliah, maupun olahraga ringan.',
    },
    {
      'name': 'Kemeja ',
      'price': 'Rp 120.000',
      'category': 'Pakaian',
      'stock': '28',
      'condition': 'Baru',
      'icon': Icons.checkroom,
      'description':
          'Kemeja katun premium dengan jahitan rapi dan bahan adem. Desain simpel elegan cocok untuk acara santai, nongkrong, maupun kerja formal.',
    },
    {
      'name': 'Tas Ransel',
      'price': 'Rp 185.000',
      'category': 'Tas',
      'stock': '10',
      'condition': 'Baru',
      'icon': Icons.backpack,
      'description':
          'Tas waterproof multifungsi dengan kompartemen laptop hingga 15.6 inci, slot botol minum, serta bantalan punggung yang empuk.',
    },
    {
      'name': 'Jam Tangan',
      'price': 'Rp 95.000',
      'category': 'Aksesoris',
      'stock': '30',
      'condition': 'Baru',
      'icon': Icons.watch,
      'description':
          'Jam tangan digital sporty tahan cipratan air (water resistant) dengan fitur lampu LED, stopwatch, kalender, dan alarm aktif.',
    },
    {
      'name': 'Headphone Wireless',
      'price': 'Rp 320.000',
      'category': 'Elektronik',
      'stock': '8',
      'condition': 'Baru',
      'icon': Icons.headphones,
      'description':
          'Headphone bluetooth dengan teknologi noise cancellation, suara bass mendalam, mikrofon jernih untuk telepon, dan baterai tahan hingga 20 jam.',
    },
    {
      'name': 'Kaos Polos',
      'price': 'Rp 55.000',
      'category': 'Pakaian',
      'stock': '50',
      'condition': 'Baru',
      'icon': Icons.dry_cleaning,
      'description':
          'Kaos polos bahan 100% cotton combed 30s standar distro. Lembut, menyerap keringat, tidak mudah melar, dan sangat nyaman dipakai sehari-hari.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text(
          'Online Shopping',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            tooltip: 'Menu Layanan',
            icon: const Icon(Icons.grid_view_rounded),
            onPressed: () {
              // Navigasi ke halaman Menu menggunakan Navigator.push
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner Selamat Datang & Pintasan ke Menu Page
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepPurple,
                      Colors.deepPurple.shade400,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withValues(alpha: 0.2),
                      blurRadius: 8.0,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Selamat Datang di Toko Kami!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      'Temukan berbagai produk berkualitas dengan harga terbaik.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Navigasi ke MenuPage menggunakan Navigator.push
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MenuPage(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.apps, size: 18),
                      label: const Text('Buka Menu Layanan'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.deepPurple,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14.0,
                          vertical: 8.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Judul Bagian Etalase Produk
              const Text(
                'Etalase Produk',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12),

              // Grid Etalase Produk
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                  childAspectRatio: 0.72,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    elevation: 1.5,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12.0),
                      onTap: () {
                        // Navigasi ke Halaman Detail Produk menggunakan Navigator.push
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailPage(
                              product: product,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Visual / Gambar Produk
                            Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple.shade50,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: Icon(
                                  product['icon'] as IconData? ??
                                      Icons.shopping_bag,
                                  size: 48,
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),

                            // Kategori Produk
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6.0,
                                vertical: 2.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple.shade50,
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Text(
                                product['category'] ?? '',
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),

                            // Nama Produk
                            Text(
                              product['name'] ?? '',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),

                            // Harga Produk
                            Text(
                              product['price'] ?? '',
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),
                            const Spacer(),

                            // Tombol Indikator "Lihat Detail"
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 6.0),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: const Center(
                                child: Text(
                                  'Lihat Detail',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

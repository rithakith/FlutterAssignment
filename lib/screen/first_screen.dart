import 'package:flutter/material.dart';
import '../main.dart';

void main() {
  runApp(const FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'First Screen'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/luca-bravo-O453M2Liufs-unsplash.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Back Button (Top Left)
          Positioned(
            top: 40, // Adjust the vertical position
            left: 16, // Adjust the horizontal position
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
            ),
          ),
          // Heart Icon (Top Right)
          Positioned(
            top: 40, // Adjust the vertical position
            right: 16, // Adjust the horizontal position
            child: IconButton(
              icon: const Icon(Icons.favorite_border,
                  color: Colors.white, size: 30),
              onPressed: () {
                // Heart icon action
              },
            ),
          ),
          // Persistent Bottom Sheet
          Positioned(
            bottom: 0,
            child: Container(
              height: 482,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title, Location, and Price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Rinjani Mountain',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.location_on,
                                  size: 16,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Lombok, Indonesia',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              '\$48',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              '/Person',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Description
                    const Text(
                      'Experience the beautiful Rinjani Mountain with stunning views, '
                      'exciting trails, and an unforgettable adventure. Experience the beautiful Rinjani Mountain with stunning views, '
                      'exciting trails, and an unforgettable adventure. Experience the beautiful Rinjani Mountain with stunning views, '
                      'exciting trails, and an unforgettable adventure.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Preview and Rating
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Preview',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            SizedBox(width: 4),
                            Text(
                              '4.8',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Horizontal Scroll of Images
                    SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image.asset(
                            'assets/neom-STV2s3FYw7Y-unsplash.jpg',
                            width: 150,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 8),
                          Image.asset(
                            'assets/image1.jpg',
                            width: 150,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 8),
                          Image.asset(
                            'assets/luca-bravo-O453M2Liufs-unsplash.jpg',
                            width: 150,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Book Now Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(vertical: 24),
                        ),
                        onPressed: () {
                          // Book Now Action
                        },
                        child: const Text(
                          'Book Now',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

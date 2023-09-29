import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final List<String> thumbnailImages = List.generate(
    6,
        (index) => "https://via.placeholder.com/150",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? PortraitLayout(thumbnailImages: thumbnailImages)
              : LandscapeLayout(thumbnailImages: thumbnailImages);
        },
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  final List<String> thumbnailImages;

  PortraitLayout({required this.thumbnailImages});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Profile Picture
        Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
            radius: 100.0,
            backgroundImage: NetworkImage(
              'https://via.placeholder.com/150',
            ),
          ),
        ),
        // Name
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Your Name',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 8.0),
        // Text about yourself
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Some text about yourself. Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        SizedBox(height: 16.0),
        // Thumbnail Images
        Column(
          children: [
            for (int i = 0; i < thumbnailImages.length; i += 3)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int j = i; j < i + 3 && j < thumbnailImages.length; j++)
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ThumbnailCard(
                        imageUrl: thumbnailImages[j],
                      ),
                    ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  final List<String> thumbnailImages;

  LandscapeLayout({required this.thumbnailImages});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Profile Picture, Name, and Text
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(
                    'https://scontent.fdac157-1.fna.fbcdn.net/v/t39.30808-6/298196060_3193958230817848_5282291840762516684_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=Uz8zByrKOd4AX_esvaC&_nc_ht=scontent.fdac157-1.fna&oh=00_AfAp0VedortMOh17mfx8DwPpf4cHTfvQF-JVDFeIMQbO4g&oe=651B8671', // Replace with your profile image URL
                  ),
                ),
              ),
              // Name
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Esmot Ara',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              // Text about yourself
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
        // Thumbnail Images
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: thumbnailImages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: ThumbnailCard(
                  imageUrl: thumbnailImages[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ThumbnailCard extends StatelessWidget {
  final String imageUrl;

  ThumbnailCard({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 100.0,
        height: 100.0,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

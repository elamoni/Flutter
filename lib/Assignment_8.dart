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
  final List<String> dummyImages = List.generate(
    6,
        (index) => "https://via.placeholder.com/150",
  );

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: orientation == Orientation.portrait
          ? PortraitLayout()
          : LandscapeLayout(),
    );
  }
}

class PortraitLayout extends StatelessWidget {
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
                'https://scontent.fdac157-1.fna.fbcdn.net/v/t39.30808-6/298196060_3193958230817848_5282291840762516684_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=Uz8zByrKOd4AX_esvaC&_nc_ht=scontent.fdac157-1.fna&oh=00_AfAp0VedortMOh17mfx8DwPpf4cHTfvQF-JVDFeIMQbO4g&oe=651B8671'),
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
            'Some text about yourselfn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
        SizedBox(height: 16.0),
        // Images
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                "https://via.placeholder.com/150"[0],
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                "https://via.placeholder.com/150"[1],
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                "https://via.placeholder.com/150"[2],
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class LandscapeLayout extends StatelessWidget {
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
                      'https://scontent.fdac157-1.fna.fbcdn.net/v/t39.30808-6/298196060_3193958230817848_5282291840762516684_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=Uz8zByrKOd4AX_esvaC&_nc_ht=scontent.fdac157-1.fna&oh=00_AfAp0VedortMOh17mfx8DwPpf4cHTfvQF-JVDFeIMQbO4g&oe=651B8671'),
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
                  'Some text about yourselfn publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
        // Images
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.network(
                  "https://via.placeholder.com/150"[0],
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.network(
                  "https://via.placeholder.com/150"[1],
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.network(
                  "https://via.placeholder.com/150"[2],
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

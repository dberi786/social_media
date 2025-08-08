// import 'package:flutter/material.dart';
// import 'package:social/my_textfield.dart';
// import 'package:social/pages/my_drawer.dart';
// class Wall extends StatelessWidget {
//   Wall({super.key});
// //text controller
//   final TextEditingController newPostController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       appBar: AppBar(
//         title: Text("W A L L "),
//         backgroundColor: Colors.transparent,
//         foregroundColor: Theme.of(context).colorScheme.inversePrimary,
//         elevation: 0,
//       ),
//       drawer: const MyDrawer(),
//       body: Column(
//         children: [
//           Padding(
//            padding: const EdgeInsets.symmetric(horizontal: 25.0),
//           //Textfield box for user to type
//            child : MyTextfield(
//               hintText: "Say Something...",
//               obscureText:false,
//               controller: newPostController,
//           ),
//     ),
//           //Posts
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(SocialWallApp());
}

class SocialWallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Wall',
      debugShowCheckedModeBanner: false,
      home: WallScreen(),
    );
  }
}

class WallScreen extends StatefulWidget {
  @override
  _WallScreenState createState() => _WallScreenState();
}

class _WallScreenState extends State<WallScreen> {
  List<Map<String, String>> posts = [
    {
      'username': 'flutterdev',
      'caption': 'Welcome to the wall!',
      'image': 'https://via.placeholder.com/400x200'
    },
  ];

  final _usernameController = TextEditingController();
  final _captionController = TextEditingController();

  void _addPost() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('New Post'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _captionController,
              decoration: InputDecoration(labelText: 'Caption'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              _usernameController.clear();
              _captionController.clear();
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final username = _usernameController.text.trim();
              final caption = _captionController.text.trim();

              if (username.isNotEmpty && caption.isNotEmpty) {
                setState(() {
                  posts.insert(0, {
                    'username': username,
                    'caption': caption,
                    'image': 'https://via.placeholder.com/400x200'
                  });
                });
                _usernameController.clear();
                _captionController.clear();
                Navigator.of(context).pop();
              }
            },
            child: Text('Post'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _captionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wall'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text(post['username']![0].toUpperCase()),
                  ),
                  title: Text(post['username']!),
                ),
                Image.network(post['image']!),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(post['caption']!),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addPost,
        child: Icon(Icons.add),
      ),
    );
  }
}

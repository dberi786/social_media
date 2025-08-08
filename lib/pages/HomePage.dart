import 'package:flutter/material.dart';
import 'package:social/pages/my_drawer.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
//logout
//   void logout(){
//     FirebaseAuth.instance.signOut
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Home"),
        backgroundColor: Colors.deepPurple,
        actions: [
          //log out button
          IconButton(onPressed:(){},
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social/MyButton.dart';
import 'package:social/my_textfield.dart';
class LoginPage extends StatelessWidget {

  final void Function()? onTap;
  //text controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginPage({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //logo
          Icon(
            Icons.person,
            size: 80,
            color:Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(height: 25),
          //app name
          Text(
              "MINIMAL",
               style: TextStyle(fontSize: 20),

          ),
          //email textfield
            MyTextfield(
              hintText:"Email",
                obscureText:true,
                controller:emailController,
            ),
          //password textfield
            const SizedBox(height: 50),
            MyTextfield(
              hintText:"Password",
              obscureText:true,
              controller:emailController,
            ),

          //forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text("Forgot Password?"),
          ],
            ),
            const SizedBox(height: 25),
            //sign in button
            MyButton(
              text:"Login",
              onTap: onTap,
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary
                ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: const Text(
                    "Register here",
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
         ],
        ),
      ),
    );
  }
}

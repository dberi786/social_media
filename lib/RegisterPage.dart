import 'package:flutter/material.dart';
import 'package:social/MyButton.dart';
import 'package:social/my_textfield.dart';
class RegisterPage extends StatelessWidget {
  //text controllers
  final void Function()? onTap;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RegisterPage({super.key,required this.onTap});

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
              "M I N I M A L",
              style: TextStyle(fontSize: 20),

            ),
            const SizedBox(height: 50),
            //user textfield
            MyTextfield(
              hintText:"name",
              obscureText:true,
              controller:userNameController,
            ),
            //password textfield
            const SizedBox(height: 10),
            MyTextfield(
              hintText:"Password",
              obscureText:true,
              controller: passwordController,
            ),
            const SizedBox(height: 10),
            MyTextfield(
              hintText:"Confirm Password",
              obscureText:true,
              controller: confirmPasswordController,
            ),
            const SizedBox(height: 10),
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
              text:"Register",
              onTap: (){},
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
                  onTap: onTap,
                  child: const Text(
                    "Login here",
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

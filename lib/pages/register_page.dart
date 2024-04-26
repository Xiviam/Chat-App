import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'package:chat_app/auth/auth_service.dart';
import '../widgets/custom_textfield.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();
  
  void Function()? togglePage;
  
  RegisterPage({super.key, required this.togglePage});

  void registerMethod(BuildContext context) async {
    final _auth = AuthService();
    if(_passwordController.text == _confirmpasswordController.text){
      try{
      _auth.signUp(_emailController.text, _confirmpasswordController.text);
      } catch (e) {
        showDialog(context: context, builder: (context) => AlertDialog(title: Text(e.toString()),));
      }
    } else{
      showDialog(context: context, builder: (context) => AlertDialog(title: Text('Password dont match'),));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            SizedBox(
              height: 50,
            ),

            // message
            Text(
              'Create an account',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 18,
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // email tf
            CustomTextField(
              hintText: 'Email',
              isHidden: false,
              controller: _emailController,
            ),

            SizedBox(height: 10),

            // password tf
            CustomTextField(
              hintText: 'Password',
              isHidden: true,
              controller: _passwordController,
            ),

            SizedBox(height: 10),


            CustomTextField(
              hintText: 'Confirm your password',
              isHidden: true,
              controller: _confirmpasswordController,
            ),

            SizedBox(height: 20),

            // login button
            CustomButton(
              text: 'Register',
              onTap: () => registerMethod(context),
            ),

            // register label

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? ',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: togglePage,
                  child: Text(' Login',
                    style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

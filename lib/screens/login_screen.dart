import 'package:flutter/material.dart';
import 'package:hackathon/screens/products_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Login to your account'),
            TextFormField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: passwordcontroller,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            ElevatedButton(
              onPressed: () {
                print(emailcontroller.text);
                print(passwordcontroller.text);
                if (emailcontroller.text == 'admin' &&
                    passwordcontroller.text == 'admin') {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ProductsScreen(),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Invalid Credentials'),
                    ),
                  );
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

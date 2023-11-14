import 'package:flutter/material.dart';
import 'package:github_analysis/register/register.view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 53, 55, 57),
            Color.fromARGB(255, 52, 50, 50),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
  return Padding(
    padding: const EdgeInsets.all(32.0),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon(),
          const SizedBox(height: 50),
          _inputField("Username", usernameController),
          const SizedBox(height: 20),
          _inputField("Password", passwordController, isPassword: true),
          const SizedBox(height: 30),
          _LoginBtn(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _recPasswordBtn(),
              _signUpBtn(),
            ],
          ),
        ],
      ),
    ),
  );
}


  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.person, color: Colors.white, size: 120),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
    {isPassword = false}) {
  var border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: const BorderSide(color: Colors.white),
  );

  return SizedBox(
    width: 300,  // Largura do campo de entrada
    child: TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    ),
  );
}


  Widget _LoginBtn() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        minimumSize: const Size(300, 70), // Largura e altura do botão
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18), // Raio da borda
        ),
      ),
      child: const Text(
        "Entrar",
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _recPasswordBtn() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        minimumSize: const Size(double.minPositive, 40), // Largura e altura do botão
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18), // Raio da borda
        ),
      ),
      child: const Text(
        "Recuperar senha",
        style: TextStyle(fontSize: 14),
      ),
    );
  }

  Widget _signUpBtn() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            );
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        minimumSize: const Size(double.minPositive, 40), // Largura e altura do botão
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18), // Raio da borda
        ),
      ),
      child: const Text(
        "Criar conta",
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}

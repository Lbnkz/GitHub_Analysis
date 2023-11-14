import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key});

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
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputFields(context),
              _loginInfo(context),
            ],
          ),
        ),
      ), //////////////////
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Crie sua conta",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white), // Adicionei a cor branca
        ),
        Text(
          "Insira os seus dados logo abaixo:",
          style: TextStyle(color: Colors.white), // Adicionei a cor branca
        ),
      ],
    );
  }

  _inputFields(context) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.white),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Username",
            hintStyle: const TextStyle(color: Colors.white),
            fillColor: const Color.fromARGB(255, 53, 55, 57),
            filled: true,
            prefixIcon: const Icon(Icons.person,
                color: Colors.white), // Adicionei a cor branca
            enabledBorder: border,
            focusedBorder: border,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Email id",
            hintStyle: const TextStyle(color: Colors.white),
            fillColor: const Color.fromARGB(255, 53, 55, 57),
            filled: true,
            prefixIcon: const Icon(Icons.email_outlined,
                color: Colors.white), // Adicionei a cor branca
            enabledBorder: border,
            focusedBorder: border,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: const TextStyle(color: Colors.white),
            fillColor: const Color.fromARGB(255, 53, 55, 57),
            filled: true,
            prefixIcon: const Icon(Icons.password_outlined,
                color: Colors.white), // Adicionei a cor branca
            enabledBorder: border,
            focusedBorder: border,
          ),
          obscureText: true,
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Retype Password",
            hintStyle: const TextStyle(color: Colors.white),
            fillColor: const Color.fromARGB(255, 53, 55, 57),
            filled: true,
            prefixIcon: const Icon(Icons.password_outlined,
                color: Colors.white), // Adicionei a cor branca
            enabledBorder: border,
            focusedBorder: border,
          ),
          obscureText: true,
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.transparent,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(
                vertical: 16), // Adicionei a cor branca
          ),
          child: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }

  _loginInfo(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account?",
          style: TextStyle(color: Colors.white), // Adicionei a cor branca
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "Login",
            style: TextStyle(color: Colors.white), // Adicionei a cor branca
          ),
        ),
      ],
    );
  }
}

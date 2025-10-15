import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/background_img.jpg',
            fit: BoxFit.cover,
            alignment: const Alignment(-0.3, 0.0),
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(118, 0, 0, 0),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36.0, 0, 36.0, 17.0),
            child: Column(
              children: [
                SizedBox(height: 74),
                Container(
                  width: double.infinity,
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/genbi.png',
                  ),
                ),
                const SizedBox(height: 26),
                Text(
                  'Добро пожаловать!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Expanded(child: Container(width: double.infinity)),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: 'Почта',
                    filled: true,
                    fillColor: const Color.fromARGB(169, 35, 42, 64),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 153, 153, 153),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 153, 153, 153),
                        width: 2,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 17, 0),
                        width: 2,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 0, 0),
                        width: 2,
                      ),
                    ),
                  ),
                  cursorColor: const Color.fromARGB(0, 33, 149, 243),
                ),
                const SizedBox(height: 18),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: 'Пароль',
                    filled: true,
                    fillColor: const Color.fromARGB(169, 35, 42, 64),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 153, 153, 153),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 153, 153, 153),
                        width: 2,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 17, 0),
                        width: 2,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 0, 0),
                        width: 2,
                      ),
                    ),
                  ),
                  cursorColor: const Color.fromARGB(0, 33, 149, 243),
                  obscureText: true,
                ),
                const SizedBox(height: 18),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: 'Повторите пароль',
                    filled: true,
                    fillColor: const Color.fromARGB(169, 35, 42, 64),
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 153, 153, 153),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 153, 153, 153),
                        width: 2,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 17, 0),
                        width: 2,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 0, 0),
                        width: 2,
                      ),
                    ),
                  ),
                  cursorColor: const Color.fromARGB(0, 33, 149, 243),
                  obscureText: true,
                ),
                const SizedBox(height: 18),
                Text('Забыли пароль?', style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 18),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(169, 35, 42, 64),
                      border: Border.all(
                        width: 0.5,
                        color: const Color.fromARGB(255, 153, 153, 153),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text('Зарегистрироваться', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Expanded(child: Container(width: double.infinity)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:genbi_project/register_page.dart';

class PrimaryScreen extends StatefulWidget {
  const PrimaryScreen({super.key});

  @override
  State<PrimaryScreen> createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RegisterPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        // ignore: deprecated_member_use
        child: SvgPicture.asset('assets/logo_genbi.svg', color: Colors.black,),
      ),
    );
  }
}

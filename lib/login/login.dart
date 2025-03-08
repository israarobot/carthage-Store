import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 35),
              const CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage("assets/images/carthage_store.jpg"),
              ),
              const Text(
                "Carthage Store",
                style: TextStyle(
                    fontSize: 33,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 19),
              Text(
                "Sign in to explore your dream jobs",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey.shade600, 
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const TextField(
                    style: TextStyle(color: Colors.orange),
                    decoration: InputDecoration(
                      icon: Icon(Icons.person, color: Colors.orange),
                      hintText: "Your Email :",
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 23),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      icon: const Icon(Icons.lock,
                          color: Colors.orange, size: 19),
                      hintText: "Password :",
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 17),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 106, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),

              const SizedBox(height: 35),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.6,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.6,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 10), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
                child: Row(
                  mainAxisSize:
                      MainAxisSize.min, 
                  children: [
                    SvgPicture.asset(
                      "assets/icons/google-plus",
                      height: 24, 
                      width: 24,
                      colorFilter:
                          const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                    ),
                    const SizedBox(width: 10), 
                    const Text(
                      "Continue with Google",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), 
              const SizedBox(height: 17),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 10), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
                child: Row(
                  mainAxisSize:
                      MainAxisSize.min, 
                  children: [
                    SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      height: 24, 
                      width: 24,
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                    const SizedBox(width: 10), 
                    const Text(
                      "Continue with Facebook",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), 
              const SizedBox(height: 17),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, 
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
                child: Row(
                  mainAxisSize:
                      MainAxisSize.min, 
                  children: [
                    Image.asset(
                      "assets/images/unnamed.png", 
                      height: 24, 
                      width: 24,
                      color: Colors
                          .white, 
                    ),
                    const SizedBox(width: 10), 
                    const Text(
                      "Continue with Apple",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20), 
              const SizedBox(height: 17),
               Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        GestureDetector(
                          onTap: (){Navigator.pushNamed(context, '/login');},
                          child: Text(" Log in  ", style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

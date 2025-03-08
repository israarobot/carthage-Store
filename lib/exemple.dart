import 'package:flutter/material.dart';

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
                  "Signup",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              const SizedBox(height: 35),

               Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? "),
                        GestureDetector(
                          onTap: (){Navigator.pushNamed(context, '/signup');},
                          child: Text(" Signup ", style: TextStyle( 
                            color:  Colors.orange ,
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
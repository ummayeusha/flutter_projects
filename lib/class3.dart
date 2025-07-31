import 'package:flutter/material.dart';

class Class3 extends StatelessWidget {
  final ValueNotifier<bool> isPressed = ValueNotifier<bool>(false);
  Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text(
          "Greeting App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello, World!",
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "Welcome to Flutter",
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 30,
                fontWeight: FontWeight.normal,
                color: Colors.black38,
              ),
            ),

            const SizedBox(height: 20),

            Image.asset(
              "asset/Flutter.jpeg",
              height: 250,
              width: 250,
            ),

            const SizedBox(height: 20),

            ValueListenableBuilder( valueListenable: isPressed,
              builder: (context, value, child) {
                return value ? const Text("Button Pressed",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                )
                    : Container();
              },
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: 130,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  isPressed.value = true;
                  print("Button Pressed");
                },

                child: const Text(
                  "Press Me",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

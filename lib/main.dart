import 'package:flutter/material.dart';
import 'account_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RegistrationScreen(),
    );
  }
}

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final accountController = TextEditingController();
  final passwordController = TextEditingController();

  String accountType = "Current";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bank Registration")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButtonFormField(
              value: accountType,
              decoration: const InputDecoration(
                labelText: "Account Type",
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: "Current", child: Text("Current")),
                DropdownMenuItem(value: "Savings", child: Text("Savings")),
              ],
              onChanged: (value) {
                setState(() {
                  accountType = value!;
                });
              },
            ),

            const SizedBox(height: 15),

            TextField(
              controller: accountController,
              decoration: const InputDecoration(
                labelText: "Account Number",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.account_balance),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountInfoScreen(
                      accountType: accountType,
                      accountNumber: accountController.text,
                      password: passwordController.text,
                    ),
                  ),
                );
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AccountInfoScreen extends StatelessWidget {
  final String accountType;
  final String accountNumber;
  final String password;

  const AccountInfoScreen({
    super.key,
    required this.accountType,
    required this.accountNumber,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Information"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Account Type: $accountType",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              "Account Number: $accountNumber",
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Text(
              "Password: $password",
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
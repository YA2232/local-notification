import 'package:flutter/material.dart';
import 'package:local_notification/data/model/notification_params.dart';
import 'package:local_notification/domain/usecase/show_notification_usecase.dart';
import 'package:local_notification/server_locator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedChoice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: [
              Text(
                "Who is the best bodybuilder in the world?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Expanded(
                flex: 1,
                child: ListView(
                  children: [
                    ListTile(
                      title: Text("1. Arnold Schwarzenegger"),
                      leading: Radio<String>(
                        value: "Arnold Schwarzenegger",
                        groupValue: selectedChoice,
                        onChanged: (String? value) {
                          setState(() {
                            selectedChoice = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("2. JAY CUTLER"),
                      leading: Radio<String>(
                        value: "JAY CUTLER",
                        groupValue: selectedChoice,
                        onChanged: (String? value) {
                          setState(() {
                            selectedChoice = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("3. CBUM"),
                      leading: Radio<String>(
                        value: "CBUM",
                        groupValue: selectedChoice,
                        onChanged: (String? value) {
                          setState(() {
                            selectedChoice = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("4. Ronnie Coleman"),
                      leading: Radio<String>(
                        value: "Ronnie Coleman",
                        groupValue: selectedChoice,
                        onChanged: (String? value) {
                          setState(() {
                            selectedChoice = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      if (selectedChoice != null) {
                        sl<ShowNotificationUsecase>().call(NotificationParams(
                            title: "The Answer",
                            body: "take a look",
                            payload: selectedChoice!));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please select an option")),
                        );
                      }
                    },
                    child: Text("Send the choice"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

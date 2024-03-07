import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContentView(),
  ));
}

class AuthManager extends ChangeNotifier {
  // Implement your AuthManager class
  // ...
}

class ContentView extends StatefulWidget {
  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  AuthManager authManager = AuthManager();
  String name = '';
  String password = '';
  bool showPassword = false;
  bool logIn = false;
  bool navigateToPagesView = false;
  bool navigateToSignUpView = false;

  bool get isSignInButtonDisabled => name.isEmpty || password.isEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    labelText: 'Login',
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        obscureText: !showPassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.red),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                      ),
                    ),
                    IconButton(
                      icon: Icon(showPassword ? Icons.visibility_off : Icons.visibility),
                      color: Colors.red,
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: isSignInButtonDisabled
                      ? null
                      : () {
                          setState(() {
                            navigateToPagesView = true;
                          });
                        },
                  child: Text('Sign In'),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          navigateToSignUpView = true;
                        });
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum Tab { house, message, person, car, trash }

class PagesView extends StatefulWidget {
  @override
  _PagesViewState createState() => _PagesViewState();
}

class _PagesViewState extends State<PagesView> {
  Tab selectedTab = Tab.house;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: TabController(length: Tab.values.length, vsync: this as TickerProvider),
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
              FourthScreen(),
              FifthScreen(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: MyTabBar(
              selectedTab: selectedTab,
              onTabChanged: (tab) {
                setState(() {
                  selectedTab = tab;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(); // Replace with your content
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(); // Replace with your content
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(); // Replace with your content
  }
}

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(); // Replace with your content
  }
}

class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(); // Replace with your content
  }
}

class MyTabBar extends StatelessWidget {
  final Tab selectedTab;
  final ValueChanged<Tab> onTabChanged;

  MyTabBar({required this.selectedTab, required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => onTabChanged(Tab.house),
            color: selectedTab == Tab.house ? Colors.blue : Colors.grey,
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () => onTabChanged(Tab.message),
            color: selectedTab == Tab.message ? Colors.blue : Colors.grey,
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => onTabChanged(Tab.person),
            color: selectedTab == Tab.person ? Colors.blue : Colors.grey,
          ),
          IconButton(
            icon: Icon(Icons.directions_car),
            onPressed: () => onTabChanged(Tab.car),
            color: selectedTab == Tab.car ? Colors.blue : Colors.grey,
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => onTabChanged(Tab.trash),
            color: selectedTab == Tab.trash ? Colors.blue : Colors.grey,
          ),
        ],
      ),
    );
  }
}

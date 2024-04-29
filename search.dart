import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String hintText = '';

  void onSearch(String context) {
    setState(() {
      // Update the hint text based on the context
      if (context == 'Home') {
        hintText = 'Search in Home';
        // Call the search function specific to Home
        searchInHome();
      } else if (context == 'User') {
        hintText = 'Search in User';
        // Call the search function specific to User
        searchInUser();
      } else if (context == 'Question Bank') {
        hintText = 'Search in Question Bank';
        // Call the search function specific to Question Bank
        searchInQuestionBank();
      }
    });
  }

  // Define search functions for Home, User, and Question Bank
  void searchInHome() {
    // Implement search function for Home
    print('Searching in Home...');
  }

  void searchInUser() {
    // Implement search function for User
    print('Searching in User...');
  }

  void searchInQuestionBank() {
    // Implement search function for Question Bank
    print('Searching in Question Bank...');
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: Colors.grey.shade100,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, right: 10, left: 230, bottom: 10),
          child: Container(
            height: screenHeight,
            width: screenWidth * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade300,
                width: 0.8,
              ),
            ),
            child: Column(
              children: [
                // Your existing code for tabs
                // Example InkWell for Home tab
                InkWell(
                  onTap: () {
                    onSearch('Home'); // Call onSearch with context 'Home'
                  },
                  child: Text('Home'),
                ),
                // Example InkWell for User tab
                InkWell(
                  onTap: () {
                    onSearch('User'); // Call onSearch with context 'User'
                  },
                  child: Text('User'),
                ),
                // Example InkWell for Question Bank tab
                InkWell(
                  onTap: () {
                    onSearch(
                        'Question Bank'); // Call onSearch with context 'Question Bank'
                  },
                  child: Text('Question Bank'),
                ),
                // Your existing search field
                TextField(
                  decoration: InputDecoration(
                    hintText:
                        hintText, // Display the hint text based on the context
                  ),
                  onChanged: (value) {
                    // Handle search query changes
                    // Implement your search logic here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

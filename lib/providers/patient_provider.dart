import 'package:flutter/material.dart';
import 'package:first_project/data/mock_data.dart';


class PatientProvider with ChangeNotifier {
  List<Map<String, dynamic>> _doctorsList = []; 
  Map<String, dynamic>? _user; 

  Map<String, dynamic>? get user => _user;

  List<Map<String, dynamic>> get doctorsList => _doctorsList;

  void loadUserData(Map<String, dynamic> userData) {
    _user = userData;
    notifyListeners(); 
  }

  void loadDoctorsData(List<Map<String, dynamic>> doctorData) {
    _doctorsList = doctorData;
    notifyListeners(); 
  }

  void initializeData(Map<String, dynamic> jsonData) {
    if (jsonData.containsKey('user')) {
      loadUserData(jsonData['user']);
    }

    if (jsonData.containsKey('doctorsList')) {
      loadDoctorsData(List<Map<String, dynamic>>.from(jsonData['doctorsList']));
    }
  }
}



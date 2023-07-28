// ignore_for_file: file_names

import 'package:flutter/foundation.dart';

class HomePageProvider with ChangeNotifier {
  // WEEKS SELECTION
  final List<String> _titles = ["This Week", "This Month", "Last Month"];
  int _selectedIndex = 0;

  List<String> get titles => _titles;
  int get selectedIndex => _selectedIndex;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  // PRIZE POINTS SECTION
  bool _isPrizeSelected = true;
  bool _isPointSelected = false;

  bool get isPrizeSelected => _isPrizeSelected;
  bool get isPointSelected => _isPointSelected;

  void setPrize() {
    _isPrizeSelected = true;
    _isPointSelected = false;
    notifyListeners();
  }

  void setPoints() {
    _isPrizeSelected = false;
    _isPointSelected = true;
    notifyListeners();
  }

  //DIALOG BAR ICON
  bool _isDialogOpened = false;

  bool get isDialogOpened => _isDialogOpened;

  void toggleDialogOpened() {
    _isDialogOpened = !_isDialogOpened;
    notifyListeners();
  }
}

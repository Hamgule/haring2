class Data {
  int num = 0;
  bool isSelected = false;

  Data({this.num = 0, this.isSelected = false});

  void toggleSelection() {
    isSelected = !isSelected;
  }
}
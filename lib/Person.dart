class Staff{
  int ID;
  String _name;
  int _age;

  Staff.Male(){
    _name = "thanh";
  }
  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }
}
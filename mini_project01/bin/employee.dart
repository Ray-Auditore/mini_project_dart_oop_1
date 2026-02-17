abstract class Employee {
  String _name;

  Employee(this._name);

  String get name => _name; 

  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }

  void showBasicInfo() {
    print("Nama: $name");
    print("Posisi: $runtimeType");
  }
}

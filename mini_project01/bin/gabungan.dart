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

abstract class CalculateSalary {
  double calculateSalary();
}

abstract class Reportable {
  void generateReport();
}

class Manager extends Employee implements CalculateSalary, Reportable {
  double _basicSalary;

  Manager(String name, this._basicSalary) : super(name);

  @override
  double calculateSalary() {
    return _basicSalary + 2000000;
  }

  @override
  void generateReport() {
    print("=== Report Manager ===");
    super.showBasicInfo();
    print("Total Gaji: ${calculateSalary()}");
    print("----------------------");
  }
}

class Developer extends Employee implements CalculateSalary, Reportable {
  double _basicSalary;

  Developer(String name, this._basicSalary) : super(name);

  @override
  double calculateSalary() {
    return _basicSalary + 1000000;
  }

  @override
  void generateReport() {
    print("=== Report Developer ===");
    showBasicInfo();
    print("Total Gaji: ${calculateSalary()}");
    print("------------------------");
  }
}

void main() {
  Manager("Budi", 10000000).generateReport();
  Developer("Andi", 8000000).generateReport();
}
abstract class Passenger {
  String _name;

  Passenger(this._name);

  String get name => _name;
  set name(String value) => _name = value;

  void displayTicketInfo() {
    print("Nama Penumpang: $_name");
  }

  double getTicketPrice();

  String toRupiah(double amount) {
    String price = amount.toStringAsFixed(0);
    String result = "";
    int count = 0;
    for (int i = price.length - 1; i >= 0; i--) {
      result = price[i] + result;
      count++;
      if (count % 3 == 0 && i != 0) {
        result = "." + result;
      }
    }
    return "Rp $result";
  }
}

abstract class Ticketable {
  void showFacilities();
}

class EconomyPassenger extends Passenger implements Ticketable {
  EconomyPassenger(String name) : super(name);

  @override
  double getTicketPrice() => 100000;

  @override
  void showFacilities() => print("Fasilitas: Kursi Standar");

  @override
  void displayTicketInfo() {
    print("=== Tiket Kereta Ekonomi ===");
    super.displayTicketInfo();
    print("Tipe: EconomyPassenger");
    print("Harga: ${toRupiah(getTicketPrice())}");
    showFacilities();
    print("----------------------");
  }
}

class BusinessPassenger extends Passenger implements Ticketable {
  BusinessPassenger(String name) : super(name);

  @override
  double getTicketPrice() => 250000;

  @override
  void showFacilities() => print("Fasilitas: Kursi legrest, Snack");

  @override
  void displayTicketInfo() {
    print("=== Tiket Kereta Bisnis ===");
    super.displayTicketInfo();
    print("Tipe: BusinessPassenger");
    print("Harga: ${toRupiah(getTicketPrice())}");
    showFacilities();
    print("----------------------");
  }
}

class FirstClassPassenger extends Passenger implements Ticketable {
  FirstClassPassenger(String name) : super(name);

  @override
  double getTicketPrice() => 400000;

  @override
  void showFacilities() => print("Fasilitas: Kursi luxury, snack, meal, welcome drink");

  @override
  void displayTicketInfo() {
    print("=== Tiket Kereta First Class ===");
    super.displayTicketInfo();
    print("Tipe: FirstClassPassenger");
    print("Harga: ${toRupiah(getTicketPrice())}");
    showFacilities();
    print("----------------------");
  }
}

void main() {
  List<Passenger> passengers = [
    EconomyPassenger("Budi"),
    BusinessPassenger("Andi"),
    FirstClassPassenger("Sinta"),
  ];

  for (var p in passengers) {
    p.displayTicketInfo();
  }
}
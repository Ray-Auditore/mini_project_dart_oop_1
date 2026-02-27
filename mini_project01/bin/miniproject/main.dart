import 'produk.dart';
import 'laptop.dart';
import 'pc_gaming.dart';
import 'pc_office.dart';

void main() {
  List<Produk> toko = [
    Laptop("MacBook Pro M3", 25000000, 5, 10),
    PCGaming("Asus ROG Strix", 35000000, 2),
    PCOffice("Dell Optiplex", 12000000, 10),
  ];

  for (var p in toko) {
    if (p is Laptop) {
      p.cetakInfo();
    } else if (p is PCGaming) {
      p.cetakInfo();
    } else if (p is PCOffice) {
      p.cetakInfo();
    }
  }
}
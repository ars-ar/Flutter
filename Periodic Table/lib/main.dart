import 'package:flutter/material.dart';

void main() {
  runApp(PeriodicTableApp());
}

class PeriodicTableApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Periodic Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PeriodicTableScreen(),
    );
  }
}

class PeriodicTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Periodic Table')),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SizedBox(
              width: 1000,
              child: Column(
                children: List.generate(10, (rowIndex) => Row(
                  children: List.generate(18, (colIndex) {
                    final element = elements.firstWhere(
                      (e) => e.row == rowIndex + 1 && e.col == colIndex + 1,
                      orElse: () => Element('', Colors.transparent, 0, rowIndex + 1, colIndex + 1),
                    );
                    return Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: element.color,
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          element.symbol,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }),
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Element {
  final String symbol;
  final Color color;
  final int atomicNumber;
  final int row;
  final int col;

  Element(this.symbol, this.color, this.atomicNumber, this.row, this.col);
}
final List<Element> elements = [
  // Example elements
  Element('H', Colors.green, 1, 1, 1),
  Element('He', Colors.purple, 2, 1, 18),
  Element('Li', Colors.red, 3, 2, 1),
  Element('Be', Colors.red, 4, 2, 2),
  Element('B', Colors.orange, 5, 2, 13),
  Element('C', Colors.black, 6, 2, 14),
  Element('N', Colors.yellow, 7, 2, 15),
  Element('O', Colors.red, 8, 2, 16),
  Element('F', Colors.green, 9, 2, 17),
  Element('Ne', Colors.lightBlue, 10, 2, 18),
  // Add remaining elements with correct positions
  Element('Na', Colors.green, 11, 3, 1),
  Element('Mg', Colors.green, 12, 3, 2),
  Element('Al', Colors.grey, 13, 3, 13),
  Element('Si', Colors.grey, 14, 3, 14),
  Element('P', Colors.orange, 15, 3, 15),
  Element('S', Colors.yellow, 16, 3, 16),
  Element('Cl', Colors.greenAccent, 17, 3, 17),
  Element('Ar', Colors.blue, 18, 3, 18),
  Element('K', Colors.green, 19, 4, 1),
  Element('Ca', Colors.green, 20, 4, 2),
  Element('Sc', Colors.grey, 21, 4, 3),
  Element('Ti', Colors.grey, 22, 4, 4),
  Element('V', Colors.grey, 23, 4, 5),
  Element('Cr', Colors.grey, 24, 4, 6),
  Element('Mn', Colors.grey, 25, 4, 7),
  Element('Fe', Colors.grey, 26, 4, 8),
  Element('Co', Colors.grey, 27, 4, 9),
  Element('Ni', Colors.grey, 28, 4, 10),
  Element('Cu', Colors.red, 29, 4, 11),
  Element('Zn', Colors.grey, 30, 4, 12),
  Element('Ga', Colors.grey, 31, 4, 13),
  Element('Ge', Colors.grey, 32, 4, 14),
  Element('As', Colors.orange, 33, 4, 15),
  Element('Se', Colors.yellow, 34, 4, 16),
  Element('Br', Colors.red, 35, 4, 17),
  Element('Kr', Colors.blue, 36, 4, 18),
  Element('Rb', Colors.green, 37, 5, 1),
  Element('Sr', Colors.green, 38, 5, 2),
  Element('Y', Colors.grey, 39, 5, 3),
  Element('Zr', Colors.grey, 40, 5, 4),
  Element('Nb', Colors.grey, 41, 5, 5),
  Element('Mo', Colors.grey, 42, 5, 6),
  Element('Tc', Colors.grey, 43, 5, 7),
  Element('Ru', Colors.grey, 44, 5, 8),
  Element('Rh', Colors.grey, 45, 5, 9),
  Element('Pd', Colors.grey, 46, 5, 10),
  Element('Ag', Colors.red, 47, 5, 11),
  Element('Cd', Colors.grey, 48, 5, 12),
  Element('In', Colors.grey, 49, 5, 13),
  Element('Sn', Colors.grey, 50, 5, 14),
  Element('Sb', Colors.orange, 51, 5, 15),
  Element('Te', Colors.yellow, 52, 5, 16),
  Element('I', Colors.red, 53, 5, 17),
  Element('Xe', Colors.blue, 54, 5, 18),
  Element('Cs', Colors.green, 55, 6, 1),
  Element('Fr', Colors.green, 55, 7, 1),
  Element('Ra', Colors.green, 55, 7, 2),
  Element('Ba', Colors.green, 56, 6, 2),
  Element('La', Colors.grey, 57, 6, 3),
  Element('Ce', Colors.grey, 58, 6, 4),
  Element('Pr', Colors.grey, 59, 6, 5),
  Element('Nd', Colors.grey, 60, 6, 6),
  Element('Pm', Colors.grey, 61, 6, 7),
  Element('Sm', Colors.grey, 62, 6, 8),
  Element('Eu', Colors.grey, 63, 6, 9),
  Element('Gd', Colors.grey, 64, 6, 10),
  Element('Tb', Colors.grey, 65, 6, 11),
  Element('Dy', Colors.grey, 66, 6, 12),
  Element('Ho', Colors.grey, 67, 6, 13),
  Element('Er', Colors.grey, 68, 6, 14),
  Element('Tm', Colors.grey, 69, 6, 15),
  Element('Yb', Colors.grey, 70, 6, 16),
  Element('Lu', Colors.grey, 71, 6, 17),
  Element('Hf', Colors.grey, 72, 6, 18),
  Element('Ta', Colors.grey, 73, 7, 4),
  Element('W', Colors.grey, 74, 7, 5),
  Element('Re', Colors.grey, 75, 7, 6),
  Element('Os', Colors.grey, 76, 7, 7),
  Element('Ir', Colors.grey, 77, 7, 8),
  Element('Pt', Colors.grey, 78, 7, 9),
  Element('Au', Colors.red, 79, 7, 10),
  Element('Hg', Colors.grey, 80, 7, 11),
  Element('Tl', Colors.grey, 81, 7, 12),
  Element('Pb', Colors.grey, 82, 7, 13),
  Element('Bi', Colors.orange, 83, 7, 14),
  Element('Po', Colors.yellow, 84, 7, 15),
  Element('At', Colors.red, 85, 7, 16),
  Element('Rn', Colors.blue, 86, 7, 17),
  Element('Fr', Colors.green, 87, 7, 18),
  Element('Ac', Colors.grey, 89, 7, 3),
  Element('Th', Colors.grey, 90, 10, 3),
  Element('Pa', Colors.grey, 91, 10, 4),
  Element('U', Colors.grey, 92, 10, 5),
  Element('Np', Colors.grey, 93, 10, 6),
  Element('Pu', Colors.grey, 94, 10  , 7),
  Element('Am', Colors.grey, 95, 10, 8),
  Element('Cm', Colors.grey, 96, 10, 9),
  Element('Bk', Colors.grey, 97, 10, 10),
  Element('Cf', Colors.grey, 98, 10, 11),
  Element('Es', Colors.grey, 99, 10, 12),
  Element('Fm', Colors.grey, 100, 10, 13),
  Element('Md', Colors.grey, 101, 10, 14),
  Element('No', Colors.grey, 102, 10, 15),
  Element('Lr', Colors.grey, 103, 10, 16),
  Element('Rf', Colors.grey, 104, 10, 17),
  Element('Db', Colors.grey, 105, 9, 17),
  Element('As', Colors.grey, 105, 9, 16),
  Element('Sg', Colors.grey, 106, 9, 3),
  Element('Bh', Colors.grey, 107, 9, 4),
  Element('Hs', Colors.grey, 108, 9, 5),
  Element('Mt', Colors.grey, 109, 9, 6),
  Element('Ds', Colors.grey, 110, 9, 7),
  Element('Rg', Colors.grey, 111, 9, 8),
  Element('Cn', Colors.grey, 112, 9, 9),
  Element('Nh', Colors.grey, 113, 9, 10),
  Element('Fl', Colors.grey, 114, 9, 11),
  Element('Mc', Colors.grey, 115, 9, 12),
  Element('Lv', Colors.grey, 116, 9, 13),
  Element('Ts', Colors.grey, 117, 9, 14),
  Element('Og', Colors.grey, 118, 9, 15),
];

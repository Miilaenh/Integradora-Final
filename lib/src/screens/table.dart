import 'package:flutter/material.dart';

class MyTable extends StatelessWidget
{
  const MyTable({super.key});
  @override
  Widget build(context)
  {
    return Scaffold(
    body: SingleChildScrollView(
    child: _buildTable(sortAscendig: true),
    )
    );
  }
}




final List<Horario> _horariosList = [
  Horario("1", "8:00", "07:15"),
  Horario("2", "7:00", "16:05"),
  Horario("3", "8:30", "07:25"),
  Horario("4", "7:40", "16:30"),
  Horario("5", "7:44", "16:30"),
  Horario("6", "7:20", "16:30"),
  Horario("7", "8:05", "16:30"),
  Horario("8", "7:50", "16:30"),
  Horario("9", "8:00", "16:30"),
  Horario("10", "7:44", "16:30"),
  Horario("11", "7:20", "16:30"),
  Horario("12", "7:20", "16:30"),
  Horario("6", "7:20", "16:30"),
  Horario("7", "8:05", "16:30"),
  Horario("8", "7:50", "16:30"),
  Horario("9", "8:00", "16:30"),
  Horario("10", "7:44", "16:30"),
  Horario("11", "7:20", "16:30"),
  Horario("12", "7:20", "16:30"),
  Horario("6", "7:20", "16:30"),
  Horario("7", "8:05", "16:30"),
  Horario("8", "7:50", "16:30"),
  Horario("9", "8:00", "16:30"),
  Horario("10", "7:44", "16:30"),
  Horario("11", "7:20", "16:30"),
  Horario("12", "7:20", "16:30"),
  Horario("13", "8:00", "16:30")
];

//sobre la tabla

Widget _buildTable({bool sortAscendig = true}) {
  return DataTable(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 109, 151, 255),
      borderRadius: BorderRadius.circular(5),
    ),
    dataRowColor: MaterialStateColor.resolveWith((states) => Colors.white),
    sortColumnIndex: 0,
    sortAscending: sortAscendig,
    columns: <DataColumn>[
      DataColumn(
        label: Text('dia'),
        tooltip: 'dia del mes',
      ),
      DataColumn(
        label: const Text('entrada'),
        tooltip: 'entrada A.M',
      ),
      DataColumn(
        label: const Text('salida'),
        tooltip: 'salida P.M',
      ),
    ],
    rows: _horariosList.map<DataRow>((Horario horario) {
      return DataRow(
        cells: <DataCell>[
          DataCell(
            Text(horario.dia),
          ),
          DataCell(
            Text(horario.entrada),
          ),
          DataCell(
            Text(horario.salida),
          ),
        ],
      );
    }).toList(),
  );
}






class Horario {
  final String dia;
  final String entrada;
  final String salida;

  Horario(this.dia, this.entrada, this.salida);
}

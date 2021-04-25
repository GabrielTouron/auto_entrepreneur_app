import 'package:flutter/material.dart';
import 'package:auto_entrepreneur_app/shared/bottom_nav_bar.dart';

class IncomesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Revenus'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => print('delete'),
                  color: Colors.blue,
                  iconSize: 20,
                ),
                IconButton(
                  icon: Icon(Icons.file_copy),
                  onPressed: () => print('bill'),
                  color: Colors.blue,
                ),
              ],
            ),
            DataTable(
              showCheckboxColumn: true,
              columns: [
                DataColumn(
                  label: Text('Client'),
                ),
                DataColumn(
                  label: Text('Prix'),
                ),
                DataColumn(
                  label: Text('Date'),
                )
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(
                      Text('Le Performance'),
                    ),
                    DataCell(
                      Text('60 '),
                    ),
                    DataCell(
                      Text('21/20/2020'),
                    )
                  ],
                  onSelectChanged: (bool? value) {
                    print(value);
                  },
                ),
                DataRow(
                  cells: [
                    DataCell(
                      Text('Global Movement'),
                    ),
                    DataCell(
                      Text('40 '),
                    ),
                    DataCell(
                      Text('21/20/2020'),
                    )
                  ],
                  onSelectChanged: (bool? value) {
                    print(value);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('je passe'),
        child: const Icon(Icons.add),
      ),
    );
  }
}

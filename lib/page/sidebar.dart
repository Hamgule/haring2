import 'package:flutter/material.dart';
import 'package:haring2/data/data.dart';
import 'package:reorderables/reorderables.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key, required this.data, required this.isLeader}) : super(key: key);

  final List<Data> data;
  final bool isLeader;

  @override
  _SidebarState createState() => _SidebarState();
}

// class _SidebarState extends State<Sidebar> {
//
//   @override
//   Widget build(BuildContext context) {
//
//     final List<Data> data = widget.data;
//     final bool isLeader = widget.isLeader;
//     Data movingData = Data();
//
//     double sheetWidth = 100.0;
//     double sheetHeight = 130.0;
//     double marginHorizontal = 10.0;
//
//     double dragStartX = 0.0;
//     double dragStartY = 0.0;
//
//     // return Drawer(
//     //   child: Stack(
//     //     children: [
//     //       Positioned(
//     //         child: ListView(
//     //           children: [
//     //             for (int i = 0; i < (data.length - 1) / 2; i++)
//     //               ListTile(
//     //                 title: Row(
//     //                   mainAxisAlignment: MainAxisAlignment.center,
//     //                   children: [
//     //                     Draggable(
//     //                       data: 'sheet',
//     //                       onDragStarted: () {
//     //                         setState(() {
//     //                           movingData = data[2 * i];
//     //                           data.removeAt(2 * i);
//     //                         });
//     //                       },
//     //                       onDragUpdate: (dragDetails) {
//     //                         setState(() {
//     //
//     //                         });
//     //                       },
//     //                       onDragEnd: (dragDetails) {
//     //                         setState(() {
//     //                           double x = dragDetails.offset.dx;
//     //                           double y = dragDetails.offset.dy;
//     //                         });
//     //                       },
//     //                       child: Container(
//     //                         width: sheetWidth,
//     //                         height: sheetHeight,
//     //                         decoration: BoxDecoration(
//     //                           color: Colors.grey.withOpacity(.5),
//     //                         ),
//     //                         child: Center(
//     //                           child: Text(
//     //                             '${data[2 * i].num}',
//     //                             style: TextStyle(
//     //                               fontSize: 30.0,
//     //                               color: Colors.black.withOpacity(.5),
//     //                             ),
//     //                           ),
//     //                         ),
//     //                       ),
//     //                       feedback: Container(
//     //                         width: sheetWidth,
//     //                         height: sheetHeight,
//     //                         decoration: BoxDecoration(
//     //                           color: Colors.grey.withOpacity(.5),
//     //                         ),
//     //                         child: Center(
//     //                           child: Text(
//     //                             '${data[2 * i].num}',
//     //                             style: TextStyle(
//     //                               fontSize: 30.0,
//     //                               color: Colors.black.withOpacity(.5),
//     //                               decoration: TextDecoration.none,
//     //                               fontWeight: FontWeight.normal,
//     //                             ),
//     //                           ),
//     //                         ),
//     //                       ),
//     //                       // childWhenDragging: Container(),
//     //                     ),
//     //                     SizedBox(
//     //                       width: marginHorizontal,
//     //                     ),
//     //                     Draggable(
//     //                       data: 'sheet',
//     //                       child: Container(
//     //                         width: sheetWidth,
//     //                         height: sheetHeight,
//     //                         decoration: BoxDecoration(
//     //                           color: Colors.grey.withOpacity(.5),
//     //                         ),
//     //                         child: Center(
//     //                           child: Text(
//     //                             '${data[2 * i + 1].num}',
//     //                             style: TextStyle(
//     //                               fontSize: 30.0,
//     //                               color: Colors.black.withOpacity(.5),
//     //                             ),
//     //                           ),
//     //                         ),
//     //                       ),
//     //                       feedback: Container(
//     //                         width: sheetWidth,
//     //                         height: sheetHeight,
//     //                         decoration: BoxDecoration(
//     //                           color: Colors.grey.withOpacity(.5),
//     //                         ),
//     //                         child: Center(
//     //                           child: Text(
//     //                             '${data[2 * i + 1].num}',
//     //                             style: TextStyle(
//     //                               fontSize: 30.0,
//     //                               color: Colors.black.withOpacity(.5),
//     //                               decoration: TextDecoration.none,
//     //                               fontWeight: FontWeight.normal,
//     //                             ),
//     //                           ),
//     //                         ),
//     //                       ),
//     //                       // childWhenDragging: Container(),
//     //                     ),
//     //                   ],
//     //                 ),
//     //               ),
//     //             if (data.length % 2 == 1)
//     //             ListTile(
//     //               title: Draggable(
//     //                 data: 'sheet',
//     //                 child: Center(
//     //                   child: Container(
//     //                     width: sheetWidth,
//     //                     height: sheetHeight,
//     //                     decoration: BoxDecoration(
//     //                       color: Colors.grey.withOpacity(.5),
//     //                     ),
//     //                     child: Center(
//     //                       child: Text(
//     //                         '${data.last.num}',
//     //                         style: TextStyle(
//     //                           fontSize: 30.0,
//     //                           color: Colors.black.withOpacity(.5),
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                 ),
//     //                 feedback: Center(
//     //                   child: Container(
//     //                     width: sheetWidth,
//     //                     height: sheetHeight,
//     //                     decoration: BoxDecoration(
//     //                       color: Colors.grey.withOpacity(.5),
//     //                     ),
//     //                     child: Center(
//     //                       child: Text(
//     //                         '${data.last.num}',
//     //                         style: TextStyle(
//     //                           fontSize: 30.0,
//     //                           color: Colors.black.withOpacity(.5),
//     //                           decoration: TextDecoration.none,
//     //                           fontWeight: FontWeight.normal,
//     //                         ),
//     //                       ),
//     //                     ),
//     //                   ),
//     //                 ),
//     //               ),
//     //             ),
//     //           ],
//     //         ),
//     //       ),
//     //     ],
//     //   ),
//     // );
//     // return Drawer(
//     //   child: ReorderableListView(
//     //     onReorder: (int oldIndex, int newIndex) {
//     //       setState(() {
//     //         if (newIndex > oldIndex) {
//     //           newIndex -= 1;
//     //         }
//     //         final moveItem = data.removeAt(oldIndex);
//     //         data.insert(newIndex, moveItem);
//     //       });
//     //     },
//     //     children: data.map((d) => ListTile(
//     //       key: Key('${d.num}'),
//     //       title: Text('${d.num}'),
//     //     )).toList(),
//     //   ),
//     // );
//   }
// }

class _SidebarState extends State<Sidebar> {
  final double _fontSize = 30.0;
  List<Widget> _tiles = [];
  double sheetWidth = 100.0;
  double sheetHeight = 130.0;

  @override
  void initState() {
    super.initState();
    _tiles = <Widget>[
      for (Data datum in widget.data)
      Container(
        width: sheetWidth,
        height: sheetHeight,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.5),
        ),
        child: Center(
          child: Text(
            '${datum.num}',
            style: TextStyle(
              fontSize: _fontSize,
              color: Colors.black.withOpacity(.5),
            ),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    void _onReorder(int oldIndex, int newIndex) {
      setState(() {
        Widget row = _tiles.removeAt(oldIndex);
        _tiles.insert(newIndex, row);
      });
    }

    var wrap = ReorderableWrap(
        spacing: 8.0,
        runSpacing: 4.0,
        padding: const EdgeInsets.all(8),
        children: _tiles,
        onReorder: _onReorder,
        onNoReorder: (int index) {
        },
        onReorderStarted: (int index) {
        }
    );

    return Drawer(
      child: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top: 40.0),
        child: SingleChildScrollView(
          child: wrap,
        ),
      ),
    );

  }
}
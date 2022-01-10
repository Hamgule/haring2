import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haring2/config/palette.dart';
import 'package:haring2/data/data.dart';
import 'package:haring2/page/sidebar.dart';

class LeaderPage extends StatefulWidget {
  const LeaderPage({Key? key}) : super(key: key);

  @override
  State<LeaderPage> createState() => _LeaderPageState();
}

class _LeaderPageState extends State<LeaderPage> {
  final double sheetWidth = 540.0;
  final double sheetHeight = 700.0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Data> data = [];
  int selectedImageNum = -1;

  @override
  void initState() {
    super.initState();

    _addImage(5);
    _addImage(3);
    _addImage(4);
    _addImage(10);
  }

  // void _addImage() {
  //   data.add(data.length);
  //   print(data.length);
  // }

  void _addImage(int num) {
    data.add(Data(num: num));
  }

  void _delImage(int num) {
    data.removeWhere((d) => d.num == num);
  }

  void _deselectAll() {
    for (Data datus in data) {
      datus.isSelected = false;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.0),
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Palette.themeColor1,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.download,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.view_sidebar,
            ),
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < (data.length - 1) / 2; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (data[2 * i].num != selectedImageNum) _deselectAll();
                          data[2 * i].toggleSelection();
                          selectedImageNum = data[2 * i].num;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0,),
                        width: sheetWidth,
                        height: sheetHeight,
                        decoration: BoxDecoration(
                          color: data[2 * i].isSelected
                              ? Palette.themeColor1.withOpacity(.5)
                              : Colors.grey.withOpacity(.5),
                          border: Border.all(
                            color: data[2 * i].isSelected ? Palette.themeColor1 : Colors.transparent,
                            width: 3.0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0.0,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _delImage(data[2 * i].num);
                                  });
                                },
                              ),
                            ),
                            Positioned(
                              child: Center(
                                child: Text(
                                  '${data[2 * i].num}',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(.5),
                                    fontSize: 180.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (data[2 * i + 1].num != selectedImageNum) _deselectAll();
                          data[2 * i + 1].toggleSelection();
                          selectedImageNum = data[2 * i + 1].num;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0,),
                        width: sheetWidth,
                        height: sheetHeight,
                        decoration: BoxDecoration(
                          color: data[2 * i + 1].isSelected
                              ? Palette.themeColor1.withOpacity(.5)
                              : Colors.grey.withOpacity(.5),
                          border: Border.all(
                            color: data[2 * i + 1].isSelected ? Palette.themeColor1 : Colors.transparent,
                            width: 3.0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0.0,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _delImage(data[2 * i + 1].num);
                                  });
                                },
                              ),
                            ),
                            Positioned(
                              child: Center(
                                child: Text(
                                  '${data[2 * i + 1].num}',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(.5),
                                    fontSize: 180.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              if (data.length % 2 == 1)
                InkWell(
                  onTap: () {
                    setState(() {
                      if (data.last.num != selectedImageNum) _deselectAll();
                      data.last.toggleSelection();
                      selectedImageNum = data.last.num;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0,),
                    width: sheetWidth,
                    height: sheetHeight,
                    decoration: BoxDecoration(
                      color: data.last.isSelected
                          ? Palette.themeColor1.withOpacity(.5)
                          : Colors.grey.withOpacity(.5),
                      border: Border.all(
                        color: data.last.isSelected ? Palette.themeColor1 : Colors.transparent,
                        width: 3.0,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0.0,
                          child: IconButton(
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                _delImage(data.last.num);
                              });
                            },
                          ),
                        ),
                        Positioned(
                          child: Center(
                            child: Text(
                              '${data.last.num}',
                              style: TextStyle(
                                color: Colors.white.withOpacity(.5),
                                fontSize: 180.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.brush,
        ),
        backgroundColor: Palette.themeColor1,
      ),
      endDrawer: Sidebar(data: data, isLeader: true),
    );
  }
}

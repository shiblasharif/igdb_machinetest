import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:machinetest/models/models.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // @override
  // void initState() {
  //   responseData().then((value) => print(value.body));
  //   super.initState();
  // }
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 34, 34),
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                image: DecorationImage(
                  image: AssetImage("assets/images/profile.webp"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                border: Border.all(
                  color: Colors.deepPurple.shade700,
                  width: 2.0,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            const Text(
              "Shibla",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.deepPurple.shade700,
          ),
          IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: Colors.deepPurple.shade700,
          ),
        ],
        shape: Border(bottom: BorderSide(color: Colors.grey, width: 0.9)),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10),
            child: Text(
              "Popular",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.deepPurple.shade700,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 15),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 200,
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                child: Container(
                                  height: 50,
                                  color: Colors.grey,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "FarCry 6",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.deepPurple.shade700,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 200,
                            width: 280,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                child: Container(
                                  height: 50,
                                  color: Colors.grey,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "FarCry 6",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.deepPurple.shade700,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  FilterChip(
                    backgroundColor: Colors.black54,
                    label: Text(
                      "All",
                      style: TextStyle(color: Colors.white),
                    ),
                    selected: selected,
                    onSelected: (bool value) {
                      selected = value;
                      setState(() {});
                    },
                    selectedColor: Colors.deepPurple.shade700,
                    showCheckmark: false,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    backgroundColor: Colors.black54,
                    label: Text(
                      "PlayStation",
                      style: TextStyle(color: Colors.white),
                    ),
                    selected: selected,
                    onSelected: (bool value) {
                      selected = value;
                      setState(() {});
                    },
                    selectedColor: Colors.deepPurple.shade700,
                    showCheckmark: false,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    backgroundColor: Colors.black54,
                    label: Text(
                      "Nintendo",
                      style: TextStyle(color: Colors.white),
                    ),
                    selected: selected,
                    onSelected: (bool value) {
                      selected = value;
                      setState(() {});
                    },
                    selectedColor: Colors.deepPurple.shade700,
                    showCheckmark: false,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    backgroundColor: Colors.black54,
                    label: Text(
                      "X- Box",
                      style: TextStyle(color: Colors.white),
                    ),
                    selected: selected,
                    onSelected: (bool value) {
                      selected = value;
                      setState(() {});
                    },
                    selectedColor: Colors.deepPurple.shade700,
                    showCheckmark: false,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    backgroundColor: Colors.black54,
                    label: Text(
                      "PC",
                      style: TextStyle(color: Colors.white),
                    ),
                    selected: selected,
                    onSelected: (bool value) {
                      selected = value;
                      setState(() {});
                    },
                    selectedColor: Colors.deepPurple.shade700,
                    showCheckmark: false,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    backgroundColor: Colors.black54,
                    label: Text(
                      "Steam",
                      style: TextStyle(color: Colors.white),
                    ),
                    selected: selected,
                    onSelected: (bool value) {
                      selected = value;
                      setState(() {});
                    },
                    selectedColor: Colors.deepPurple.shade700,
                    showCheckmark: false,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  FilterChip(
                    backgroundColor: Colors.black54,
                    label: Text(
                      "Stadia",
                      style: TextStyle(color: Colors.white),
                    ),
                    selected: selected,
                    onSelected: (bool value) {
                      selected = value;
                      setState(() {});
                    },
                    selectedColor: Colors.deepPurple.shade700,
                    showCheckmark: false,
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(children: [
                FilterChip(
                  backgroundColor: Colors.black54,
                  label: Row(
                    children: [
                      Icon(
                        Icons.bolt,
                        color: Colors.grey,
                      ),
                      Text(
                        "All",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  selected: selected,
                  onSelected: (bool value) {
                    selected = value;

                    setState(() {});
                  },
                  selectedColor: Colors.deepPurple.shade700,
                  showCheckmark: false,
                ),
                SizedBox(
                  width: 8,
                ),
                FilterChip(
                  backgroundColor: Colors.black54,
                  label: Row(
                    children: [
                      Icon(
                        Icons.bolt,
                        color: Colors.orange,
                      ),
                      Text(
                        "Action",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  selected: selected,
                  onSelected: (bool value) {
                    selected = value;
                    setState(() {});
                  },
                  selectedColor: Colors.deepPurple.shade700,
                  showCheckmark: false,
                ),
                SizedBox(
                  width: 8,
                ),
                FilterChip(
                  backgroundColor: Colors.black54,
                  label: Row(
                    children: [
                      Icon(
                        Icons.bolt,
                        color: Colors.grey,
                      ),
                      Text(
                        "Adventure",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  selected: selected,
                  onSelected: (bool value) {
                    selected = value;
                    setState(() {});
                  },
                  selectedColor: Colors.deepPurple.shade700,
                  showCheckmark: false,
                ),
                SizedBox(
                  width: 8,
                ),
                FilterChip(
                  backgroundColor: Colors.black54,
                  label: Row(
                    children: [
                      Icon(
                        Icons.bar_chart,
                        color: Colors.orange,
                      ),
                      Text(
                        "puzzle",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  selected: selected,
                  onSelected: (bool value) {
                    selected = value;
                    setState(() {});
                  },
                  selectedColor: Colors.deepPurple.shade700,
                  showCheckmark: false,
                ),
                SizedBox(
                  width: 8,
                ),
                FilterChip(
                  backgroundColor: Colors.black54,
                  label: Row(
                    children: [
                      Icon(
                        Icons.bolt,
                        color: Colors.orange,
                      ),
                      Text(
                        "Action",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  selected: selected,
                  onSelected: (bool value) {
                    selected = value;
                    setState(() {});
                  },
                  selectedColor: Colors.deepPurple.shade700,
                  showCheckmark: false,
                )
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10),
            child: Text(
              "Today",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.deepPurple.shade700,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(19),
                                    bottomLeft: Radius.circular(19)),
                                child: Container(
                                  height: 111,
                                  color: Colors.grey[800],
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "FarCry 6",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.favorite_border_outlined,
                                              color: Colors.deepPurple[700],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .calendar_month_outlined,
                                                      color: Colors
                                                          .deepPurple.shade700,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "19 Feb 2021",
                                                      style: TextStyle(
                                                          fontSize: 9,
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              height: 18,
                                              width: 75,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                            ),
                                            Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(
                                                      Icons.storm_outlined,
                                                      color: Colors.orange,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "Action",
                                                      style: TextStyle(
                                                          fontSize: 9,
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              height: 18,
                                              width: 55,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                            ),
                                            Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .calendar_month_outlined,
                                                      color: Colors.blue,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "Adventure",
                                                      style: TextStyle(
                                                          fontSize: 9,
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              height: 18,
                                              width: 75,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Icon(
                                                  Icons.label,
                                                  color: Colors.amber,
                                                  size: 12,
                                                ),
                                                Text(
                                                  "30% OFF",
                                                  style: TextStyle(
                                                      fontSize: 9,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                          height: 18,
                                          width: 62,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Download",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black26),
                                            ),
                                            SizedBox(
                                              width: 25,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.appStoreIos,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.android,
                                              color: Colors.green,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.appStoreIos,
                                              color: Colors.redAccent,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.steam,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.xbox,
                                              color: Colors.green,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.playstation,
                                              color: Colors.blue,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.appStoreIos,
                                              color: Colors.red,
                                              size: 16,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(19),
                                    bottomLeft: Radius.circular(19)),
                                child: Container(
                                  height: 111,
                                  color: Colors.grey[800],
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "FarCry 6",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.favorite_border_outlined,
                                              color: Colors.deepPurple[700],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .calendar_month_outlined,
                                                      color: Colors
                                                          .deepPurple.shade700,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "19 Feb 2021",
                                                      style: TextStyle(
                                                          fontSize: 9,
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              height: 18,
                                              width: 75,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                            ),
                                            Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(
                                                      Icons.storm_outlined,
                                                      color: Colors.orange,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "Action",
                                                      style: TextStyle(
                                                          fontSize: 9,
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              height: 18,
                                              width: 55,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                            ),
                                            Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .calendar_month_outlined,
                                                      color: Colors.blue,
                                                      size: 12,
                                                    ),
                                                    Text(
                                                      "Adventure",
                                                      style: TextStyle(
                                                          fontSize: 9,
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              height: 18,
                                              width: 75,
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Icon(
                                                  Icons.label,
                                                  color: Colors.amber,
                                                  size: 12,
                                                ),
                                                Text(
                                                  "30% OFF",
                                                  style: TextStyle(
                                                      fontSize: 9,
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                          height: 18,
                                          width: 62,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Download",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black26),
                                            ),
                                            SizedBox(
                                              width: 25,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.appStoreIos,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.android,
                                              color: Colors.green,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.appStoreIos,
                                              color: Colors.redAccent,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.appStoreIos,
                                              color: Colors.white,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.xbox,
                                              color: Colors.green,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.playstation,
                                              color: Colors.blue,
                                              size: 16,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            FaIcon(
                                              FontAwesomeIcons.appStoreIos,
                                              color: Colors.red,
                                              size: 16,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10),
            child: Text(
              "This Week",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.deepPurple.shade700,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(19),
                                  bottomLeft: Radius.circular(19)),
                              child: Container(
                                height: 111,
                                color: Colors.grey[800],
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "FarCry 6",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.deepPurple[700],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: Colors.purple,
                                                    size: 12,
                                                  ),
                                                  Text(
                                                    "19 Feb 2021",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                            height: 18,
                                            width: 75,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                          ),
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons.storm_outlined,
                                                    color: Colors.orange,
                                                    size: 12,
                                                  ),
                                                  Text(
                                                    "Action",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                            height: 18,
                                            width: 55,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                          ),
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: Colors.blue,
                                                    size: 12,
                                                  ),
                                                  Text(
                                                    "Adventure",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                            height: 18,
                                            width: 75,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.label,
                                                color: Colors.amber,
                                                size: 12,
                                              ),
                                              Text(
                                                "30% OFF",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                        height: 18,
                                        width: 62,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Download",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black26),
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.appStoreIos,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.android,
                                            color: Colors.green,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.appStoreIos,
                                            color: Colors.redAccent,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.appStoreIos,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.xbox,
                                            color: Colors.green,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.playstation,
                                            color: Colors.blue,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.appStoreIos,
                                            color: Colors.red,
                                            size: 16,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(19),
                                  bottomLeft: Radius.circular(19)),
                              child: Container(
                                height: 111,
                                color: Colors.grey[800],
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "FarCry 6",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.deepPurple[700],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: Colors.purple,
                                                    size: 12,
                                                  ),
                                                  Text(
                                                    "19 Feb 2021",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                            height: 18,
                                            width: 75,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                          ),
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons.storm_outlined,
                                                    color: Colors.orange,
                                                    size: 12,
                                                  ),
                                                  Text(
                                                    "Action",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                            height: 18,
                                            width: 55,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                          ),
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: Colors.blue,
                                                    size: 12,
                                                  ),
                                                  Text(
                                                    "Adventure",
                                                    style: TextStyle(
                                                        fontSize: 9,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                            height: 18,
                                            width: 75,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.label,
                                                color: Colors.amber,
                                                size: 12,
                                              ),
                                              Text(
                                                "30% OFF",
                                                style: TextStyle(
                                                    fontSize: 9,
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                        ),
                                        height: 18,
                                        width: 62,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Download",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black26),
                                          ),
                                          SizedBox(
                                            width: 25,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.appStoreIos,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.android,
                                            color: Colors.green,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.appStoreIos,
                                            color: Colors.redAccent,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.appStoreIos,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.xbox,
                                            color: Colors.green,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.playstation,
                                            color: Colors.blue,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.appStoreIos,
                                            color: Colors.red,
                                            size: 16,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

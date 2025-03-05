import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _selectedCategoryIndex = 0;

  final List<String> categories = [
    "All Product",
    "Women",
    "Men",
    "Kids",
    "Sports",
    "Jewellery"
  ];
  final List<String> produits = [
    "Lamp",
    "Clothing",
    "Bag",
    "Headphone",
    "Shoes",
    "Jewellery"
  ];

  void _onBottomNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onCategoryTapped(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            _buildSearchBar(),
            _buildCategoryList(),
            _shopBackground(),
            _buildClassList(),
            Expanded(
              child: _buildBuy(),
            )
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  /// *App Bar*
  AppBar _buildAppBar() {
    return AppBar(
      leading: _buildIconButton(Icons.arrow_back, () {}),
      title: Text(
        'Carthage Store',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [_buildIconButton(Icons.shopping_cart, () {})],
    );
  }

  /// *Reusable Icon Button*
  Widget _buildIconButton(IconData icon, VoidCallback onPressed) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.black),
      ),
    );
  }

  /// *Search Bar*
  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.mic, color: Colors.grey),
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.grey.shade200,
            child: Icon(Icons.camera_alt, color: Colors.black),
          ),
        ],
      ),
    );
  }

  /// *Category List*
  Widget _buildCategoryList() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          bool isSelected = _selectedCategoryIndex == index;
          return GestureDetector(
            onTap: () => _onCategoryTapped(index),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: isSelected ? Colors.orange.shade100 : Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected
                      ? Colors.orange.shade200
                      : Colors.grey.shade300,
                ),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: isSelected ? Colors.orange.shade800 : Colors.black,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _shopBackground() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(30)), // Keeps the container radius large
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 5),
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            // borderRadius: BorderRadius.circular(2), // Reduced border radius for the image
            child: Image.asset(
              'assets/images/women_background.jpg',
              fit: BoxFit.cover,
              width: 400,
              height: 250,
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'First Purchase',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Enjoy a Special',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Offer!',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Text('Shop Now', style: TextStyle(color: Colors.orange)),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Text(
              '\$200',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassList() {
    List<Map<String, String>> categories = [
      {'image': 'assets/images/Lamp.jpg', 'name': 'Lamp'},
      {'image': 'assets/images/Bag.jpg', 'name': 'Bag'},
      {'image': 'assets/images/Headphone.jpg', 'name': 'Headphone'},
      {'image': 'assets/images/Jewellery.jpg', 'name': 'Jewellery'},
      {'image': 'assets/images/shoes.jpg', 'name': 'Shoes'},
      {'image': 'assets/images/clothing.jpg', 'name': 'Clothing'},
    ];
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'See All',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 80, // Hauteur fixe pour la ListView
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length, // Utiliser la longueur de la liste
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage(categories[index]['image']!),
                      ),
                      Text(categories[index]['name']!),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBuy() {
    List<Map<String, String>> products = [
      {'image': 'assets/images/Lamp.jpg', 'name': 'Lamp', 'price': '\$50'},
      {'image': 'assets/images/Bag.jpg', 'name': 'Bag', 'price': '\$80'},
      {
        'image': 'assets/images/Headphone.jpg',
        'name': 'Headphone',
        'price': '\$120'
      },
      {
        'image': 'assets/images/Jewellery.jpg',
        'name': 'Jewellery',
        'price': '\$200'
      },
      {'image': 'assets/images/shoes.jpg', 'name': 'Shoes', 'price': '\$95'},
      {
        'image': 'assets/images/clothing.jpg',
        'name': 'Clothing',
        'price': '\$70'
      },
    ];

    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Selling",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "See All",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true, // Ensures GridView fits inside a column
            physics:
                NeverScrollableScrollPhysics(), // Prevents internal scrolling
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.8,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image.asset(
                        products[index]['image']!,
                        width: double.infinity,
                        height: 120, // Fixed height to prevent layout issues
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            products[index]['name']!,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            products[index]['price']!,
                            style:
                                TextStyle(fontSize: 14, color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text("Buy Now",
                          style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// *Bottom Navigation Bar*
  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: _onBottomNavTapped,
      items: [
        _buildNavItem(Icons.home, 0),
        _buildNavItem(Icons.search, 1),
        _buildNavItem(Icons.shopping_cart, 2),
        _buildNavItem(Icons.person, 3),
      ],
    );
  }

  /// *Reusable Bottom Navigation Icon*
  BottomNavigationBarItem _buildNavItem(IconData icon, int index) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Colors.orange : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: _selectedIndex == index ? Colors.white : Colors.grey,
          size: 35,
        ),
      ),
      label: "",
    );
  }
}

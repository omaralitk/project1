import 'package:flutter/material.dart';
import 'package:login2/Model/product.dart';
import 'package:login2/View/Login_Screen.dart';
import 'package:login2/View/details_product.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  TabController _tcontroller;

  void initState() {
    _tcontroller = TabController(length: 3, vsync: this);
  }

  List<Product> products = [
    Product(
      urlProfileImage:
          'https://cdn.mos.cms.futurecdn.net/mvuQ4gyhCadiiTv9LYEMfE-1200-80.jpg',
      name: 'HP Labtop',
      status: 'used',
      price: '520',
      desc:
          'HP NoteBook is a Windows 10 laptop with a 15.60-inch display that has a resolution of 1366x768 pixels. It is powered by a Core i5 processor and it comes with 8GB of RAM. The HP NoteBook packs 256GB of SSD storage. Graphics are powered by Intel HD Graphics 620.',
    ),
    Product(
      urlProfileImage:
          'https://www.lifewire.com/thmb/Kagm_WNNL4l932xq1nWMi04yL6g=/480x480/filters:no_upscale():max_bytes(150000):strip_icc()/_hero_SQ_Dell-Inspiron-7000-Laptop-Computer-1-ee09be3166a4489c8f0133562e4f2830.jpg',
      name: 'Dell Labtop',
      status: 'used',
      price: '340',
      desc:
          'Dell Inspiron 15 is a Windows 10 Home laptop with a 15.60-inch display that has a resolution of 1920x1080 pixels. It is powered by a Core i5 processor and it comes with 8GB of RAM. The Dell Inspiron 15 packs 1TB of HDD storage. Graphics are powered by AMD Radeon 530 Graphics.',
    ),
    Product(
        urlProfileImage: 'https://static.toiimg.com/photo/61654288.cms',
        name: 'IPhone X',
        status: 'New',
        price: '420',
        desc:
            'The Apple iPhone X in Silver comes with many exciting technologies. First is the hexa-core processor and updated Apple iOS. Next is the 5.8-inch screen with Super Retina HD Display with high-end contrast ratio. Face recognition software enhances security while the one-touch finger swipe returns you to your homepage'),
    Product(
      urlProfileImage:
          'https://www.zdnet.com/a/hub/i/r/2020/11/16/37e33024-2892-4bb7-9d21-6ac6f7544def/thumbnail/770x433/5f1b7f881bfb80a9f2bbe02bc6d64b49/apple-macbook-pro-m1-2020-5.jpg',
      name: 'MacBook Pro',
      status: 'New',
      price: '400',
      desc:
          'Apple MacBook Pro is a macOS laptop with a 13.30-inch display that has a resolution of 2560x1600 pixels. It is powered by a Core i5 processor and it comes with 12GB of RAM. The Apple MacBook Pro packs 512GB of SSD storage.',
    ),
    Product(
      urlProfileImage:
          'https://cf.shopee.ph/file/dc52bc159162d0233f4c219eaa777782',
      name: 'Airpods',
      status: 'New',
      price: '100',
      desc:
          'Powered by the Apple H1 headphone chip, AirPods deliver a faster and more stable wireless connection to your devices — up to 2x faster when switching between active devices and a 1.5x faster connection time for phone calls.',
    ),
    Product(
      urlProfileImage:
      'https://www.lowyat.net/wp-content/uploads/2020/06/Samsung-Galaxy-A31-front-4.jpg',
      name: 'Samsung A31',
      status: 'New',
      price: '160',
      desc:'Released 2020, April 27 ,185g, 8.6mm thickness ,Android 10, One UI 2.5 ,64GB/128GB storage, microSDXC',

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  _tcontroller.animateTo(1);
                },
                child: Card(
                  child: ListTile(
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: Image.asset('assets/images/picture.jpg')),
                    title: Text('Omar Ali '),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _tcontroller.animateTo(0);
                },
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.shop),
                    title: Text('Go to Market'),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _tcontroller.animateTo(2);
                },
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.add_box),
                    title: Text('Add Product'),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.arrow_back),
                    title: Text('Log Out'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.black12,
        elevation: 0,
        title: Text(
          'Market',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        bottom: TabBar(
          controller: _tcontroller,
          tabs: [
            Tab(
                icon: Icon(
              Icons.shop,
              color: Colors.black,
            )),
            Tab(icon: Icon(Icons.person, color: Colors.black)),
            Tab(icon: Icon(Icons.add, color: Colors.black)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _tcontroller.animateTo(0);
        },
        elevation: 5,
        child: Icon(Icons.shop),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomSheet: Container(
        height: 60,
        color: Colors.black12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tcontroller,
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) => Card(
              child: InkWell(
                  onTap: () {
                    Details d = Details(products[index]);
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => d));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            child: Image.network(
                          products[index].urlProfileImage,
                          fit: BoxFit.cover,
                        )),
                        Text(
                          products[index].name ?? "",
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                          '\$${products[index].price}' ?? "",
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          Center(
              child: Column(
            children: [
              Image.asset(
                'assets/images/picture.jpg',
              ),
              Text(' '),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    Text(
                      'Personal Information',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(' '),
                    Text(
                      'Name : Omar Ali',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Age : 22 ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Contact me: omaratk8@gmail.com',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          )),
          Center(
            child: Column(
              children: [
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtvaJEgRXWeZo0jcSbsilK4DTBlYs7Gvr3hRrG_wXoqG8maN9rNj_jJb3hldaWp7PzDOE&usqp=CAU'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      decoration: InputDecoration(
                    labelText: 'Title :',
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Status :',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Price :',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Description :',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90),
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.black,
                    child: Text(
                      'Add Product',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget image(String url) {
    return Container(
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          color: Colors.black,
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.alibaba.com%2Fproduct-detail%2FMen-s-shirt-2014-spring-new_1779026822.html&psig=AOvVaw0pmmIpldV6lj8aZmsY8rCA&ust=1638024369375000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIickbqitvQCFQAAAAAdAAAAABAD'),
          Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.alibaba.com%2Fproduct-detail%2FMen-s-shirt-2014-spring-new_1779026822.html&psig=AOvVaw0pmmIpldV6lj8aZmsY8rCA&ust=1638024369375000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIickbqitvQCFQAAAAAdAAAAABAD'),
          Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.alibaba.com%2Fproduct-detail%2FMen-s-shirt-2014-spring-new_1779026822.html&psig=AOvVaw0pmmIpldV6lj8aZmsY8rCA&ust=1638024369375000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIickbqitvQCFQAAAAAdAAAAABAD'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Center(child: Text('ShopApp')),
            actions: [
              IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
          drawer: Drawer(
              child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Syed Awais'),
                accountEmail: Text('syed@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My account'),
                  leading: Icon(Icons.people),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_basket),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Categories'),
                  leading: Icon(Icons.dashboard),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help),
                ),
              ),
            ],
          )),
          body: ListView(
            children: [
              image_carousel
            ],
          )),
    );
  }
}

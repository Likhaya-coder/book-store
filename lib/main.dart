import 'package:book_store/utilities/new_books.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BookStore(),
  ));
}

class BookStore extends StatelessWidget {
  BookStore({Key? key}) : super(key: key);

  final List<String> popularBooks = [
    'images/img1.jpg',
    'images/img2.jpg',
    'images/img3.jpg',
    'images/img4.jpg',
    'images/img5.jpg',
  ];

  List<NewBooks> newBook = [
    NewBooks(
        image: 'images/new1.png',
        title: 'Look Closer',
        subtitle: 'Rachel Amphlett'),
    NewBooks(
        image: 'images/new2.png',
        title: 'Power House',
        subtitle: 'Kristine Lilly'),
    NewBooks(
        image: 'images/new3.png',
        title: 'Uncommon Sense',
        subtitle: 'Jill Harrington'),
    NewBooks(
        image: 'images/new4.png',
        title: 'Choose Change',
        subtitle: 'Angela M.Garvin'),
    NewBooks(
        image: 'images/new5.png',
        title: 'The Jungle Book',
        subtitle: 'Rudyard Kipling'),
    NewBooks(
        image: 'images/new6.png',
        title: 'Predictable Profits',
        subtitle: 'Brandon Roberts'),
    NewBooks(
        image: 'images/new7.png',
        title: 'Email Subject Lines',
        subtitle: 'Brantley Whitley'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  Row(
                    children: const [
                      Icon(Icons.search),
                      SizedBox(width: 20),
                      Icon(Icons.notifications_active),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Popular Books',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 180.0,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.8),
                itemCount: popularBooks.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Container(
                      height: 180.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(popularBooks[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    children: const [
                      Card(
                        color: Colors.orangeAccent,
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text('New'),
                        ),
                      ),
                      Card(
                        color: Colors.redAccent,
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text('Popular'),
                        ),
                      ),
                      Card(
                        color: Colors.lightBlue,
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text('Trending'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 340.0,
              child: ListView.builder(
                itemCount: newBook.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.grey.shade200,
                      child: ListTile(
                        trailing: const Icon(
                          Icons.star_purple500_sharp,
                          color: Colors.yellow,
                        ),
                        leading: Image(
                          image: AssetImage(newBook[index].image),
                          fit: BoxFit.cover,
                        ),
                        title: Text(newBook[index].title),
                        subtitle: Text(newBook[index].subtitle),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

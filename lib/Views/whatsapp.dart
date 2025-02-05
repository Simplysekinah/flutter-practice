import 'package:firstproject/Views/form.dart';
import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FormWidget(title: 'Welcome')));
              },
              icon: Icon(Icons.add)),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    'WA Business',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: TextFormField(
                            keyboardType: TextInputType.numberWithOptions(),
                            decoration: InputDecoration(
                                hintText: 'Search',
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, top: 3, right: 5, bottom: 3),
                              child: Container(
                                  height: 20,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black45),
                                  child: Text(
                                    'All',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 3, right: 5, bottom: 3),
                              child: Container(
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue),
                                  child: Text(
                                    'Unread',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, top: 3, right: 5, bottom: 3),
                              child: Container(
                                height: 20,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue),
                                child: Text(
                                  'Favourites',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                spacing: 15,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(500),
                                      child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQOmWaUAEICbwQ6IZFTNvszqzxitoRog0MQw&s'),
                                        width: 30,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Title(
                                          color: Colors.amber,
                                          child: Text('Sekinah')),
                                      Row(
                                        children: [
                                          Icon(Icons.mark_chat_read_outlined),
                                          Text('How are you?')
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                child: Icon(Icons.person_add_alt_1_rounded),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

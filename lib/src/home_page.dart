import 'package:flutter/material.dart';
import 'package:github_analysis/src/api.dart';
import 'package:github_analysis/src/custom_circleavatar.dart';
import 'package:github_analysis/src/request.dart';
import 'package:github_analysis/src/usuarios%20teste/usuarios.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(34, 39, 46, 1.0),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {
            
          },
        ),
        title: const Text(
          'GitHub Analysis',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {
              _showSearchField();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      _scrollController.animateTo(
                        _scrollController.offset - 100,
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      children: [
                        Container(
                          width: 100,
                          color: Colors.blue,
                          child: const Center(child: Text('Contato 1')),
                        ),
                        Container(
                          width: 100,
                          color: Colors.green,
                          child: const Center(child: Text('Contato 2')),
                        ),                        
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      _scrollController.animateTo(
                        _scrollController.offset + 100,
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: const Color.fromRGBO(28, 33, 40, 1),
                child: ListView(
                  children: [
                    for (User user in [currentUser, greg, james])
                      buildUserCard(user),
                    // Adicione mais cards conforme necessário
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  

  Widget buildUserCard(User user) {
  return Card(
    color: Colors.white,
    child: SizedBox(
      height: 200,
      width: double.infinity,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CustomCircleAvatar(
          size: 150,
          imageUrl: user.imageUrl,
        ),
        title: Container(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'ID: ${user.id}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


void _showSearchField() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Digite o nome de usuário'),
          content: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Nome de usuário',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Fecha o AlertDialog
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                _searchUser(_searchController.text);
                Navigator.pop(context); // Fecha o AlertDialog
              },
              child: Text('Buscar'),
            ),
          ],
        );
      },
    );
  }

  // Função para buscar o usuário com base no nome fornecido
  void _searchUser(String username) async {
    Api apiData = await request(username);
    print(apiData.login);
  }
}
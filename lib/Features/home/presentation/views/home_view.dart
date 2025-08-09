/*import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
   List<UserModel> users=[]; 
  @override
  void initState() {
    super.initState();
    BlocProvider.of<UsersCubit>(context).emitGetAllUsers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
  body: BlocBuilder<UsersCubit, UsersState>(
    builder: (context, state) {
      if (state is GetAllUsers) {
      users = state.users;
    final foundUser =  users.firstWhere(
     (u) => u.email == 'sos053@gmail.com',
      orElse: () => UserModel(
        id: 0,
        email: 'No email found',
        password: 'No password found',
        name: 'No name found',
        role: 'No role found',
        avatar: 'No avatar found',
        creationAt: DateTime.now().toString(),
        updatedAt: DateTime.now().toString(), 
      ),
    );
      return Container(
        height: 50,
        color: Colors.amber,
        child: Center(
          child: Text(
           foundUser.email!='No email found'?'${foundUser.id}': 'No email found',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }
     else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    }
  ),
      
    );
  }
}*/
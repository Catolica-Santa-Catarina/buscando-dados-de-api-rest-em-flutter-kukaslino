import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tempo_template/services/location.dart';
import 'package:http/http.dart' as http;
=======
>>>>>>> 4d15b131abd95141f794c7f7983a1c3e0ede6809

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
<<<<<<< HEAD

  Future<void> getLocation() async {
    Location location = Location();
    await location.getLocation();

    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    var url = Uri.parse('https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22');
    http.Response response = await http.get(url);

    if (response.statusCode == 200) { // se a requisição foi feita com sucesso
      var data = response.body;
      print(data);  // imprima o resultado
    } else {
      print(response.statusCode);  // senão, imprima o código de erro
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    getData();
=======
  @override
  Widget build(BuildContext context) {
>>>>>>> 4d15b131abd95141f794c7f7983a1c3e0ede6809
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // obtém a localização atual
          },
          child: const Text('Obter Localização'),
        ),
      ),
    );
  }
}

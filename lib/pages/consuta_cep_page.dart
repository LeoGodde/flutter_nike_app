import 'package:flutter/material.dart';
import 'package:nike_store/constants.dart';
import 'package:nike_store/models/address.dart';
import 'package:nike_store/services/cep_service.dart';

class ConsultaCepPage extends StatefulWidget {
  const ConsultaCepPage({super.key});

  @override
  State<ConsultaCepPage> createState() => _ConsultaCepPageState();
}

class _ConsultaCepPageState extends State<ConsultaCepPage> {
  String inputField = '';
  Address? response;

  Future getData() {
    return getAddress(inputField).then((value) {
      setState(() {
        response = value;
      });
    });
  }

  Widget showResponse(Address? response) {
    if (response == null) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(response.cep),
        Text(response.bairro),
        Text(response.logradouro),
        Text(response.uf),
        Text(response.localidade),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consulta CEP'),
      ),
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                setState(() => inputField = value);
              },
              onFieldSubmitted: (value) => getData(),
              maxLength: 8,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.location_on_outlined),
                suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.search,
                    ),
                    onPressed: () => getData()),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width, child: showResponse(response)),
          ],
        ),
      ),
    );
  }
}

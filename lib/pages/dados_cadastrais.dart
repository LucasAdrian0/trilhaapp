// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:trilhaapp/repositories/linguagens_repository.dart';
import 'package:trilhaapp/repositories/nivel_repository.dart';
import 'package:trilhaapp/shared/widget/text_label.dart';

class DadosCadastraisPage extends StatefulWidget {
  const DadosCadastraisPage({super.key});

  @override
  State<DadosCadastraisPage> createState() => _DadosCadastraisPageState();
}

class _DadosCadastraisPageState extends State<DadosCadastraisPage> {
  var nomeController = TextEditingController(text: "");
  var dataNascimentoController = TextEditingController(text: "");
  DateTime? dataNascimento;
  var nivelRepository = NivelRepository();
  var linguagensRepository = LinguagensRepository();
  var niveis = [];
  var linguagens = [];
  var nivelSelecionado = "";
  var linguagensSelecionadas = [];
  double salarioEscolhido = 0;
  int tempoExperiencia = 0;

  List<DropdownMenuItem<int>> returnItens(int quantidadeMaxima) {
    var itens = <DropdownMenuItem<int>>[];
    for (var i = 0; i < quantidadeMaxima; i++) {
      itens.add(DropdownMenuItem(
                  child: Text(i.toString()), 
                  value: i));
    }
    return itens;
  }

  @override
  void initState() {
    // TODO: implement initState
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meus dados")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: ListView(
          children: [
            TextLabel(texto: 'Nome'),
            TextField(controller: nomeController),
            TextLabel(texto: "Data de nascimento"),
            TextField(
              controller: dataNascimentoController,
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000, 1, 1),
                  lastDate: DateTime(2050, 12, 31),
                );
                if (data != null) {
                  dataNascimentoController.text = data.toString();
                  dataNascimento = data;
                } else {}
              },
            ),
            const TextLabel(texto: "Nivel de experiência"),
            Column(
              children: niveis
                  .map(
                    (nivel) => RadioListTile(
                      dense: true,
                      title: Text(nivel.toString()),
                      selected: nivelSelecionado == nivel,
                      value: nivel.toString(),
                      groupValue: nivelSelecionado,
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          nivelSelecionado = value.toString();
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
            TextLabel(texto: 'Linguagens preferidas'),
            Column(
              children: linguagens
                  .map(
                    (linguagem) => CheckboxListTile(
                      dense: true,
                      title: Text(linguagem),
                      value: linguagensSelecionadas.contains(linguagem),
                      onChanged: (bool? value) {
                        if (value!) {
                          setState(() {
                            linguagensSelecionadas.add(linguagem);
                          });
                        } else {
                          setState(() {
                            linguagensSelecionadas.remove(linguagem);
                          });
                        }
                      },
                    ),
                  )
                  .toList(),
            ),
            TextLabel(texto: "Tempo de experiencia"),
            DropdownButton(
              isExpanded: true,
              items: [returnItens(50)],
              onChanged: (value) {
                setState(() {
                  tempoExperiencia = int.parse(value.toString());
                });
              },
            ),
            TextLabel(
              texto:
                  "Pretenção salarial. R\$ ${salarioEscolhido.round().toString()}",
            ),
            Slider(
              min: 0,
              max: 10000,
              value: salarioEscolhido,
              onChanged: (double value) {
                setState(() {
                  salarioEscolhido = value;
                });
              },
            ),

            TextButton(
              onPressed: () {
                print(nomeController.text);
                print(
                  "${dataNascimento?.day}/${dataNascimento?.month}/${dataNascimento?.year}",
                );
              },

              child: Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}

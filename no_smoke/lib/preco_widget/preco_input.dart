import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrecoInput extends StatelessWidget {
  const PrecoInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red), // Borda vermelha
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.numberWithOptions(
            decimal: true), // Aceita números e ponto decimal
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}$')),
        ], // Permite até 2 casas decimais
        decoration: InputDecoration(
          labelText: 'Valor', // Rótulo do campo
          hintText: 'R\$ 0,00', // Dica dentro do campo
          prefixIcon: Icon(Icons.attach_money), // Ícone à esquerda do campo
          border: OutlineInputBorder(), // Borda ao redor do campo
        ),
      ),
    );
  }
}

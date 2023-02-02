import 'package:contador/src/helpers/helprs.dart';
import 'package:contador/src/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ZapatoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    cambiarStatusDark();
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(texto: 'For You'),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Hero(tag: 'zapato-1', child: ZapatoSizePreview(fullScrren: true)),
                  ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              )
            )
          ),
          AgregarCarritoBoton(monto: 180)
        ],
      ),
    );
  }
}

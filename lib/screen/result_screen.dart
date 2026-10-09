import 'package:empresa_ventas/models/models.dart';
import 'package:empresa_ventas/utils/constantes.dart';
import 'package:empresa_ventas/widget/custom_button.dart';
import 'package:empresa_ventas/widget/custom_container.dart';
import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget {

  final CompraModel modelo;

  const ResultScreen({super.key, required this.modelo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resultado")),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            CustomContainer(
            child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(labelProducto, style: TextStyle(fontSize: 20),), Text(modelo.nombreProducto, style: TextStyle(fontSize: 18),)],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(labelPrecioUnitario, style: TextStyle(fontSize: 20),), Text("\$${modelo.precioProducto}", style: TextStyle(fontSize: 18),)],
              ),SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(labelCantidad, style: TextStyle(fontSize: 20),), Text("${modelo.cantidadProducto}", style: TextStyle(fontSize: 18,),)],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey.shade300
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(labelSubtotal, style: TextStyle(fontSize: 20),), Text("\$${modelo.subtotal}", style: TextStyle(fontSize: 18),)],
              ),SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("$labelDescuento(${modelo.porcentajeDescuento}%)", style: TextStyle(fontSize: 20),), Text("-\$${modelo.descuento}", style: TextStyle(fontSize: 18,color: Colors.red),)],
              ),Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 1,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey.shade300
                ),
              ),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(labelTotal, style: TextStyle(fontSize: 20),), Text("\$${modelo.total}", style: TextStyle(fontSize: 22),)],
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        CustomButton(textoBoton: textButtonResultScreen, onPressed: () => Navigator.pop(context))
          ],
        )
      ),
    );
  }
}

import 'package:empresa_ventas/models/models.dart';
import 'package:empresa_ventas/screen/result_screen.dart';
import 'package:empresa_ventas/services/ventas_services.dart';
import 'package:empresa_ventas/utils/constantes.dart';
import 'package:empresa_ventas/widget/custom_button.dart';
import 'package:empresa_ventas/widget/custom_container.dart';
import 'package:empresa_ventas/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class VentasScreen extends StatefulWidget {
  const VentasScreen({super.key});

  @override
  State<VentasScreen> createState() => _VentasScreen();
}

class _VentasScreen extends State<VentasScreen> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController precioController = TextEditingController();
  TextEditingController cantidadController = TextEditingController();
  TextEditingController descuentoController = TextEditingController();

  @override
  void dispose() {
    nombreController.dispose();
    precioController.dispose();
    cantidadController.dispose();
    descuentoController.dispose();
    super.dispose(); // siempre al final
  }

  void calcularPrecio() {
    String nombre = nombreController.text;
    double precio = double.parse(precioController.text);
    int cantidad = int.parse(cantidadController.text);
    double descuento = double.parse(descuentoController.text);

    double subtotal = VentasServices.calcularSubtotal(precio, cantidad);
    double valorDescuento = VentasServices.calcularDescuento(
      subtotal,
      descuento,
    );
    double precioTotal = VentasServices.calcularTotal(subtotal, valorDescuento);

    CompraModel compraModel = CompraModel(
      nombreProducto: nombre,
      precioProducto: precio,
      cantidadProducto: cantidad,
      porcentajeDescuento: descuento,
      descuento: valorDescuento,
      subtotal: subtotal,
      total: precioTotal,
    );

    nombreController.clear();
    precioController.clear();
    cantidadController.clear();
    descuentoController.clear();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(modelo: compraModel),
      ),
    );

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ventas", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            CustomContainer(
              child: Column(
                children: [
                  CustomTextField(
                    placeholder: labelName,
                    controller: nombreController,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    placeholder: labelPrecio,
                    controller: precioController,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    placeholder: labelCantidad,
                    controller: cantidadController,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    placeholder: labelDescuento,
                    controller: descuentoController,
                  ),
                  SizedBox(height: 10),
                  CustomButton(
                    textoBoton: textButtonHomeScreen,
                    onPressed: calcularPrecio,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

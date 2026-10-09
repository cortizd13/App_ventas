class CompraModel {
  String nombreProducto;
  double precioProducto;
  int cantidadProducto;
  double porcentajeDescuento;
  double descuento;
  double subtotal;
  double total;

  CompraModel({
    required this.nombreProducto,
    required this.precioProducto,
    required this.cantidadProducto,
    required this.porcentajeDescuento,
    required this.descuento,
    required this.subtotal,
    required this.total,
  });
}

class VentasServices {
  static double calcularSubtotal(double precio, int cantidad) {
    return precio * cantidad;
  }

  static double calcularDescuento(double subTotal, double porcentaje) {
    return (subTotal * porcentaje) / 100;
  }

  static double calcularTotal(double subTotal, double descuento) {
    return subTotal - descuento;
  }
}

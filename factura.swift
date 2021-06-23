import Foundation

 class _factura {
  public var id_factura: Int = 0
  private var tarifa: Int = 0
  private var consumo_kwh: Int = 0
  
  init(id_factura_input: Int, tarifa_input:Int, consumo_kwh_input: Int) {
    self.id_factura = id_factura_input
    self.tarifa = tarifa_input
    self.consumo_kwh = consumo_kwh_input
  }
  func calc_costo(consumokwh: Int)->Int{
        return tarifa * self.consumo_kwh
  }
  func set_id_factura(id_factura_input: Int)->Void{
    self.id_factura = id_factura_input
  }
  func set_tarifa(tarifa_input: Int)->Void{
    self.tarifa = tarifa_input
  }
  func set_consumo(consumo_kwh_input: Int)->Void{
    self.consumo_kwh = consumo_kwh_input
  }
  func get_id_factura() -> Int{
  return self.id_factura
  }
  func get_String_id_factura() -> String{
  return String(self.id_factura)
  }
  func get_tarifa()->Int{
  return self.tarifa
  }
  func get_consumo_kwh()->Int{
  return self.consumo_kwh
  }
}
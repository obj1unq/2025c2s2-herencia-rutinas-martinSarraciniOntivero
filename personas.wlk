import herenciaRutinas.*

class Persona{
  var property peso = 0 
  method ejercitarRutina(rutina){
    self.validarPeso(rutina)
    peso -= rutina.caloriasBajadas(self.tiempo()) / self.kilosPorCalorias()
  }
  method pesoQuePierdeConRutina(rutina){
    self.validarPeso(rutina)
    return self.cuantoPesoPierdeConRutina(rutina)
  }
  method cuantoPesoPierdeConRutina(rutina){
    return (peso - (rutina.caloriasBajadas(self.tiempo()) / self.kilosPorCalorias())).truncate(3)
  }
  method pesoQuePierdeAtletaConRutina(rutina){
    self.validarPeso(rutina)
    return (peso - ((rutina.caloriasBajadas(self.tiempo()) / self.kilosPorCalorias())-1)).truncate(3)
  }
  method ejercitarAtletaCon(rutina){
    self.validarPeso(rutina)
    peso -= ((rutina.caloriasBajadas(self.tiempo()) / self.kilosPorCalorias()) -1)
  }
  method validarPeso(rutina)
  method tiempo()
  method kilosPorCalorias()
  method peso(){
    return peso.truncate(3)
  }

}

class PersonaSedentaria inherits Persona{
  var property tiempo = 0 
 override method tiempo(){
    return tiempo
  }
 override method kilosPorCalorias(){
      return 7000
  }

  override method validarPeso(rutina){
     if(peso < 50){
      self.error("no hace falta ejercitarse")
    }
  }
}

class PersonaAtleta inherits Persona{
 override method tiempo(){
    return 90
  }
 override method kilosPorCalorias(){
      return 8000
  }

  override method validarPeso(rutina){
     if(rutina.caloriasBajadas(self.tiempo()) < 10000){
      self.error("no hace falta ejercitarse")
    }
  }
}
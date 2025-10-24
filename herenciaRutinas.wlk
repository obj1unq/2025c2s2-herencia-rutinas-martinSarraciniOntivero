class Rutina{ 
    method caloriasBajadas(tiempo){
        return 100*(tiempo - self.descanso(tiempo)) * self.intensidad()
   }
method intensidad()
method descanso(tiempo)

}

class Running inherits Rutina {
    var property intensidad = 0  
   override method  descanso(tiempo){
    return if(tiempo > 20){
         5
    }else{
        2
    }
   }

    override method intensidad() { return intensidad }
}

class Maraton inherits Running{
     override method caloriasBajadas(tiempo){
        return super(tiempo) * 2
    }
    override method intensidad(){
      return 1.5
    }
}

class Remo inherits Rutina {
   override method descanso(tiempo){
     return tiempo /5
  }
   override method intensidad(){
     return  1.3 
  }
}

class RemoCompeticion inherits Remo{
  override method intensidad(){
    return 1.7
  }
  override method descanso(tiempo){
    return 2.max(tiempo/5 -3)
  }
}

class Persona{
  var property peso = 0 
  method ejercitarRutina(rutina){
    self.validarPeso()
    peso -= rutina.caloriasBajadas(self.tiempo()) / self.kilosPorCalorias()
  }
  method pesoQuePierdeConRutina(rutina){
    self.validarPeso()
    return self.cuantoPesoPierdeConRutina(rutina)
  }
  method cuantoPesoPierdeConRutina(rutina){
    return (peso - (rutina.caloriasBajadas(self.tiempo()) / self.kilosPorCalorias())).truncate(3)
  }
  method validarPeso()
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

  override method validarPeso(){
     if(peso < 50){
      self.error("no hace falta ejercitarse")
    }
  }
}

class PersonaAtleta{

}
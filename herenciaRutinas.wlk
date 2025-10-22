class Rutina{ 
    var property caloriasBajadas = 0
    method calcularCaloriasBajadas(tiempo){
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
    override method caloriasBajadas(){
        return super() * 2
    }
}

class Remo inherits Rutina {
   method descanso(tiempo){
     return tiempo /5
  }
   method intensidad(){
     return  1.3 
  }
}

class RemoCompeticion inherits Rutina{
  
}
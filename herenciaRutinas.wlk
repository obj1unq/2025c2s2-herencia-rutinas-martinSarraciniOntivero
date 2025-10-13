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
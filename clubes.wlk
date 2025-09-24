import personas.*
import herenciaRutinas.*

class Predio{
     const property rutinas
    method cantCaloriasQuemadasPor(persona){
        return rutinas.sum({rutina => persona.cuantoPesoPierdeConRutina(rutina)})
    }
    method rutinaMasExigentePara(persona){
        return rutinas.max({rutina => persona.cuantoPesoPierdeConRutina(rutina)})
    }
}//probar os truncate en los metodos de cuanto peso pierde con rutina

class Club {
  const property predios 
  method mejorPredioPara(persona){
    return predios.max({predio => predio.cantCaloriasQuemadasPor(persona)})
  }
  method prediosTranquisPara(persona){
    return predios.filter({predio => predio.cantCaloriasQuemadasPor(persona) < 500})
  }
method rutinasExigentesDePrediosPara(persona){
    //usar foreach si puedo y buscar herramienta que me sirva para resolverlo 
}
}


 

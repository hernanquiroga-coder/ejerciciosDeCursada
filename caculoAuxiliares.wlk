import guiaNum01.*
// Programación con Objetos 1
// Codigo auxiliar

object probemos {
    var cont = 1

    method incrementarContador() {
        cont = cont + 1
    }
    method contador() = cont
    method mensaje() =  
        if (cont > 1) 99 else 0
}
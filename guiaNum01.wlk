// Programación con Objetos 1
// Objeto, mensaje, método, variable

// EJ#01

    // object contador {
    //     var     valorActual = 0

    //     method  reset() {valorActual = 0}
    //     method  incremento() {valorActual = valorActual + 1}
    //     method  dec() {valorActual = 0.max(valorActual - 1)}
    //     method  valorActual() = valorActual
    //     method  valorActual(_nuevoValorActual) {valorActual = _nuevoValorActual
    //     }
    // }   

// EJ#02

    object contador {   
        var     valorActual = 0
        var     ultimoComando = 'reset'

        method  reset() {
            valorActual = 0
            ultimoComando = 'reset'
        }
        method  incremento() {
            valorActual = valorActual + 1
            ultimoComando = 'incremento'
        }
        method  dec() {
            valorActual = 0.max(valorActual - 1)
            ultimoComando = 'decremento'
        }
        method  valorActual() = valorActual
        method  valorActual(_nuevoValorActual) {
            valorActual = _nuevoValorActual
            ultimoComando = 'actualizacion'
        }
        method ultimoComando() = ultimoComando
    }   

// Ej#03

    // object pepita {
    //     var energia = 0     

    //     method comer(_gramos) {energia = energia + _gramos * 4}
    //     method volar(_km) {energia = energia - (1 * _km + pepita.costoDespegueAterrizaje())}
    //     method energia() = energia
    //     method costoDespegueAterrizaje() = 10
    // }

// Ej#04

    // object pepita {
    //     var energia = 0     
        
    //     method comer(_gramos) {energia = energia + _gramos * 4}
    //     method volar(_km) {energia = energia - (1 * _km + self.costoDespegueAterrizaje())}
    //     method energia() = energia
    //     method costoDespegueAterrizaje() = 10
    //     method estaDebil() = energia < 50
    //     method estaFeliz() = energia.between(500, 1000)
    //     method consumoBaseDeVuelo() = energia / 5
    //     method cuantoQuiereVolar() {
    //         if (energia.between(300, 400) && energia % 20 == 0) {
    //             return
    //                 self.consumoBaseDeVuelo() + 10 + 15
    //         }
    //         else if (energia.between(300, 400)) {
    //             return 
    //                 self.consumoBaseDeVuelo() + 10
    //         }
    //         else 
    //             {
    //                 self.consumoBaseDeVuelo()
    //             }
    //     }
    // }

// Ej#05

    object calculadora {
        var onDisplay = 0
        method cargar(_numero) {
            onDisplay = _numero
        }
        method sumar(_numero) {
            onDisplay = _numero + onDisplay
        }
        method restar(_numero) {
            onDisplay = onDisplay - _numero
        }
        method multiplicar(_numero) {
            onDisplay = _numero * onDisplay
        }
        method valorActual() = onDisplay
    }

// Ej#06

    // object teclado {
    //     var numero = ''
    //     method esNumeroValido() = 
    //         numero.size() == 5 || numero.size() == 7
    //     method agregarDigito(_digito) {
    //     numero = numero + _digito
    //     }
    //     method numeroIngresado() = numero
    //     method llamar() {
    //     if (self.esNumeroValido()) {
    //         numero = ''
    //         return 'Llamando al ' + numero
    //     } else {
    //         return 'Número inválido'
    //     }
    //     }
    // }

// Ej#07

    object teclado {
        var numero = ''
        var contador = 0
        method esNumeroValido() = 
            numero.size() == 5 || numero.size() == 7
        method agregarDigito(_digito) {
        numero = numero + _digito
        }
        method numeroIngresado() = numero
        method llamar() {
            if (self.esNumeroValido()) {
                contador = contador + 1
                numero = ''
                return 'Llamando al ' + numero
            } else {
                return 'Número inválido'
            }
        }
        method borrarUltimoDigito() {
            if (numero.size() > 0) {
                numero = numero.substring(0, numero.size() - 1)
            }
        }
        method cantLlamadas() = contador
    }
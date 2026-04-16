// Programación con Objetos 1
// Relaciones entre objetos, self y Polimorfismo

// Ej#01 - The incredible machine

    // object pelota {
    //     method caer() {linterna.encender()}
    // }

    // object linterna {
    //     method encender() {lupa.iluminar()}
    // }

    // object lupa {
    //     method iluminar() {vela.prender()}
    // }

    // object vela {
    //     var encendida = false
    //     method prender() {encendida = true}
    //     method encendida() = encendida
    // }

// Ej#02 - Pepita independiente

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
    //             return self.consumoBaseDeVuelo() + 10 + 15
    //         }
    //         else if (energia.between(300, 400)) {
    //             return self.consumoBaseDeVuelo() + 10
    //         }
    //         else {
    //             return self.consumoBaseDeVuelo()
    //         }
    //     }
    //     method haceLoQueQuieras() {
    //         if (self.estaDebil()) {
    //             self.comer(20)
    //         }
    //         if (self.estaFeliz()) {
    //             self.volar(self.cuantoQuiereVolar())
    //         }
    //     }
    // }

// Ej#03 - Calculadora avanzada

    object calculadora {
        var onDisplay = 0
        var onMemory = 0
        var buffer = 0

        method cargar(_numero) {
            buffer = onDisplay
            onDisplay = _numero
        }

        method sumar(_numero) {
            buffer = onDisplay
            onDisplay = _numero + onDisplay
        }

        method restar(_numero) {
            buffer = onDisplay
            onDisplay = onDisplay - _numero
        }

        method multiplicar(_numero) {
            buffer = onDisplay
            onDisplay = _numero * onDisplay
        }

        method valorActual() = onDisplay

        method cargarMemoria() {onMemory = self.valorActual()}
        method limpiarMemoria() {onMemory = 0}
        method memoria() {return onMemory}
        method sumarMemoria() {self.sumar(onMemory)}
        method restarMemoria() {self.restar(onMemory)}
        method multiplicarMemoria() {self.multiplicar(onMemory)}

        method deshacer() {
            onDisplay = buffer
        }
    }

// // Ej#04

//     object contador() {
//         var valorActual = 0
//         method reset() {valorActual = 0}
//         method inc() {valorActual = valorActual + 1}
//         method dec() {valorActual = 0.max(valorActual - 1)}
//         method valorActual() {return valorActual}
//         method valorActual(nuevoValorActual) {valorActual = nuevoValorActual}
//     }   

//     object pepe {
//         var record = 0
//         method jueguito() {contador.inc()}
//         method pique() {
//             if (contador.valorActual() > record) {record = contador.valorActual()}
//             contador.reset()
//         }
//         method acumulado() {return contador.valorActual()}
//         method record() {return record}
//     }

// // Ej#05

//         // Parte 01
        
//         object enterprise() {
//             var potencia =  50
//             var coraza = 5
//             method encontrarPilaAtomica() {potencia = (potencia + 25).min(100)}
//             method encontrarEscudo() {coraza = (coraza + 10).min(20)}
//             method recibirAtaque(puntosAtaque) {
//                 coraza = (coraza - puntosAtaque).max(0)
//                 resto = (puntosAtaque - coraza).max(0)
//                 potencia = (potencia - resto).max(0)
//             }
//             method potencia() {return potencia}
//             method coraza() {return coraza}
//             method fortalezaDefensiva() {return potencia + coraza}
//             method necesitaFortalecerse() {return coraza == 0 && potencia < 20}
//             method fortalezaOfensiva() {
//                 if (potencia < 20) {return 0}
//                 else {return (potencia - 20) / 2}
//             }
//             method seLaBanca() {return(not(self.necesitaFortalecerse()) && (self.fortalezaDefensiva() > 30))}
//             // method diaDeSuerte - Aca... ¿cómo hago, tengo que poder saber si tal objeto recibio esos dos mensajes alguna vez ... Creo que aca me marea lo de indica porque en realidad no es es un mensaje de consulta sino un mensaje de indicacion.

//             method diaDeSuerte() {
//                 self.encontrarEscudo()
//                 self.encontrarPilaAtomica()
//                 }
//             method recibirDobleAtaque(puntosAtaque1, puntosAtaque2) {
//                 self.recibirAtaque(puntosAtaque1)
//                 self.recibirAtaque(puntosAtaque2)
//             }
//         }

//         // Parte 02
        
//         object enterprise() {
//             var potencia =  50
//             var coraza = 5
//             // method encontrarPilaAtomica() {potencia = (potencia + 25).min(100)}
//             // method encontrarEscudo() {coraza = (coraza + 10).min(20)}
//             method recibirAtaque(puntosAtaque) {
//                 coraza = (coraza - puntosAtaque).max(0)
//                 resto = (puntosAtaque - coraza).max(0)
//                 potencia = (potencia - resto).max(0)
//             }
//             method potencia() {return potencia}
//             method coraza() {return coraza}
//             method fortalezaDefensiva() {return potencia + coraza}
//             method necesitaFortalecerse() {return coraza == 0 && potencia < 20}
//             method fortalezaOfensiva() {
//                 if (potencia < 20) {return 0}
//                 else {return (potencia - 20) / 2}
//             }
//             method seLaBanca() {return(not(self.necesitaFortalecerse()) && (self.fortalezaDefensiva() > 30))}
        
//             method diaDeSuerte() {
//                 self.encontrarEscudo()
//                 self.encontrarPilaAtomica()
//                 }
//             method recibirDobleAtaque(puntosAtaque1, puntosAtaque2) {
//                 self.recibirAtaque(puntosAtaque1)
//                 self.recibirAtaque(puntosAtaque2)
//             }
//             method encontrar(unaCosa) {
//                 if (unaCosa = pilaAtomica) {potencia = (potencia + 25).min(100)}
//                 if (unaCosa = escudo) {coraza = (coraza + 10).min(20)}
//                 if (unaCosa = khan) {self.recibirAtaque(50)}
//                 if (unaCosa = reinaBorg) {self.recibirDobleAtaque(30, 70)}
//             }
//         }

//     objet pilaAtomica() {
//         ...
//     }

//     objet escudo() {
//         ...
//     }

//     objet khan() {
//         ...
//     }

//     objet reinaBorg() {
//         ...
//     }

// // Ej#06

//     object pepita() {
//         var energia = 0
//         method comer(gramosComida) {energia = energia + gramosComida * 4}
//         method volar(kilometros) {energia = energia - 10 -  1 * kilometros}
//         method energia() {return energia}
//         method estaDebil() {return energia < 50}
//         method estaFeliz() {return energia > 50 && energia > 50}
//         method cuantoQuiereVolar() {
//             if ((energia > 300 && energia < 400) && (energia % 20 == 0)) {return (energia / 5 + 10 + 15)}
//             elseif ((energia > 300 && energia < 400)) {return (energia / 5 + 10)}
//             else {return (energia / 5 )}
//         }
//         method vacacionar(lugar) {energia += lugar.energiaRevitalizadora()}
//     }

//     object patagonia() {method energiaRevitalizadora() {return 30}}

//     object sierrasCordobesas() {method energiaRevitalizadora() {return 30}}

//     object marDelPlata() {
//         var temporadaAlta = true
//         method energiaRevitalizadora() {
//             if (temporadaAlta)  {return 80}
//             else                {return -20}
//         }
//     }

//     object noroeste() {
//         method energiaRevitalizadora() {return 0.1 * pepita.energia()}
//     }

// // Ej#07 - Entrenamiento

//     // Parte 1: Entrenamiento de Pepita

//     object roque() {
//         method entrenar() {
//             pepita.volar(10)
//             pepita.comer(300)
//             pepita.volar(5)
//             pepita.haceLoQueQuieras()
//         }
//     }

//     // Parte 2: Entrenamiento de otros pájaros

//     objet pepon {
//         var energia = 0
//         method comer(gramosComida) {energia = energia + gramosComida * 4 / 2}
//         method volar(kilometros) {energia = energia - 1 - 0.5 * kilometros}
//         method haceLoQueQuieras() {self.volar(1)}
//     }

//     objet pipa {
//         method kmsRecorridos() {...}
//         method caloriasIngeridas() {...}
//         method haceLoQueQuieras() { /* No hacer nada */ }
//     }

// // Ej#08 - Teclado Mejorado

    
//    // Parte 1: Diferenciar Llamadas

//     objeto telefono {
//         var llamadas = []    
//         var visor = ''

//         method cantLlamadasFijos() = llamadas.filter(call => call.esNumeroFijo()).size()
//         method cantLlamadasCelular() = llamadas.filter(call => call.esNumeroCelular()).size()

//         method llamar() {
//             if (self.esNumeroValido())
//                 llamadas.add(visor)
//                 // agregarLlamada(_llamada) {llamadas.add(_llamada)}
//                 visor = ''
//         }
//         method agregarDigito(digito) {visor = visor + digito}
//         method esNumeroValido() {return (size(visor) == 5 || size(visor) == 7 && visor.startsWith('15'))}
//         method borrarUltimoDigito {
//             if (visor == '') {visor = ''}
//             else {visor = visor.substring(0, size(numeroActual))}
//         }
//         method numeroIngresado() {return visor}
//         method esNumeroCelular() {return self.numeroIngresado().startsWith('15') && size(self.numeroIngresado()) == 7} 
//         method esNumeroFijo() {return size(self.numeroIngresado()) == 5} 
//     }


//     objeto rrhh() {
//         method precioCelular() {return 0.7}
//         method precioFijo() {return 0.45}
//     }
//     objeto estrellaFugaz() {
//         method precioCelular() {return 0.6}
//         method precioFijo() {return 0.5}
//     }

//    // Parte 2: Facturacion

//     // Partimos de la seccion anterior ...

//     objeto telefono {
//         var llamadas = [
//                         llamadaCasaMama, 
//                         llamadaPuestoRemoto, 
//                         ...
//                         ]   
//         // ¡Cuidado que ahora el objeto cambia!
//         var visor = ''
//         var tiempoACelulares = 0
//         var tiempoAFijos = 0
        
//         method agregarLlamada(_llamada) {
//             llamadas.add(_llamada)
//         }

//         method llamar(_tiempo) {
//             if (self.esNumeroValido())
//                 // self.agregarLlamada() -- aca me falta algo como un contructor de un objeto usando el parametro _tiempo ...
//                 visor = ''
//         }

//         method tiempoTotalCelulares() {
//             return 
//             llamadas.filter({llamada => (llamada.numero).esNumeroCelular()}).sum(i => i.duracion())
//         }

//         method tiempoTotalFijos() {
//             return 
//             llamadas.filter({llamada => (llamada.numero()).esNumeroFijo()}).sum(i => i.duracion())
//         }

//         // method cantLlamadasFijos() = llamadas.filter(call => call.esNumeroFijo()).size()
//         // method cantLlamadasCelular() = llamadas.filter(call => call.esNumeroCelular()).size()

//         method agregarDigito(digito) {visor = visor + digito}
//         method esNumeroValido() {return (size(visor) == 5 || size(visor) == 7 && visor.startsWith('15'))}
//         method borrarUltimoDigito {
//             if (visor == '') {visor = ''}
//             else {visor = visor.substring(0, size(numeroActual))}
//         }
//         method numeroIngresado() {return visor}
//         method esNumeroCelular() {return self.numeroIngresado().startsWith('15') && size(self.numeroIngresado()) == 7} 
//         method esNumeroFijo() {return size(self.numeroIngresado()) == 5} 
//         }

//     object llamadaCasaMama() {
//         method duracion = {200}
//         method numero = {'44445'}
//     }

//     object llamadaPuestoRemoto() {
//         method duracion = {5}
//         method numero = {'1544779'}
//     }

//     // Parte 3: Políticas de facturación por compañía
    
//     objeto rrhh() {
//         method precioCelular() {return 0.7}
//         method precioFijo() {return 0.45}
//         method bonificacion() {return 1000 * self.precioFijo()}
//     }
//     objeto estrellaFugaz() {
//         method precioCelular() {return 0.6}
//         method precioFijo() {return 0.5}
//         method bonificacion() {
//             beneficio = 0

//         }
//     }

//     // ... un poco lo dejo ... tengo bastantes dudas ...

// // Ej#09 - Silvestre, Tweety y Speedy González

//     object silvestre() {
//         var energia = 0
//         method velocidad() {return 5 + energía / 10}
//         method correr(_distancia) {energia -= 0.5 * _distancia * velocidad}
//         method comer(animal) {energia += animal.energiaAportada()}
//         method convieneComer(unPersonaje, unaDistancia) {
//             return  0.5 * unaDistancia * self. velocidad() < energiaAportada(unPersonaje)
//         }
//     }

//     object tweety() {
//         var pesoActual = 0
//         method peso(_gramos) {pesoActual = _gramos}
//         method pesoActual() {return pesoActual}
//         method energiaAportada() {return 12 + 1 * self.pesoActual()}
//     }

//     object speedyGonzalez() {
//         method energiaAportada() {return 100000}
//     }



// // Ej#10 - Cuentas Bancarias

//     object pepe {
//         var saldo = 0
//         method saldo() {return saldo}
//         method depositar(unaCantidadPesos) {saldo += unaCantidadPesos}
//         method extraer(unaCantidadPesos) {saldo -= unaCantidadPesos}
//     }
//     object julian {
//         var saldo = 0
//         method saldo() {return saldo}
//         method depositar(unaCantidadPesos) {saldo += unaCantidadPesos * 0.8}
//         method extraer(unaCantidadPesos) {
//             saldo -= unaCantidadPesos
//             saldo = saldo - 5.min(saldo)
//         }
//     }
//     object papa {
//         saldoDolares = 0
//         method saldo() {return saldoDolares * 14.70}
//         method depositar(unaCantidadDePesos) {saldoDolares += unaCantidadDePesos / 15.10}
//         method extraer(unaCantidadDePesos) {saldoDolares -= unaCantidadDePesos / 14.70}
//     }

//     object casaHermanos {
//         var compras = []
//         method esDerrochona() {return compras.sum({compra => compra}) > 5000}
//         method esBacana() {return pepe.saldo() + julian.saldo() > 40000}
//     }

//     object combinada {
//         var cuentaPrimaria
//         var cuentaSecundaria
//         method saldo() {return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()}
//         method depositar(unaCantidadDePesos) {
//             if (cuentaSecundaria.saldo() < 1000) {cuentaSecundaria.depositar(unaCantidadDePesos)}
//             else {cuentaPrimaria.depositar(unaCantidadDePesos)}
//         }
//         method extraer(unaCantidadDePesos) {
//             cuentaPrimaria.extraer(unaCantidadDePesos.max(cuentaPrimaria.saldo()))
//             cuentaSecundaria.extraer(...)       // seguir completando ... pero va queriendo
//         }
//     }

// // Ej#11 - El sueldo de Pepe
    
//     Parte 1: Sueldo
//     Parte 2: Situación sindical
//     Parte 3: Bono por presentismo

//     method pepe {
//         var esGerente = true
//         var neto = 0
//         var diasFalta = 0
//         method esGerente() {return esGerente}
//         method hayPresentismo() {return diasFalta = 0}
//         method cantFaltas() {return diasFalta}
//         method neto() {
//             if (self.esGerente()) {return 15000}
//             else {return 20000}
//         }
//         method sueldo(_sindicato, _bono) {
//             enMano = self.neto() - _sindicato.honorario(neto)
//             enMano += _bono.bonfificacion(self)
//         }
//     }

//     object porcentual {
//         method honorario(_sueldoBase) {
//             return 0.03 + _sueldoBase
//         }
//     }

//     object comprometido {
//         method honorario(_sueldoBase) {
//             return 0.01 + _sueldoBase + 1500
//         }
//     }

//     object noSindicalizado {
//         method honorario(_sueldoBase) {
//             return 0
//         }
//     }

//     object bonoNormal {
//         method bonificacion(_empleado) {
//             if (_empleado.cantFaltas() == 0) {return  2000}
//             if (_empleado.cantFaltas() == 1) {return  1000}
//             else {return 0}
                
//         }
//     }

//     object bonoEpocaAjuste {
//         method bonificacion(_empleado) {
//             if (_empleado.cantFaltas() == 0) {return  10}
//             else {return 0}
//         }
//     }

//     object demagogico {
//         method bonificacion(_empleado) {
//             if (_empleado.neto() < 18000) {500}
//             if (_empleado.neto() >= 18000) {350}
//         }
//     }

// // Ej#12 - Mensajeros de pelicula

//     object paquete {
//         var pago = 0
//         method puedeEntregar(_mensajero, _destino)
//     }

//     object brooklyn {
//         method puedeVenir(_mensajero) {return _mensajero.peso() < 1000}
//     }

//     object matrix {
//         method puedeVenir(_mensajero) {return _mensajero.puedeLlamar()}
//     }

//     object chukNorris {
//         method puedeLlamar() {return true}
//         method peso() {return 900}
//     }

//     object neo {
//         var dinero()
//         method puedeLlamar() {return false}
//         method peso() {return 0}

//     }

//     object lincolnHawk {
//         var vehiculo
//         var pesoPropio 
//         method vehiculo(_vehiculo) {vehiculo = _vehiculo}
//         method pesoPropio(_pesoMensajero) {pesoPropio = _pesoMensajero}
//         method puedeLlamar() {return false}
//         method peso() {return pesoPropio + vehiculo.peso()}

//     }

//     object bicicleta {
//         method peso() {return 10}
//     }

//     object camion {
//         var acoplados = 0
//         var pesoPropio = 500
//         method peso() {return pesoPropio + 500 * acoplados}

//     }

//     // Aclaración: Para el cálculo del peso, el peso del paquete es despreciable.
//     // Algunos casos de prueba:
//     // El paquete de George que no está pago no puede ser llevado por Neo a la matrix.
//     // El paquete de George que sí está pago puede ser llevado por Chuck a la matrix
//     // El paquete de George que sí está pago no puede ser llevado por Lincoln Hawk
//     // (80kg) a Brooklyn si es que utiliza un camión con un acoplado .
//     // La entrega anterior puede hacerse si Lincoln Hawk usa una bicicleta
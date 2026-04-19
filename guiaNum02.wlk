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
    // object calculadora {
    //     var onDisplay = 0
    //     var onMemory = 0
    //     var buffer = 0

    //     method cargar(_numero) {
    //         buffer = onDisplay
    //         onDisplay = _numero
    //     }

    //     method sumar(_numero) {
    //         buffer = onDisplay
    //         onDisplay = _numero + onDisplay
    //     }

    //     method restar(_numero) {
    //         buffer = onDisplay
    //         onDisplay = onDisplay - _numero
    //     }

    //     method multiplicar(_numero) {
    //         buffer = onDisplay
    //         onDisplay = _numero * onDisplay
    //     }

    //     method valorActual() = onDisplay

    //     method cargarMemoria() {onMemory = self.valorActual()}
    //     method limpiarMemoria() {onMemory = 0}
    //     method memoria() {return onMemory}
    //     method sumarMemoria() {self.sumar(onMemory)}
    //     method restarMemoria() {self.restar(onMemory)}
    //     method multiplicarMemoria() {self.multiplicar(onMemory)}

    //     method deshacer() {
    //         onDisplay = buffer
    //     }
    // }

// // Ej#04 - Juieguitos

    // object pepe {
    //     var record = 0
    //     method jueguito() {contador.inc()}
    //     method pique() {
    //         if (contador.valorActual() > record) {record = contador.valorActual()}
    //         contador.reset()
    //     }
    //     method acumulado() = contador.valorActual()
    //     method record() = record
    // }

    // object contador {
    //     var valorActual = 0
    //     method reset() {valorActual = 0}
    //     method inc() {valorActual = valorActual + 1}
    //     method dec() {valorActual = 0.max(valorActual - 1)}
    //     method valorActual() {return valorActual}
    //     method valorActual(nuevoValorActual) {valorActual = nuevoValorActual}
    // }   

// Ej#05: Agregados al Enterprise

    // object enterprise {
    //     var potencia = 50
    //     var coraza = 5

    //     var seEncontroConPila = false
    //     var seEncontroConEscudo = false

    //     method recibirAtaque(_puntosFuerzaAtaque) {
    //         if (_puntosFuerzaAtaque > coraza) {
    //             potencia = (potencia - (_puntosFuerzaAtaque - coraza)).max(0)
    //             coraza = 0
    //         }
    //         else {
    //             coraza = coraza - _puntosFuerzaAtaque
    //         }
    //     }

    //     method aumentarPotenciaEn(_aumentoPotencia) {
    //         potencia = potencia + _aumentoPotencia
    //     }

    //     method aumentarCorazaEn(_aumentoCoraza) {
    //         coraza = coraza + _aumentoCoraza
    //     }

    //     method potencia() = potencia
    //     method coraza() = coraza


    //     method fortalezaDefensiva() = coraza + potencia
    //     method necesitaFortalecerse() = coraza == 0 && potencia < 20
    //     method fortalezaOfensiva() {
    //         if (potencia < 20) {
    //             return 0
    //         }
    //         else {
    //             return (potencia - 20) / 2 
    //         }
    //     }

    //     method seLaBanca() = 
    //         not self.necesitaFortalecerse() && self.fortalezaDefensiva() > 30
    
    //     method diaDeSuerte() = seEncontroConPila && seEncontroConEscudo

    //     method recibirDobleAtaque(puntosAtaque1, puntosAtaque2) {
    //         self.recibirAtaque(puntosAtaque1)
    //         self.recibirAtaque(puntosAtaque2)
    //     }

    //     // method encontrarPilaAtomica() {
    //     //     potencia += 25
    //     //     seEncontroConPila = true
    //     // }

    //     // method encontrarEscudo() {
    //     //     coraza += 10
    //     //     seEncontroConEscudo = true
    //     // }

    //     method encontrar(_unaCosa) {    
    //         self.aumentarPotenciaEn(_unaCosa.bonusPotencia())
    //         self.aumentarCorazaEn(_unaCosa.bonusCoraza())
    //         _unaCosa.atacar(self)
    //     }
    // }

    // object pilaAtomica {
    //     method bonusPotencia() = 25
    //     method bonusCoraza() = 0
    //     method atacar(_objetivo) { /* no hace nada */ }
    // }
    // object escudo {
    //     method bonusPotencia() = 0
    //     method bonusCoraza() = 10
    //     method atacar(_objetivo) { /* no hace nada */ }
    // }
    // object khan {
    //     method bonusPotencia() = 0
    //     method bonusCoraza() = 0
    //     method atacar(_objetivo) {_objetivo.recibirAtaque(50) }
    // }
    // object reinaBorg {
    //     method bonusPotencia() = 25
    //     method bonusCoraza() = 0
    //     method atacar(_objetivo) { 
    //         _objetivo.recibirDobleAtaque(30, 70) 
    //         }
    // }

// // Ej#06 - Pepita turista

    // object pepita {
    //     var energia = 100   
        
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

    //     method vacacionar(_destino) {
    //         energia += _destino.energiaRevitalizadora()
    //     }

    //     method haceLoQueQuieras() {
    //         self.comer(1000)
    //     }
    // }

    // object patagonia {
    //     method energiaRevitalizadora() = 30
    //     }

    // object sierrasCordobesas {
    //     method energiaRevitalizadora() = 70
    //     }

    // object marDelPlata {
    //     var temporadaBaja = true
    //     // method energiaRevitalizadora() {
    //     //     if (temporadaBaja)  {return 80}
    //     //     else                {return -20}
    //     // }
    //     method energiaRevitalizadora() = if (temporadaBaja) 80 else -20
    //     method cambiarAAlta() {temporadaBaja = false}
    //     method cambiarABaja() {temporadaBaja = true}
    // }

    // object noroeste {
    //     method energiaRevitalizadora() = 
    //         0.1 * pepita.energia()
    // }

// Ej#07 - Entrenamiento

    // Parte 1: Entrenamiento de Pepita

    // object roque {
    //     method entrenar() {
    //         pepita.volar(10)
    //         pepita.comer(300)
    //         pepita.volar(5)
    //         pepita.haceLoQueQuieras()
    //     }
    //     method entrenar(_pajaro) {
    //         _pajaro.volar(10)
    //         _pajaro.comer(300)
    //         _pajaro.volar(5)
    //         _pajaro.haceLoQueQuieras()
    //     }
    // }

    // // Parte 2: Entrenamiento de otros pájaros

    // object pepon {
    //     var energia = 0
    //     method comer(_gramos) {energia = energia + _gramos * 4 / 2}
    //     method volar(_km) {energia = energia - 1 - 0.5 * _km}
    //     method haceLoQueQuieras() {self.volar(1)}
    // }

    // object pipa {
    //     var kmsRecorridos = 120
    //     var caloriasIngeridas = 50
    //     method kmsRecorridos() = kmsRecorridos
    //     method caloriasIngeridas() = caloriasIngeridas
    //     method aumentarCalorias(_cantAumentar) {caloriasIngeridas += _cantAumentar}
    //     method volar(_km) {kmsRecorridos += _km}
    //     method haceLoQueQuieras() { /* No hacer nada */ }
    //     method comer(_gramos) {self.aumentarCalorias(0.1 * _gramos)}
    // }

// Ej#08 - Teclado Mejorado

   // Parte 1: Diferenciar Llamadas

    object telefono {
        var numero = ''
        var contador = 0
        var cantLlamadasCelulares = 0
        var cantLlamadasFijo = 0
        var tiempoTotalACelulares = 0
        var tiempoTotalAFijos = 0
        var empresa = rrhh

        method cambiarEmpresa(_nuevaEmpresa) {empresa = _nuevaEmpresa}

        method esNumeroValido()     = numero.size() == 5 || numero.size() == 7
        method esNumeroCelular()    = self.esNumeroValido() && numero.size() == 7
        method esNumeroFijo()       = self.esNumeroValido() && numero.size() == 5
        method agregarDigito(_digito) {numero = numero + _digito}
        method numeroIngresado() = numero
        method borrarUltimoDigito() {
            if (numero.size() > 0) {
                numero = numero.substring(0, numero.size() - 1)
            }
        }
        method cantLlamadas() = contador
        method cantLlamadasFijos() = cantLlamadasFijo
        method cantLlamadasCelulares() = cantLlamadasCelulares
        method llamar(_minutos) {
            if (self.esNumeroValido()) {
                contador = contador + 1
                if (self.esNumeroFijo()) {
                    cantLlamadasFijo = cantLlamadasFijo + 1
                    tiempoTotalAFijos += _minutos
                }
                else {
                    cantLlamadasCelulares = cantLlamadasCelulares + 1
                    tiempoTotalACelulares += _minutos
                }
                return 'Llamando al ' + numero
            } 
            else {
                return 'Número inválido'
            }
            numero = ''
        }
        method tiempoTotalACelulares() = tiempoTotalACelulares        
        method tiempoTotalAFijos() = 
            tiempoTotalAFijos - empresa.bonificacionEnTiempo()
        
        method totalFacturacion() = 
            tiempoTotalACelulares * empresa.precioACelulares() * empresa.bonificacionEnPorcentajeACelulares(self)
            + 
            tiempoTotalAFijos * empresa.precioAFijos() * empresa.bonificacionEnPorcentajeAFijos(self)

        method bonificacionFijosEnSeg(_segundos) = _segundos / 60 
    }

    // Parte 2: Facturacion
    // Parte 3: Políticas de facturación por compañía

        object rrhh {
            method precioACelulares() = 0.7
            method precioAFijos() = 0.45
            method bonificacionEnTiempo() = 1000 / 60       // devolvemos minutos
            method bonificacionEnPorcentajeAFijos(_cliente) = 1
            method bonificacionEnPorcentajeACelulares(_cliente) = 1
            }
           
        object estrellaFugaz {
            method precioACelulares() = 0.6
            method precioAFijos() = 0.5 
            method bonificacionEnTiempo() = 0
            method bonificacionEnPorcentajeAFijos(_cliente) {
                if (_cliente.tiempoTotalAFijos() > 1500) {
                    return 0.9
                }
                else {return 1}     // Esto es obligatorio por sintaxis

            }
            method bonificacionEnPorcentajeACelulares(_cliente) {
                if (_cliente.cantLlamadasCelulares() > 120) {
                    return 0.85
                }
                else {return 1}
            }
        }

// Ej#09 - Silvestre, Tweety y Speedy González

    // object silvestre {
    //     var energia = 100
    //     method velocidad() =  5 + energia / 10
    //     method correr(_distancia) {energia -= self.energiaGastadaAlCorrer(_distancia)}
    //     method comer(_animal) {energia += self.energiaAportadaAlComer(_animal)}
    //     method energiaAportadaAlComer(_animal) = 12 + _animal.energiaAPortada()
    //     method energiaGastadaAlCorrer(_distancia) = 0.5 * _distancia * self.velocidad()
    //     method convieneComer(_unAnimal, _unaDistancia) =
    //         self.energiaAportadaAlComer(_unAnimal) > 
    //         self.energiaGastadaAlCorrer(_unaDistancia)
    // }
    // object tweety {
    //     var peso = 0
    //     method aumentarPeso(_aumento) {peso += _aumento}
    //     method peso(_nuevoPeso) {peso = _nuevoPeso}
    //     method peso() = peso
    //     method energiaAportada() =  12 + 1 * self.peso()
    // }

    // object speedyGonzalez {
    //     method energiaAportada() = 100000
    // }

// Ej#10 - Cuentas Bancarias

    // object cuentaPepe {
    //     var    saldo = 0
    //     method saldo() = saldo
    //     method depositar(_cantPesos) {saldo += _cantPesos}
    //     method extraer(_cantPesos) {saldo -= _cantPesos.max(0)}
    //     method tieneSaldo() = saldo > 0
    // }
    // object cuentaJulian {
    //     var    saldo = 0
    //     method tieneSaldo() = saldo > 0
    //     method saldo() = saldo
    //     method depositar(_cantPesos) {saldo += _cantPesos * 0.8}
    //     method extraer(_cantPesos) {
    //         if (self.tieneSaldo()) {
    //             saldo -= _cantPesos
    //             saldo = saldo - 5.min(saldo)
    //         }
    //     }
    // }
    // object cuentaPapa {
    //     var saldoDolares = 0
    //     // const saldo = saldoDolares * self.precioDeCompra()

    //     var precioDeVenta = 15.10
    //     var precioDeCompra = 14.70

    //     method nuevoPrecioDeVenta(_nuevoPrecio) {precioDeVenta = _nuevoPrecio}
    //     method nuevoPrecioDeCompra(_nuevoPrecio) {precioDeCompra = _nuevoPrecio}
        
    //     method precioDeVenta() = precioDeVenta
    //     method precioDeCompra() = precioDeCompra

    //     method tieneSaldo() = self.saldo() > 0
    //     method saldo() = saldoDolares * self.precioDeCompra()
    //     method depositar(_cantPesos) {saldoDolares += _cantPesos / precioDeVenta}
    //     method extraer(_cantPesos) {
    //         if (self.tieneSaldo())
    //          saldoDolares -= _cantPesos / precioDeCompra
    //     }
    // }

    // object casaHermanos {
    //     const sumaDeTotasLasCompras   = 1000
    //     var cuentaPrincipal         = cuentaPepe
    //     method nuevaCuentaPrincipal(_unaCuenta) {
    //       cuentaPrincipal = _unaCuenta
    //     }
    //     method esDerrochona()   = sumaDeTotasLasCompras > 5000
    //     method esBacana()       = cuentaPrincipal.saldo() > 40000
    // }

    // object combinada {
    //     var cuentaPrimaria = cuentaPepe
    //     var cuentaSecundaria = cuentaJulian

    //     var residual = 0

    //     method saldo() = cuentaPrimaria.saldo() + cuentaSecundaria.saldo()

    //     method nuevaCuentaPrimaria(_nuevaCuentaPrimaria)    {cuentaPrimaria = _nuevaCuentaPrimaria}
    //     method nuevaCuentaSecundaria(_nuevaCuentaSecundaria)  {cuentaSecundaria = _nuevaCuentaSecundaria}

    //     method depositar(_cantPesos) {
    //         if (cuentaSecundaria.saldo() < 1000) {cuentaSecundaria.depositar(_cantPesos)}
    //         else {cuentaPrimaria.depositar(_cantPesos)}
    //     }
    //     method extraer(_cantPesos) {
    //         if (self.saldo() > _cantPesos)
    //             residual = (_cantPesos - cuentaPrimaria.saldo()).max(0)
    //             cuentaPrimaria.extraer(_cantPesos)
    //             cuentaSecundaria.extraer(residual)
    //     }
    // }

// Ej#11 - El sueldo de Pepe
    
    // Parte 1: Sueldo
    // Parte 2: Situación sindical
    // Parte 3: Bono por presentismo

    object pepe {
        var esGerente = false
        var faltas = 0
        var sindicato = porcentual

        method sindicato(_nuevoSindicato) {sindicato = _nuevoSindicato}
        method esGerente() = esGerente
        method hayPresentismo() = faltas == 0
        method cantFaltas() = faltas
        method faltarUnDia() {faltas += 1}
        method neto() = if (self.esGerente()) 15000 else 20000
        // method sueldo() = self.neto()        
        method sueldo() = self.neto() - sindicato.honorario(self.neto())
        method sueldo(_sindicato, _bono) =
            self.neto() - _sindicato.honorario(self.neto()) +_bono.bonificacion(self)
        method promover() {esGerente = true}
    }

    object porcentual {
        method honorario(_neto) =  0.03 * _neto
    }

    object comprometido {
        method honorario(_neto) = 0.01 + _neto + 1500
    }

    object noSindicalizado {
        method honorario(_neto) = 0
    }

    object bonoNormal {
        method bonificacion(_empleado) {
            if (_empleado.cantFaltas() == 0) {return  2000}
            else if (_empleado.cantFaltas() == 1) {return  1000}
            else {return 0}
                
        }
    }

    object bonoEpocaAjuste {
        method bonificacion(_empleado) {
            if (_empleado.cantFaltas() == 0) {return  10}
            else {return 0}
        }
    }

    object demagogico {
        method bonificacion(_empleado) = if (_empleado.neto() < 18000) 500 else 350
    }

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
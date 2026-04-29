// Programación con Objetos 1
// Referencias

// Ej#01 - Entrenamiento de Pepita y otros (continuación)

    // LOS ENTRENADORES
    
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

        // object susana {
        //     var aveEntrenada = pepita
        //     method entrenar() {
        //         aveEntrenada.comer(100)
        //         aveEntrenada.volar(20)
        //     }
        //     method aveEntrenada() = aveEntrenada
        //     method aveEntrenada(_nuevaAve) {aveEntrenada = _nuevaAve}
        // }

    // LOS PAJAROS
        
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
    
    // LUGARES DONDE VACACIONA PEPITA

        // object patagonia {
        //     method energiaRevitalizadora() = 30
        // }
        // object sierrasCordobesas {
        //     method energiaRevitalizadora() = 70
        // }
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
    
// Ej#02 - Cuentas bancarias (continuación)

    // object cuentaPepe {
    //     var    saldo = 1000
    //     method saldo() = saldo
    //     method depositar(_cantPesos) {saldo += _cantPesos}
    //     method extraer(_cantPesos) {saldo -= _cantPesos.max(0)}
    //     method tieneSaldo() = saldo > 0
    // }
    // object cuentaJulian {
    //     var    saldo = 2000
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
    //     var saldoDolares = 700
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
    //     var ultimaCosaQueSeCompro   = heladera
    //     method nuevaCuentaPrincipal(_unaCuenta) {cuentaPrincipal = _unaCuenta}
    //     method esDerrochona()   = sumaDeTotasLasCompras > 5000
    //     method esBacana()       = cuentaPrincipal.saldo() > 40000
    //     method gastar(_importeEnPeso) {cuentaPrincipal.extraer(_importeEnPeso)}
    //     method comprar(_unaCosa) {
    //         self.gastar(_unaCosa.precio())
    //         ultimaCosaQueSeCompro = _unaCosa
    //         }
    //     method tieneComida() {
    //         // ... aca viene algo con listas / conjuntos
    //     }
    //     method puedeComprar(_unaCosa) = cuentaPrincipal.saldo() > _unaCosa.precio()
    //     method cuentaParaGastos() = cuentaPrincipal
    //     method vieneDeEquiparse() = 
    //         ultimaCosaQueSeCompro.esElectro() || ultimaCosaQueSeCompro.precio() < 5000    
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

    // object heladera {
    //     method precio()         = 20000
    //     method esComida()       = false
    //     method esElectro()      = true
    // }
    // object cama {
    //     method precio()         = 8000
    //     method esComida()       = false
    //     method esElectro()      = false
    // }
    // object asado {
    //     method precio()         = 350
    //     method esComida()       = true
    //     method esElectro()      = false
    // }
    // object fideos {
    //     method precio()         = 50
    //     method esComida()       = true
    //     method esElectro()      = false
    // }
    // object plancha {
    //     method precio()         = 1200
    //     method esComida()       = false
    //     method esElectro()      = true
    // }

// Ej#03 - El sueldo de pepe (continuacion)


    // Parte 1: Sueldo
    // Parte 2: Situación sindical
    // Parte 3: Bono por presentismo

    object pepe {
        var esGerente = true
        var faltas = 1
        var sindicato = comprometrido
        var bono = bonoNormal

        method sindicato(_nuevoSindicato) {sindicato = _nuevoSindicato}
        method esGerente() = esGerente
        method hayPresentismo() = faltas == 0
        method cantFaltas() = faltas
        method faltarUnDia() {faltas += 1}
        method neto() = if (self.esGerente()) 15000 else 20000
        method sueldo() = self.neto() - sindicato.honorario(self.neto()) + bono.bonificacion(self)
        method promover() {esGerente = true}
    }

    // MAS TRABAJADORES

    object roque {
        method sueldoFijo() = 28000
        var sindicato = comprometido
        method sindicato(_nuevoSindicato) {sindicato = _nuevoSindicato}
        method sueldo() = self.neto() + sindicato.honorario(self.neto()) 
        method neto() = self.sueldoFijo() + 9500
    }

    object ernesto {    
        var sindicato = comprometido
        var companiero = roque
        var faltas = 1
        var bono = bonoNormal
        method hayPresentismo() = faltas == 0
        method companiero(_nuevoCompa) {companiero = _nuevoCompa}
        method sindicato(_nuevoSindicato) {sindicato = _nuevoSindicato}
        method sueldo() = self.neto() + bono.bonificacion(self)
        method neto() = companiero.neto()


    }
    
    // SITUACION SINDICAL

        object porcentual {
            method honorario(_neto) =  0.03 * _neto
        }
        object comprometido {
            method honorario(_neto) = 0.01 + _neto + 1500
        }
        object noSindicalizado {
            method honorario(_neto) = 0
        }

    // LOS BONOS 

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

// Ej#04 - Tuberias

    object tramoRectoLargo {
        var velocidadEntrada = 10
        var siguienteTramo = codo
        method siguiente() = siguienteTramo
        method siguiente(_elTramoQueSigue) {siguienteTramo = _elTramoQueSigue}
        method velocidadEntrada(_unaVelocidad) {velocidadEntrada = _unaVelocidad}
        method esSiguienteTramo(_unTramo) {siguienteTramo = _unTramo}
        method longitud() = 200
        method longitudMaximaHastaElFinal() = self.longitud() 
            + self.siguiente().longitudMaximaHastaElFinal()
        method velocidadMaximaDeSalida(_velocidadInput) = _velocidadInput
    }
    object tramoRectoCorto {
        var velocidadEntrada = 10 
        var siguienteTramo = codo
        method siguiente() = siguienteTramo
        method siguiente(_elTramoQueSigue) {siguienteTramo = _elTramoQueSigue}
        
        method velocidadEntrada(_unaVelocidad) {velocidadEntrada = _unaVelocidad}
        method velocidadMaximaDeSalida(_velocidadInput) = _velocidadInput
        method longitud() = 40
        method longitudMaximaHastaElFinal() = self.longitud() + 
            self.siguiente().longitudMaximaHastaElFinal()
    }
    object codo {
        // var velocidadEntrada = 10 
        // method velocidadEntrada(_unaVelocidad) {velocidadEntrada = _unaVelocidad}
        method velocidadMaximaDeSalida(_velocidadEntrada) = _velocidadEntrada - 20
        var siguienteTramo = tramoDeSubida
        method siguiente(_elTramoQueSigue) {siguienteTramo = _elTramoQueSigue}
        method siguiente() = siguienteTramo
        method longitud() = 70
        method longitudMaximaHastaElFinal() = self.longitud() + 
            self.siguiente().longitudMaximaHastaElFinal()
    }
    object bifucarcionY {
        // var velocidadEntradaIzquierda = 10
        // var velocidadEntradaDerecha = 10

        var siguienteTramoIzquierdo = tramoRectoCorto
        var siguienteTramoDerecho   = tramoRectoLargo

        method siguienteIzquierda()   = siguienteTramoIzquierdo
        method siguienteDerecha()     = siguienteTramoDerecho
        
        // method velocidadDeEntradaIzq(_unaVelocidad) {velocidadEntradaIzquierda = _unaVelocidad}
        // method velocidadDeEntradaDer(_unaVelocidad) {velocidadEntradaDerecha = _unaVelocidad}
        
        method velocidadMaximaDeSalida(_velocidadEntrada) = 
            self.siguienteDerecha().velocidadMaximaDeSalida(_velocidadEntrada).
                max(self.siguienteIzquierda().velocidadMaximaDeSalida(_velocidadEntrada))

        method esSiguienteTramoIzq(_unTramo) {siguienteTramoIzquierdo = _unTramo}
        method esSiguienteTramoDer(_unTramo) {siguienteTramoDerecho = _unTramo}
        method longitud() = 50
        method longitudMaximaHastaElFinal() = 
            self.longitud() + 
            self.siguienteIzquierda().longitudMaximaHastaElFinal().max(self.siguienteDerecha().longitudMaximaHastaElFinal()) 
    }
    object tramoDeSubida {
        // var velocidadEntrada = 10
        var siguienteTramo = tramoRectoCorto
        // method velocidadEntrada(_unaVelocidad) {velocidadEntrada = _unaVelocidad}
        method velocidadMaximaDeSalida(_velocidadEntrada) = _velocidadEntrada / 2
        method esSiguienteTramo(_unTramo) {siguienteTramo = _unTramo}
        method siguiente() = siguienteTramo
        method longitud() = 100
        method longitudMaximaHastaElFinal() = self.longitud() + 
            self.siguiente().longitudMaximaHastaElFinal()
    }
    object tramoDeBajada {
        var velocidadEntrada = 10
        var siguienteTramo = tope
        method velocidadEntrada(_unaVelocidad) {velocidadEntrada = _unaVelocidad}
        method velocidadMaximaDeSalida(velocidadInput) {return velocidadInput * 2}
        method esSiguienteTramo(_unTramo) {siguienteTramo = _unTramo}
        method siguiente() = siguienteTramo
        method longitud() = 200
        method longitudMaximaHastaElFinal() = self.longitud() + 
            self.siguiente().longitudMaximaHastaElFinal()
    }
    object tope {
        // var velocidadEntrada = 10
        // method velocidadEntrada(_unaVelocidad) {velocidadEntrada = _unaVelocidad}
        method velocidadMaximaDeSalida(_velocidadEntrada) = 0
        method longitud() = 0
        method longitudMaximaHastaElFinal() = 0
    }
    object canilla {
        // var velocidadEntrada = 0
        // method velocidadEntrada(_unaVelocidad) {velocidadEntrada = _unaVelocidad}
        method velocidadMaximaDeSalida(_velocidadEntrada) = _velocidadEntrada - 5
        method longitud() = 10
        method longitudMaximaHastaElFinal() = 0
    }

// // Ej#05 - Juego con personajes


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

    object cuentaPepe {
        var    saldo = 1000
        method saldo() = saldo
        method depositar(_cantPesos) {saldo += _cantPesos}
        method extraer(_cantPesos) {saldo -= _cantPesos.max(0)}
        method tieneSaldo() = saldo > 0
    }
    object cuentaJulian {
        var    saldo = 2000
        method tieneSaldo() = saldo > 0
        method saldo() = saldo
        method depositar(_cantPesos) {saldo += _cantPesos * 0.8}
        method extraer(_cantPesos) {
            if (self.tieneSaldo()) {
                saldo -= _cantPesos
                saldo = saldo - 5.min(saldo)
            }
        }
    }
    object cuentaPapa {
        var saldoDolares = 700
        // const saldo = saldoDolares * self.precioDeCompra()

        var precioDeVenta = 15.10
        var precioDeCompra = 14.70

        method nuevoPrecioDeVenta(_nuevoPrecio) {precioDeVenta = _nuevoPrecio}
        method nuevoPrecioDeCompra(_nuevoPrecio) {precioDeCompra = _nuevoPrecio}
        
        method precioDeVenta() = precioDeVenta
        method precioDeCompra() = precioDeCompra

        method tieneSaldo() = self.saldo() > 0
        method saldo() = saldoDolares * self.precioDeCompra()
        method depositar(_cantPesos) {saldoDolares += _cantPesos / precioDeVenta}
        method extraer(_cantPesos) {
            if (self.tieneSaldo())
             saldoDolares -= _cantPesos / precioDeCompra
        }
    }
    object casaHermanos {
        const sumaDeTotasLasCompras   = 1000
        var cuentaPrincipal         = cuentaPepe
        var ultimaCosaQueSeCompro   = heladera
        method nuevaCuentaPrincipal(_unaCuenta) {
          cuentaPrincipal = _unaCuenta
        }
        method esDerrochona()   = sumaDeTotasLasCompras > 5000
        method esBacana()       = cuentaPrincipal.saldo() > 40000

        method gastar(_importeEnPeso) {cuentaPrincipal.extraer(_importeEnPeso)}
        method comprar(_unaCosa) {
            self.gastar(_unaCosa.precio())
            ultimaCosaQueSeCompro = _unaCosa
            }
        method tieneComida() {
            // ... aca viene algo con listas / conjuntos
        }
        method puedeComprar(_unaCosa) = cuentaPrincipal.saldo() > _unaCosa.precio()
        method cuentaParaGastos() = cuentaPrincipal
    }
    object combinada {
        var cuentaPrimaria = cuentaPepe
        var cuentaSecundaria = cuentaJulian

        var residual = 0

        method saldo() = cuentaPrimaria.saldo() + cuentaSecundaria.saldo()

        method nuevaCuentaPrimaria(_nuevaCuentaPrimaria)    {cuentaPrimaria = _nuevaCuentaPrimaria}
        method nuevaCuentaSecundaria(_nuevaCuentaSecundaria)  {cuentaSecundaria = _nuevaCuentaSecundaria}

        method depositar(_cantPesos) {
            if (cuentaSecundaria.saldo() < 1000) {cuentaSecundaria.depositar(_cantPesos)}
            else {cuentaPrimaria.depositar(_cantPesos)}
        }
        method extraer(_cantPesos) {
            if (self.saldo() > _cantPesos)
                residual = (_cantPesos - cuentaPrimaria.saldo()).max(0)
                cuentaPrimaria.extraer(_cantPesos)
                cuentaSecundaria.extraer(residual)
        }
    }

    object heladera {
        method precio()         = 20000
        method esComida()       = false
        method esElectro()      = true
    }

    object cama {
        method precio()         = 8000
        method esComida()       = false
        method esElectro()      = false
    }

    object asado {
        method precio()         = 350
        method esComida()       = true
        method esElectro()      = false
    }

    object fideos {
        method precio()         = 50
        method esComida()       = true
        method esElectro()      = false
    }

    object plancha {
        method precio()         = 1200
        method esComida()       = false
        method esElectro()      = true
    }

//     // Parte 1: Agregar las cosas que se compran
//         object pepe {
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

//     object combinada {
//         var cuentaPrimaria
//         var cuentaSecundaria
//         method cuentaPrimariaEs(_unaCuenta) {cuentaPrimaria = _unaCuenta}
//         method cuentaSecundariaEs(_unaCuenta) {cuentaSecundaria = _unaCuenta}
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

//     object casaHermanos {
//         // var     saldo = 0
//         var     compras = []
//         var     cuentaGastos 
        
//         method  cuentaParaGastosEs(_unaCuenta) {return cuentaGastos = _unaCuenta}
//         method  saldo() {return cuentaGastos.saldo()}
        
//         method  esDerrochona() {return compras.sum({compra => compra}) > 5000}
//         method  esBacana() {return pepe.saldo() + julian.saldo() > 40000}
        
//         method  gastar(_importe) {cuentaParaGastos.extraer(_importe)}
//         method comprar(_cosa) {
//             compras.add(_cosa)
//             self.gastar(_cosa.precio())
//         }

//         method tieneComida() {
//             // hay algun elementos en compras que le resulte verdadera 
//             // la proposicion elemento.esComida()
//                             }

//         method vieneDeEquiparse() {
//             return 
//                 // _ultimo_elemento_comprado.esElectro()       ||
//                 // _ultimo_elemento_comprado.precio() > 5000 
//         }

//         method puedeComprar(_cosa) {return _cosa.precio() < self.saldo()}

//         method cuentaParaGastos() {return cuentaGastos}
//     }



//     Parte 2: Jugamos con los objetos construidos
//     Levantar un REPL nuevito, y hacer lo siguiente    

//     1. Depositar 8000 pesos en la cuenta de Pepe, 15000 en la de Julián, y 45300 (que
//     equivalen a 3000 dólares) en la del padre.

//         pepe.depositar(8000)
//         julian.depositar(15000)
//         papa.depositar(45300)

//     2. Asignar como cuenta primaria y secundaria de la cuenta combinada, las cuentas
//     de Pepe y de Julián respectivamente.

//         combinada.cuentaPrimariaEs(pepe)
//         combinada.cuentaPrimariaEs(julian)
        
//     3. Congurar la casa de Pepe y Julián para que use la cuenta combinada.

//         casaHermanos.cuentaParaGastosEs(combinada)

//     4. Hacer que la casa compre, en este orden, la plancha y la cama.

//         casaHermanos.comprar(plancha)
//         casaHermanos.comprar(cama)

//     5. Dibujar el grafo de referencias entre objetos a esta altura. Incluir todos los objetos
//     denidos, incluso los que quedan sueltos en el grafo.

//         // Dibujar

//     6. Calcular cuánto debería ser el saldo de la cuenta combinada después de todo esto,
//     y vericar que el saldo es el calculado.

//         // combinada.saldo()   y   comparar ... o algo por el estilo pide este ejercicio.
//         // ¿Aca hay testing?

//     7. Preguntarle a la casa si viene de equiparse, y si puede comprar la heladera, ¾qué
//     responde? ¾Podés explicar por qué?

//         casaHermanos.vieneDeEquiparse()
//         casaHermanos.puedeComprar(heladera)
    
//     OJO! como en el ejercicio anterior, te pedimos no cerrar el REPL, vamos a seguir
//     usándolo en la parte que sigue.

// // Ej#03 - El sueldo de pepe (continuacion)

//     method pepe {
//         var esGerente = true
//         var diasFalta = 1
//         var sindicato 
//         var bono

//         method conBonificacion(_tipoDeBono) {bono = _tipoDeBono}
//         method esDelSindicato(_agrupacionSindical) {sindicato = _agrupacionSindical}

//         method esGerente()          {return esGerente}
//         method hayPresentismo()     {return diasFalta == 0}
//         method cantFaltas()         {return diasFalta}
//         method neto() {
//             if (self.esGerente()) {return 15000}
//             else {return 20000}
//         }
//         method sueldo() {
//             enMano = self.neto() - sindicato.honorario(self.neto())
//             enMano += bono.bonfificacion()
//             return enMano
//         }
//     }

//     method roque {
//         var esGerente = false
//         var diasFalta = 999
//         var sindicato 

//         method esDelSindicato(_agrupacionSindical) {sindicato = _agrupacionSindical}
        
//         method esGerente() {return esGerente}
//         method hayPresentismo() {return diasFalta == 0}
//         method cantFaltas() {return diasFalta}
//         method neto() {return 28000}
//         method sueldo() {
//             enMano = self.neto() - sindicato.honorario(self.neto())
//             enMano += 9500
//             return enMano
//         }
//     }

//     method ernesto {
//         var diasFalta = 0
//         var companiero 
//         var bono

//         // Setter
//         method conBonificacion(_tipoDeBono) {bono = _tipoDeBono}
//         method esCompañeroDe(_unCompañero) {companiero = _unCompañero}
        
//         method hayPresentismo() {return diasFalta == 0}
//         method cantFaltas() {return diasFalta}
//         method neto() {return companiero.neto()}
//         method sueldo() {
//             return self.neto() + bonificacion(companiero)
//         }
//     }

//     object porcentual {
//         method honorario(_sueldoBase) {return 0.03 + _sueldoBase}
//     }

//     object comprometido {
//         method honorario(_sueldoBase) {
//             return 0.01 * _sueldoBase + 1500
//         }
//     }

//     object noSindicalizado {
//         method honorario(_sueldoBase) {return 0}
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
//             if (_empleado.neto() < 18000)   {return 500}
//             if (_empleado.neto() >= 18000)  {return 350}
//         }
//     }

//     // Parte 1: Armamos una conguración

//     pepe.neto()
//     pepe.sueldo(comprometido, bonoNormal)

//     * Levantar un REPL nuevito, congurar a Pepe para que sea gerente, tenga descuento
//         por sindicato como comprometido, y bono por presentismo normal. Hacer que falte
//         una vez.
//     * Dibujar el grafo de referencias entre objetos como quedó.
//     * Calcular el sueldo que debería tener Pepe, preguntar, ver que dio lo que se esperaba.
//     * Después, hacer un test Wollok que pruebe esto, el assert es sobre el sueldo.

//     // Parte 2: Más gente

//     Agregar al mismo modelo a las siguientes personas
//     Roque, que tiene 28000 jo de neto. El sueldo se calcula como neto - descuento
//     por sindicato + 9500 pesos. Para los descuentos por sindicato, se usan las mismas
//     opciones que para Pepe.
//     Ernesto, que trabaja junto con un compañero, que puede cambiar. El neto de
//     Ernesto es igual al de su compañero. Su sueldo se calcula como neto + bono por
//     presentismo. Para los bonos, usar las mismas opciones que para Pepe. Se sabe que
//     Ernesto no falta nunca.

//     // pepe
//     // roque.esDelSindicato(comprometido)
//     // ernesto.esCompañeroDe(pepe)
//     // ernesto.conBonificacion(bonoEpocaAjuste)

    
//     Después de agregar estos objetos, armar un test Wollok en el que Pepe esté congurado
//     como en el test anterior, Roque tenga descuento por sindicato como comprometido,
//     Ernesto tenga como compañero a Pepe, y como bono el de época de ajuste. El assert
//     sobre este test son los sueldos de Roque y de Ernesto.
//     Dibujar el grafo de referencias entre objetos. Marcar los objetos que intervienen en el
//     cálculo del sueldo de Ernesto.
    
// // Ej#04 - Tuberias

//     object tramoRectoLargo {
//         var velocidadEntrada 
//         var siguienteTramo
//         method esVelocidadDeEntrada(_unaVelocidad) {velocidad = _unaVelocidad}
//         method esSiguienteTramo(_unTramo) {siguienteTramo = _unTramo}
//         method siguiente() {return siguienteTramo}
//         method siguienteTramo() {return siguienteTramo}
//         method longitud() {return 200}
//         method longitudMaximaHastaElFinal() {
//             return self.longitud() + self.siguiente().longitudMaximaHastaElFinal()
//         }
//         method velocidadMaximaDeSalida(velocidadInput) {return velocidadInput}
//     }

//     object tramoRectoCorto {
//         var velocidadEntrada 
//         method esVelocidadDeEntrada(_unaVelocidad) {velocidad = _unaVelocidad}
//         method velocidadMaximaDeSalida(velocidadInput) {return velocidadInput}
//         var siguienteTramo
//         method esSiguienteTramo(_unTramo) {siguienteTramo = _unTramo}
//         method siguiente() {return siguienteTrammo}
//         method longitud() {return 40}
//         method longitudMaximaHastaElFinal() {
//             return self.longitud() + self.siguiente().longitudMaximaHastaElFinal()
//         }
//     }

//     object codo {
//         var velocidadEntrada 
//         method esVelocidadDeEntrada(_unaVelocidad) {velocidad = _unaVelocidad}
//         method velocidadMaximaDeSalida(velocidadInput) {return velocidadInput - 20}
//         var siguienteTramo
//         method esSiguienteTramo(_unTramo) {siguienteTramo = _unTramo}
//         method siguiente() {return siguienteTrammo}
//         method longitud() {return 70}
//         method longitudMaximaHastaElFinal() {
//             return self.longitud() + self.siguiente().longitudMaximaHastaElFinal()
//         }
//     }

//     object bifucarcionY {
//         var velocidadEntradaIzquierda
//         var velocidadEntradaDerecna

//         // setters
//         method esVelocidadDeEntradaIzq(_unaVelocidad) {velocidadEntradaIzquierda = _unaVelocidad}
//         method esVelocidadDeEntradaDer(_unaVelocidad) {velocidadEntradaDerecna = _unaVelocidad}
        
//         var velocidadElegida = velocidadEntradaIzquierda.max(velocidadEntradaDerecna)
//         method velocidadMaximaDeSalida(velocidadElegida) {return velocidadInput}
//         var siguienteTramoIzquierdo
//         var siguienteTramoDerecho

//         method esSiguienteTramoIzq(_unTramo) {siguienteTramoIzquierdo = _unTramo}
//         method esSiguienteTramoDer(_unTramo) {siguienteTramoDerecho = _unTramo}

//         method siguienteIzquierda() {return siguienteTramoIzquierdo}
//         method siguienteDerecha()   {return siguienteTramoDerecho}

//         method longitud() {return 50}
//         method longitudMaximaHastaElFinal() {
//             return self.longitud() + 
//                 self.siguienteIzquierda().longitudMaximaHastaElFinal().
//                     max(self.siguienteDerecha().longitudMaximaHastaElFinal())
//             }
//     }

//     object tramoDeSubida {
//         var velocidadEntrada 
//         method esVelocidadDeEntrada(_unaVelocidad) {velocidad = _unaVelocidad}
//         method velocidadMaximaDeSalida(velocidadInput) {return velocidadInput * 2}
//         var siguienteTramo
//         method esSiguienteTramo(_unTramo) {siguienteTramo = _unTramo}
//         method siguiente() {return siguienteTrammo}
//         method longitud() {return 100}
//         method longitudMaximaHastaElFinal() {
//             return self.longitud() + self.siguiente().longitudMaximaHastaElFinal()
//         }
//     }

//     object tramoDeBajada {
//         var velocidadEntrada 
//         method esVelocidadDeEntrada(_unaVelocidad) {velocidad = _unaVelocidad}
//         method velocidadMaximaDeSalida(velocidadInput) {return velocidadInput * 2}
//         var siguienteTramo
//         method esSiguienteTramo(_unTramo) {siguienteTramo = _unTramo}
//         method siguiente() {return siguienteTrammo}
//         method longitud() {return 200}
//         method longitudMaximaHastaElFinal() {
//             return self.longitud() + self.siguiente().longitudMaximaHastaElFinal()
//             }
//     }

//     object tope {
//         var velocidadEntrada 
//         method esVelocidadDeEntrada(_unaVelocidad) {velocidad = _unaVelocidad}
//         method velocidadMaximaDeSalida(velocidadInput) {return 0}
//         var velocidadEntrada 
//         method esVelocidadDeEntrada(_unaVelocidad) {velocidad = _unaVelocidad}
//         method velocidadMaximaDeSalida(velocidadInput) {return velocidadInput - 20}
//         method longitud() {return 0}
//         method longitudMaximaHastaElFinal() {return 0}
//     }

//     object canilla {
//         var velocidadEntrada 
//         method esVelocidadDeEntrada(_unaVelocidad) {velocidad = _unaVelocidad}
//         method velocidadMaximaDeSalida(velocidadInput) {return velocidadInput - 5}
//         method longitud() {return 10}
//         method longitudMaximaHastaElFinal() {return 0}
//     }

// // Ej#05 - Juego con personajes


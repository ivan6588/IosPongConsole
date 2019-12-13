//
//  main.swift
//  test
//
//  Created by Ivan Hernandez on 12/13/19.
//  Copyright © 2019 Ivan Hernandez. All rights reserved.
//

import Foundation

class Torneo {
    init(Id: Int?, NoJugadores: Int?, Fecha: String?, IdGanador:String?) {
        self.Id = Id
        self.NoJugadores = NoJugadores
        self.Fecha = Fecha
        self.IdGanador = IdGanador
    }
    
    var Id:Int?
    var NoJugadores:Int?
    var Fecha:String?
    var IdGanador:String?
    
   
}


class Partida {
        init(NoRonda: Int?, NoJugVisitante: Int?, NoJugLocal: Int?, noJugGanador: Int?, PuntosLocal: Int?, PuntosVisitante: Int?, IdTorneo: Int?, IdPartido: Int?, NoPartida: Int?) {
        self.NoRonda = NoRonda
        self.NoJugVisitante = NoJugVisitante
        self.NoJugLocal = NoJugLocal
        self.noJugGanador = noJugGanador
        self.PuntosLocal = PuntosLocal
        self.PuntosVisitante = PuntosVisitante
        self.IdTorneo = IdTorneo
        self.IdPartido = IdPartido
        self.NoPartida = NoPartida
    }
    
    var NoRonda:Int?
    var NoJugVisitante:Int?
    var NoJugLocal:Int?
    var noJugGanador:Int?
    var PuntosLocal:Int?
    var PuntosVisitante:Int?
    var IdTorneo:Int?
    var IdPartido:Int?
    var NoPartida:Int?
}

class Participante {
        init(Id: Int?, Nombre: String?, JuegosGanadosTotal: String?, JuegosPerdidosTotal: String?, TorneosGanados: String?) {
        self.Id = Id
        self.Nombre = Nombre
        self.JuegosGanadosTotal = JuegosGanadosTotal
        self.JuegosPerdidosTotal = JuegosPerdidosTotal
        self.TorneosGanados = TorneosGanados
    }
    
    var Id:Int?
    var Nombre:String?
    var JuegosGanadosTotal:String?
    var JuegosPerdidosTotal:String?
    var TorneosGanados:String?
}

class Jugador {
        init(IdJugador: Int?, IdParticipante: Int?, NickName: String?, Victorias: Int?, Derrotas: Int?, IdTorneo: Int?, Puntos: Int?, NumeroJugador: Int?) {
        self.IdJugador = IdJugador
        self.IdParticipante = IdParticipante
        self.NickName = NickName
        self.Victorias = Victorias
        self.Derrotas = Derrotas
        self.IdTorneo = IdTorneo
        self.Puntos = Puntos
        self.NumeroJugador = NumeroJugador
    }
    
    var IdJugador:Int?
    var IdParticipante:Int?
    var NickName:String?
    var Victorias:Int?
    var Derrotas:Int?
    var IdTorneo:Int?
    var Puntos:Int?
    var NumeroJugador:Int?

}

func CrearTorneo() -> Torneo{
    print ("-------Crear Torneo--------")
    
    var torneo : Torneo = Torneo(Id: 1, NoJugadores: 5, Fecha: "13/12/19", IdGanador: "")
    
    return torneo
    
}

func CrearJugadores(){
    
    
}

func Opcion()->Int{
    print(" Preciona el numero para elejir ")
    print("1.- Crear Torneo ")
    var a = readLine()
    print("Lo que pones es: \(a!) ")
    return Int(a!) ?? 0
}

var torneo: Torneo?

 var a = Opcion()

    switch a {
    case 1:
      torneo = CrearTorneo()
        break
    default:
        print("Elija la opcion correcta")
        break
    }

print("Se creo el Torneo numero : \((torneo?.Id)!)")
print("De \((torneo?.NoJugadores)!) Jugadores")
print("Con la Fecha \((torneo?.Fecha)!)")

CrearJugadores()


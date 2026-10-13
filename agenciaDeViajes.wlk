// Por el momento, ofrecen dos tipos de packs: **nacionales** e **internacionales**.

class Packs { 
    method valorFinal()
    method duracion()
    method destino() 
    method coordinadorACargo()
}

// en los packs nacionales nos interesa saber la provincia destino, una lista de actividades incluídas. Cada actividad se representará con su nombre en formato de texto.

class PacksNacionales inherits Packs {
    var precioBase = 20000
    method precioBase() = precioBase
    override method duracion() = 2
    override method destino() = "jujuy"
    override method coordinadorACargo() = "juan"
    const actividades = ["","","",""]
    method actividades() = actividades
    override method valorFinal() = precioBase + BeneficiosEspeciales.costo()
}

// en los packs internacionales queremos también conocer el país de destino, la cantidad de escalas que se harán para llegar y si es un lugar de interés o no. 

class PacksInternacionales inherits Packs {
    var precioBase = 50000
    override method duracion() = 5
    override method destino() = "España"
    override method coordinadorACargo() = "lucas"
    const escalas = ["brasil","estados unidos"]
    method escalas() = escalas
    method esLugarDeInteres() = true
    override method valorFinal() = (precioBase + BeneficiosEspeciales.costo())* 0.2
}

// De cada coordinador nos interesa saber la cantidad de viajes realizados, si está motivado o no, los años de experiencia y su rol

class Coordinador {
    method cantidadDeViajesRealizados() 
    method estaMotivado() = true
    method aniosDeExperiencia()
    var rol = "guia"
    method cambiarRol(nuevoRol) = nuevoRol
    method coordinadorCalificado()
}

// Cada coordinador puede cambiar de rol si la agencia lo solicita. En caso de que se quiera asignar un rol que no es uno de estos, el programa debe lanzar una excepción.

class BeneficiosEspeciales {
    method tipo() 
    method costo()
    method estaVigente() = true
}

class TrasladosPrivados inherits BeneficiosEspeciales {
    override method tipo() = "traslado"
    override method costo() = 2000
}

class AccesoSalasVIP inherits BeneficiosEspeciales {
    override method tipo() = "entretenimiento"
    override method costo() = 9000
    override method estaVigente() = false
}

class SegurosAdicionales inherits BeneficiosEspeciales {
    override method tipo() = "seguridad"
    override method costo() = 13000
    override method estaVigente() = false
}

// El valor final del pack se calcula a partir de su **precio base**. Luego se **suman los costos** de los beneficios vigentes. Si el pack es **internacional**, se aplica un **recargo del 20%** sobre el total final.

class PackPremiumNacional inherits Packs {

}

class PackPremiumInternacional inherits Packs {

}

class PacksProvinciales inherits PacksNacionales {

}

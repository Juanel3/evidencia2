//
//  Question.swift
//  evidencia2
//
//  Created by Juan Miguel Flores on 12/04/24.
//

import Foundation


struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", turtle = "🐢", rabbit = "🐰"
    
    var definition: String {
        
            switch self {
            case .dog:
    return "Tienes una personalidad increíblemente extrovertida. Te rodeas de personas que quieres y disfrutas de las actividades con tus amigos."
            case .cat:
    return "Te encanta hacer travesuras, pero tienes temperamento suave, te gusta hacer las cosas a tu manera."
            case .rabbit:
    return "Te encanta todo lo que sea suave. Estás saludable y tienes mucha energía."
            case .turtle:
    return "Tu sabiduría supera la edad que tienes y te centras en los detalles. De forma lenta y constante ganarás la carrera."
            }
    }

}

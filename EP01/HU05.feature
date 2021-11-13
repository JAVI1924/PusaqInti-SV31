Feature: HU05: Como ciudadano quiero visualizar una lista de asesores para poder separar un horario disponible. 
    Scenario: E01: Ingreso a la app para buscar asesores 
        CA01:
        Given que me encuentro app. 
        When me encuentro en la sección de lista de asesores.
        Then debo visualizar los especialistas que están disponible para programar la reunión virtual.
        Examples:  
            | usuario | password | menú principal                                                         |
            | Fernando| 123awe   | Visualizar lista de asesores - Especialista disponible para la reunión |
    Scenario: E02: Asesores no disponibles 
        CA02:
        Given que me autentifique en la app 
        When me encuentro en la sección de lista de asesores y no encuentro ninguno disponible.
        Then me muestra un mensaje que me informa del próximo horario disponible más cercano.
        Examples:
            | usuario| password | menú principal                                                                                | 
            | Yoss   | 121feq   | Visualizar lista de asesores -  Visualizar mensaje "el proximo horario disponible mas cercano"|   
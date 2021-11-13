Feature: HU04: Como ciudadano quiero ver el perfil del asesor al que quiero contactar para poder elegir al experto en seguridad de acuerdo con mis necesidades. 
    Scenario: E01: Busco perfiles de asesores para encontrar a un especialista en prevención de robos 
        CA01:
        Given que me encuentro app. 
        When ingreso y busco el perfil de mi asesor para ver su información 
        Then debo observar la experiencia laboral del especialista en prevención de robos. 
        Examples:
            | usuario| password | menú principal                                   |
            | Abel   | 31231q   | Obserar la experiencia laboral del especialista  |
    Scenario: E02: El asesor no registró ninguna información en su perfil. 
        CA02:
        Given que me encuentro app. 
        When busco el perfil de mi asesor para ver su información y no hay ninguna 
        Then me aparece un mensaje que dice que el asesor no colocó ninguna información. 
        Examples:
            | usuario| password | menú principal                                                                    |
            | Javier | 34405a   | Visualizar perfil del asesor - Visualizar mensaje "no coloco ninguna información" |
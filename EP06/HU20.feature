Feature: HU20: Como usuario quiero observar un catálogo de rutas seguras a cualquier hora del día para prevenir casos de robos.
    Scenario: E01: Visualizó un catálogo de rutas
        TA01
        
        Given que me encuentro en la sección de catálogo
        When ingreso un destino correcto, presiono en el botón de visualizar el catálogo de zonas seguras 
        And el sistema logra encontrar rutas seguras para mi ubicación y destino
        Then visualizo sugerencias de rutas seguras en el catálogo.

        Examples:
            | Ubicación | Destino |
            | Plaza Norte | Aeropuerto Jorge Chávez |

    Scenario: E02: No visualizó la ruta que deseo en el catálogo
        TA02
        
        Given que me encuentro en la sección de catálogo
        When ingreso un destino muy cercano
        And presiono en el botón de visualizar el catálogo de zonas seguras
        Then no visualizo una ruta segura para la zona de mi destino.

        Examples:
            | Ubicación               | Destino                 | Mensaje |
            | Aeropuerto Jorge Chávez | Aeropuerto Jorge Chávez | El destino debe estar más lejos  |

        TA03
        
        Given que me encuentro en la sección de catálogo
        When ingreso un destino sin información en el sistema
        And presiono en el botón de visualizar el catálogo de zonas seguras 
        Then no visualizo una ruta segura para la zona de mi destino.

        Examples:
            | Ubicación               | Destino                                          | Mensaje |
            | Aeropuerto Jorge Chávez | Plaza San Miguel (sin información en el sistema) | No tenemos información de esta zona, inténtelo más tarde |
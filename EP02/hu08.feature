Feature: HU08: Como ciudadano quiero visualizar la opción de asignar puntos en los reportes para 
               que las personas continúen informando las incidencias peligrosas. 
    Scenario: E01: Visualizar si un punto es de incidencia peligrosa
        TA01:
        Given  quiero saber si la zona es peligrosa
        When observe el punto reportado
        Then  obtendré información de dicha zona y estaré más seguro.
        Examples:
          | usuario | password | menú principal                    |
          | sv31    | sv31     | "App-vizualizar-incidencias"  |
        
        Scenario: E02: Opción de asignar puntos en los reportes
        TA02:
        Given existen reportes en la app
        When los usuarios nos brinden información  
        Then  el usuario visualizará la opción de asignación de puntos de reportes
        Examples:
          | usuario | password | menú principal                    |
          | sv31    | sv31     |  "App-vizualizar-incidencias_asignar puntos"  |

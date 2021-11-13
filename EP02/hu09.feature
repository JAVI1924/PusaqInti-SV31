Feature: HU09: Asignación de puntos a los usuarios.
    Scenario: E01:Asignar puntos a los usuarios que reportan.
        TA01:
        Given  que tenemos información de puntos peligrosos.
        When el usuario reporta una peligrosa zona
        Then  los agentes asignan puntos a los usuarios
        Examples:
          | usuario | password | menú principal                    |
          | sv31    | sv31     | "App-vizualizar-incidencias"      |
        
        Scenario: E02: Cantidad de puntos hacia los usuarios que reportan.
        TA02:
        Given el usuario cumpla con el reporte.
        When el agente quiera darle puntos 
        Then  exisitira relación con los puntos con la cantidad de reportes que obtengan
        Examples:
          | usuario | password | menú principal                                |
          | sv31    | sv31     |  "App-vizualizar-incidencias_asignar puntos"  |
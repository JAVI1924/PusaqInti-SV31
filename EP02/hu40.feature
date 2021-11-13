Feature: HU40: Como usuario quiero visualizar el tipo de reporte que generan mayor cantidad de puntos para
               desarrollar reportes similares en la app. 
    Scenario: E01: Visualizar al usuario con mayor puntaje.
        TA01:
        Given que he iniciado sesión en la app.
        When me encuentro en la opción de mostrar al usuario con mayor puntaje.
        Then   me muestra el nickname de la persona.
        Examples:
          | usuario | password | menú principal                    |
          | sv31    | sv31     | "App-vizualizar-incidencias"  |
        
        Scenario: E02: Observar el reporte de que genera mayor 
        TA02:
        Given que me encuentro en el perfil del usuario con mayor puntaje
        When doy clic en la opción de visualizar el reporte con mayor puntaje 
        Then  visualizo el reporte que obtuvo más puntos.
        Examples:
          | usuario | password | menú principal                    |
          | sv31    | sv31     |  "App-vizualizar-incidencias_asignar puntos"  |
        Scenario: E03: No visualizo el reporte con mayor puntaje
        TA02:
        Given que estoy en el perfil de un usuario con mayor puntaje 
        When presionó el botón de observar su reporte con mayor puntaje 
        Then  no visualizó el reporte y aparece un mensaje advirtiendo que la app está en mantenimiento de 24 horas.
        Examples:
          | usuario | password | menú principal                    |
          | sv31    | sv31     |  "App-vizualizar-incidencias_asignar puntos"  |
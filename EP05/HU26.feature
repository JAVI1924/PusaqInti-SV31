Feature: HU26 Como usuario quiero registrar las zonas donde transito frecuentemente para recomendar una ruta segura. 
    Scenario: EO1 Usuario registra las Zonas seguras. 
        TA01
        Given al salir de casa y me dirijo a un cierto lugar.
        When veo que la avenida por donde transito está serena.
        Then recomiendo mediante la app que la avenida esté serena y que otros usuarios puedan visualizarla.
        Examples:
        |LUGAR         |resultado|                                                    |
        |LA victoria  |recomiendo mediante la app que la avenida esté serena y que otros usuarios puedan visualizarla.|
    
     Scenario: EO2 Usuario se equivoca en registrar las zonas seguras
        TA02
        Given estoy dirigiéndome a mi destino y veo la avenida serena es ahí.
        When registró la zona que es segura.
        Then la app mediante notificación me comunica que la avenida que notifique como segura, usuarios fueron víctimas de robo.
        Examples:
      
        |funcionalidad           |resultado|                                                    |
        | reporte de zona segura |Comunico que la avenida que notifique como segura, usuarios fueron víctimas de robo|
    
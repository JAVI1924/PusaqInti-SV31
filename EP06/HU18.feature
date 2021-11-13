Feature: HU18: Como usuario necesito que la geolocalización se pueda visualizar en cualquier dispositivo móvil para disponer de este apoyo en cualquier hora y lugar.
    Scenario: E01: Utilizó el dispositivo móvil en Android
        TA01
        
        Given que me encuentro en la pantalla inicial
        When presiono el boton de activar l/a geolocalización en la aplicación
        Then me muestra un mensaje confirmando la activación

        Examples:
            | mensaje |
            | Geolocalización activada |

    Scenario: E02: La app falla en una determinado momento
        TA02
        
        Given que me encuentro en la pantalla inicial
        When presiono el boton de activar la geolocalización en la aplicación
        Then me muestra un mensaje de error 

        Examples:
            | mensaje                                                  |
            | Problema al activar Geolocalización, inténtalo más tarde |
            
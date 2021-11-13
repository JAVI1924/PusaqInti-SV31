Feature: HU23: Como usuario quiero visualizar una descripción de las funcionalidades del chatboot para conocer su uso de manera clara. 
    Scenario: E01: Usuario visualiza la descripción de la app para su uso correcto.
        TA01

        Given que me encuentro en la descripción general de la app.
        When seleccionó la opción de funcionalidades del chatboot=""
        Then el sistema me mostrará las preguntas que puede responder rapidamente el chatbot
        Examples:
            | Opciones             | Chabot | Resultado |
            | Descripción general  | Inti   | La preguntas que se responden frecuentemente |
        Examples:
            | mensaje |
            | Geolocalización activada |

    Scenario: E02: El chatboot me responde como realizar un reporte
        TA02
        
        Given que la app me mostró en la descripción todo su uso y funcionalidad
        When quiero saber el cómo reportar un incidente en la ciudad="" y presiono el boton enviar
        Then el chatboot me responte los pasos a seguir para realizarlo

        Examples:
            | Pregunta                        | Boton   | Resultado |
            | ¿Cómo reportar a un incidente?  | enviar  | Dirigete a la sección de reportes  |
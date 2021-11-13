Feature: HU01: Como ciudadano quiero visualizar un chatbot que responda mis preguntas para ser derivado a un especialista en seguridad que tenga conocimiento en el área
    Scenario: E01: Realizó las preguntas y el chatbot me responde
        TA01

        Given que me encuentro en el chatbot.
        When ingresó ingreso una pregunta correcta y presiono el botón enviar
        Then recibo la respuesta a mi pregunta

        Examples:
            | pregunta                | respuesta                                                |
            | ¿Cómo reporto un robo?  | Accede a la pestaña reportes y sigue los pasos indicados |

    Scenario: E02: Realizó mi pregunta con palabras no claves
        TA02

        Given que me encuentro en el chatbot.
        When ingresó mi pregunta y presione enviar
        Then me responde que utilice palabras claves para resolver mi pregunta.

        Examples:
            | pregunta                       | respuesta                                         |
            | Un malechor me quito mi bolso  | Prueba usar palabras claves como "Robo","Reporte" |
            
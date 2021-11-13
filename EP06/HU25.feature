Feature: HU25: Como agente de seguridad necesito que el chatbot resuelva de manera eficiente las dudas de los usuarios para lograr satisfacer sus dudas.
    Scenario: E01: El chatbot le absuelve todas sus dudas.
        TA01

        Given que me encuentro en el chatbot realizando preguntas
        When el chatbot resuelve todas mis dudas
        Then el chatbot me muestra un mensaje despidiéndose.

        Examples:
            | pregunta                | respuesta                                                | mensaje |
            | ¿Cómo reporto un robo?  | Accede a la pestaña reportes y sigue los pasos indicados | Hasta luego! |

    Scenario: E02: El chatbot no absuelve todas sus dudas.
        TA02
        
        Given que me encuentro en el chatbot realizando preguntas
        When aún me quedan dudas presiono el botón de más ayuda 
        Then el chatbot me deriva a un asesor en seguridad.

        Examples:
            | pregunta                       | respuesta |
            | Un malechor me quito mi bolso  | Prueba usar palabras claves como "Robo","Reporte" |
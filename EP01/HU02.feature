Feature: HU02 :Como ciudadano quiero visualizar el horario de atención del asesor en su perfil para saber a qué hora puedo contactarlo 
    Scenario: E01: Ingreso al área de los horarios de los asesores.
        TA01:
        Given que inicié sesión en la app 
        When ingresó el nombre de un asesor=""  y estoy en su perfil presiono el botón horarios
        Then el sistema me muestra la disponibilidad de los horario del asesor=" "
        Examples:
            | Nombre del asesor| Boton horarios | Resultado                                       |
            | Juan Paul        | clic()         | Visualizar los horarios disponibles del asesor  |

    Scenario: E02: El asesor no registró su horario 
        TA02
        Given que me encuentro en la app.
        When ingresó, busco el perfil de mi asesor para ver sus horarios y no hay ningún horario.
        Then me aparece un mensaje donde me especifica que el asesor no registró su horario.
        Examples:
            | usuario| password | menú principal                                                                             |
            | Pedro  | 252qowq  | Visualizar perfil del asesor - Visualización de mensaje "el asesor no registro su horario" |

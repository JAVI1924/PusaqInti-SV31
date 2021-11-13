Feature: HU03: Como ciudadano deseo visualizar el número del asesor en su perfil para que me pueda orientar y aconsejar. 
    Scenario: E01: Ingreso al perfil de mi asesor para comunicarse con su número de teléfono. 
        CA01: 
        Given que me encuentro app. 
        When ingreso y busco el perfil de mi asesor para ver su número telefónico. 
        Then programo mi cita con el asesor. 
        Examples:
            | usuario| password | menú principal                                               |
            | Olaf   | 142de   | Visualizar perfil del asesor - Encontrar numero de telefono  |
    Scenario: E02: El asesor no registro su número telefónico 
        CA02: 
        Given que me encuentro app.
        When ingresó y busco el perfil de mi asesor para ver su número telefónico y no hay ningún número. 
        Then me aparece un mensaje donde me especifica que el asesor no registró su número telefónico.
        Examples:
            | usuario| password | menú principal                                                                                       |
            | David  | 12313a   | Visualizar perfil del asesor -Visualización de mensaje "el asesor no registro su numero de telefono" |
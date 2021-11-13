Feature: HU39: Como ciudadano quiero visualizar la experiencia del asesor en el área de seguridad para aprender formas de prevenir robos. 
    Scenario: E01: Visualizar el curriculum vitae del asesor 
        CA01: 
        Given que he iniciado sesión en la app 
        When me encuentro en el perfil del asesor 
        Then debo visualizar en el curriculum la experiencia del asesor. 
        Examples:
            | usuario| password | menú principal                                               |
            | Jordi  | 12qw13   | Visualizar curriculum vitae del asesor                       |
    Scenario: E02: Visualizar la empresa reciente en que trabajo un asesor 
        CA02:
        Given que me encuentro en el perfil del asesor 
        When doy clic en el botón de mostrar la empresa más reciente que laboró 
        Then me muestra el nombre de la empresa en que prestó sus servicios. 
        Examples:
            | usuario| password | menú principal                                               |
            | Walter | 52281a   | Visualizar la empresa mas reciente que laboró                |
    Scenario: E03: Visualizar los éxitos del asesor 
        CA03:
        Given que me autentifique en la app.
        When ingresó en el perfil del asesor.
        Then visualizó los éxitos del asesor debajo de su foto de perfil.
        Examples:
            | usuario| password | menú principal                                               |
            | Jose   | 12ek1j   | Visualizar perfil del asesor - Programar horario de la cita  |
    Scenario: E04: Observó el grado de instrucción del asesor 
        CA04: 
        Given que me encuentro en el perfil del usuario.
        When buscó el grado de instrucción del asesor  
        Then visualizó en un mensaje el grado de instrucción del asesor.
        Examples:
            | usuario| password | menú principal                                               |
            | Pepe   | 12qweq   | Buscar el grado de instrucción del asesor                    |
     Scenario: E05: No visualizó el curriculum del asesor 
        CA05:
        Given que me autentifique en la app.
        When ingresó en el perfil del asesor 
        Then no logró visualizar el curriculum del asesor y me muestra un mensaje advirtiendo que el asesor es nuevo.
        Examples:
            | usuario| password | menú principal                                                                                      |
            | Yasmin | 12rqwe   | Ingresar perfil del asesor -Visualización de mensaje "El asesor es nuevo y no presenta curriculum"  |
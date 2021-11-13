Feature: HU24: Como ciudadano quiero que la app me informe mediante su geolocalización sobre las zonas más seguras de Lima metropolitana para evitar robos.   
    Scenario: E01: Usuario se informa por la geolocalización de zonas seguras 
        TA01:
        Given quiero ir de un lugar a otro 
        When deseo proteger mis pertenencias de valor e ingreso el nombre de la zona="Jesus María" y mi destino="San Isidro"
        Then  la app me muestra como una guía una ruta segura mediante la localización("Home-Zona-Ruta")
        Examples:
            | Zona actual | Zona destino | Menu principal  |
            | Jesus Maria  | San Isidro  | Home-Zona-Ruta  |

        Scenario: E02: Usuario no utiliza de manera prudente la geolocalización
        TA02:
        Given me autentifique en la app
        When estoy en una zona donde que no conozco="Zona desconocida" e ingreso la zona de mi destino="Ate Vitarte"
        Then me muestra un mensaje para activar mi GPS y me muestra una ruta para llegar a mi destino("Home-Zonas-GPS-Ruta")
        Examples:
          | Zona               | Destino       | menú principal           |
          | Zona desconocida   | Ate Vitarte   | Home-Zonas-GPS-Ruta      |
        
Feature: Registrar cliente

  Scenario: Crear cliente para obtener token

    Given url 'https://simple-books-api.click/api-clients'

    * def email = 'jhon.fredy.' + java.util.UUID.randomUUID() + '@pruebas.com'

    And request
"""
{
  "clientName": "Jhon Fredy",
  "clientEmail": "#(email)"
}
"""

    When method POST

    Then status 201

    And match response.accessToken != null
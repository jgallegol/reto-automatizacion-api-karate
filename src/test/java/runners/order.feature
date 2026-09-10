Feature: Crear orden

  Scenario: Crear una orden de compra

    # Crear cliente para obtener token
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

    # Guardar token para reutilizarlo
    * def token = response.accessToken

    # Crear orden autenticada
    Given url 'https://simple-books-api.click/orders'

    And header Authorization = 'Bearer ' + token

    And request
"""
{
  "bookId": 2,
  "customerName": "Jhon Fredy"
}
"""

    When method POST

    Then status 201

    And match response.created == true

    And match response.orderId != null
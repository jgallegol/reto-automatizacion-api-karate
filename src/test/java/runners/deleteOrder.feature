Feature: Eliminar orden

  Scenario: Eliminar una orden existente

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

    # Guardar token
    * def token = response.accessToken

    # Crear orden
    Given url 'https://simple-books-api.click/orders'

    And header Authorization = 'Bearer ' + token

    And request
    """
    {
      "bookId": 1,
      "customerName": "Jhon Fredy"
    }
    """

    When method POST

    Then status 201

    # Guardar id de la orden
    * def orderId = response.orderId

    # Eliminar orden
    Given url 'https://simple-books-api.click/orders'

    And path orderIdgit

    And header Authorization = 'Bearer ' + token

    When method DELETE

    Then status 204
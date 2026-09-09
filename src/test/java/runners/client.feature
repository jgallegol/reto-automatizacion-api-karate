Feature: Registrar cliente

  Scenario: Crear cliente para obtener token

    Given url 'https://simple-books-api.click/api-clients'

    And request
    """
    {
      "clientName": "Jhon Fredy",
      "clientEmail": "jhon.fredy.karate@prueba.com"
    }
    """

    When method POST

    Then status 201

    And match response.accessToken != null
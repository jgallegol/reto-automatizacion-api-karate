Feature: Validar estado de la API

  Scenario: Consultar estado del servicio

    Given url 'https://simple-books-api.click/status'

    When method GET

    Then status 200
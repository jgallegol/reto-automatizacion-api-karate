Feature: Consultar libros disponibles

  Scenario: Obtener listado de libros

    Given url 'https://simple-books-api.click/books'

    When method GET

    Then status 200

    And match response != null

    And match response == '#[]'
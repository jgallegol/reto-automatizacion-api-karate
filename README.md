# Automatizacion API con Karate Framework

## Descripcion

Proyecto de automatizacion API desarrollado con Karate Framework utilizando Maven y Java 21.

## Tecnologias

- Java 21
- Maven
- Karate Framework
- JUnit 5
- Git
- GitHub

## API utilizada

https://simple-books-api.click

## Escenarios automatizados

### GET

- Consultar estado del servicio
- Consultar listado de libros

### POST

- Registrar cliente
- Crear orden

### PATCH

- Actualizar orden existente

### DELETE

- Eliminar orden existente

## Estructura del proyecto

```text
src
└── test
    └── java
        └── runners
            ├── ApiRunner.java
            ├── status.feature
            ├── books.feature
            ├── client.feature
            ├── order.feature
            ├── updateOrder.feature
            └── deleteOrder.feature
```

## Ejecucion

Ejecutar desde IntelliJ:

```text
ApiRunner
```

## Reportes

Los reportes de Karate se generan automaticamente en:

```text
target/karate-reports
```

## Funcionalidades implementadas

- Validacion de estado de API
- Consulta de libros
- Registro de clientes
- Creacion de ordenes
- Actualizacion de ordenes
- Eliminacion de ordenes
- Manejo de autenticacion Bearer Token
- Uso de variables dinamicas
- Uso de path dinamico

## Autor

Jhon Fredy Gallego Lopez
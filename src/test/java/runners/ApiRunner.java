package runners;

import com.intuit.karate.junit5.Karate;

/**
 * Ejecuta los escenarios Karate del proyecto
 */
public class ApiRunner {

    @Karate.Test
    Karate testApi() {

        // Ejecuta los features asociados a este runner
        return Karate.run().relativeTo(getClass());
    }
}
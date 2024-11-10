function sum(a, b) {
    return a + b;
}

// Simulamos una prueba simple
if (sum(1, 2) !== 3) {
    console.error("Test failed: 1 + 2 should equal 3");
    process.exit(1); // Salida con código de error
} else {
    console.log("Test passed: 1 + 2 equals 3");
}

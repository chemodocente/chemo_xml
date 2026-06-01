let mensaje = "Hola Chicos/as";
let alumnos = 3;

if (alumnos<5) {
    mensaje="GoodBye Curso nos vemos buscando MF Final"
} else {
    mensaje ="Seguimos adelante... a por todas!!!"
}

alert(mensaje);

//Ejercicio 2 Decision entre muchas opciones

let nota = 9.9;

if (nota < 5) {
    console.log("Insuficiente ❌");
} else if (nota < 7) {
    console.log("Aprobado 😐");
} else if (nota < 9) {
    console.log("Notable 📈");
} else {
    console.log("Sobresaliente 🌟");
}

// LANZAMOS UN COHETE

let cuentaAtras = 10;

while (cuentaAtras > 0) {
    console.log("Despegue en... " + cuentaAtras);
    cuentaAtras = cuentaAtras -1;
}
console.log("🚀 ¡IGNICIÓN!");


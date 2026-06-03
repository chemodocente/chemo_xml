document.addEventListener("DOMContentLoaded", function () {
  const boton = document.getElementById("toggleSections");
  const secciones = document.querySelectorAll("section");
  let ocultas = false;

  boton.addEventListener("click", function () {
    for (let i = 0; i < secciones.length - 1; i++) {
      secciones[i].style.display = ocultas ? "block" : "none";
    }

    ocultas = !ocultas;
    boton.textContent = ocultas ? "Mostrar secciones" : "Ocultar secciones";
  });
});
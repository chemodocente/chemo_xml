function cargarXML() {
    fetch("cursos.xml")
        .then(respuesta => respuesta.text())
        .then(textoXML => {
            const parser = new DOMParser();
            const xmlDoc = parser.parseFromString(textoXML, "application/xml");

            let salida = "";

            // Nodo raíz del documento XML
            const raiz = xmlDoc.documentElement;

            salida += "=== NODO RAÍZ ===\n";
            salida += "nodeName: " + raiz.nodeName + "\n";
            salida += "nodeType: " + raiz.nodeType + "\n";
            salida += "nodeValue: " + raiz.nodeValue + "\n\n";

            /*
                nodeType:
                1 = Nodo de elemento, por ejemplo <curso>
                2 = Nodo de atributo
                3 = Nodo de texto
                9 = Nodo documento
            */

            salida += "=== HIJOS DEL NODO RAÍZ ===\n";
            salida += "Cantidad de childNodes: " + raiz.childNodes.length + "\n\n";

            salida += "Recorriendo childNodes de <cursos>:\n";

            raiz.childNodes.forEach((nodo, indice) => {
                salida += "\nNodo hijo número " + indice + "\n";
                salida += "nodeName: " + nodo.nodeName + "\n";
                salida += "nodeType: " + nodo.nodeType + "\n";
                salida += "nodeValue: " + JSON.stringify(nodo.nodeValue) + "\n";
            });

            /*
                Importante:
                childNodes también incluye saltos de línea y espacios.
                Por eso aparecen nodos de texto #text.
            */

            const primerCurso = raiz.getElementsByTagName("curso")[0];

            salida += "\n\n=== PRIMER ELEMENTO <curso> ===\n";
            salida += "nodeName: " + primerCurso.nodeName + "\n";
            salida += "nodeType: " + primerCurso.nodeType + "\n";
            salida += "Atributo id: " + primerCurso.getAttribute("id") + "\n\n";

            salida += "=== parentNode ===\n";
            salida += "El padre de <curso> es: " + primerCurso.parentNode.nodeName + "\n\n";

            salida += "=== firstChild y lastChild ===\n";
            salida += "firstChild de <curso>: " + primerCurso.firstChild.nodeName + "\n";
            salida += "firstChild nodeType: " + primerCurso.firstChild.nodeType + "\n";
            salida += "firstChild nodeValue: " + JSON.stringify(primerCurso.firstChild.nodeValue) + "\n\n";

            salida += "lastChild de <curso>: " + primerCurso.lastChild.nodeName + "\n";
            salida += "lastChild nodeType: " + primerCurso.lastChild.nodeType + "\n";
            salida += "lastChild nodeValue: " + JSON.stringify(primerCurso.lastChild.nodeValue) + "\n\n";

            /*
                Como el XML tiene saltos de línea y espacios,
                firstChild y lastChild suelen ser nodos de texto.
                Para obtener directamente elementos, usamos children.
            */

            salida += "=== children, solo elementos reales ===\n";

            const nombre = primerCurso.children[0];
            const horas = primerCurso.children[1];
            const modalidad = primerCurso.children[2];

            salida += "Primer hijo elemento: " + nombre.nodeName + "\n";
            salida += "Segundo hijo elemento: " + horas.nodeName + "\n";
            salida += "Tercer hijo elemento: " + modalidad.nodeName + "\n\n";

            salida += "=== nodeName, nodeValue y textContent ===\n";
            salida += "nodeName de <nombre>: " + nombre.nodeName + "\n";
            salida += "nodeValue de <nombre>: " + nombre.nodeValue + "\n";
            salida += "textContent de <nombre>: " + nombre.textContent + "\n\n";

            /*
                En un nodo de elemento, nodeValue normalmente es null.
                El texto está dentro de un nodo hijo de tipo texto.
            */

            const textoDelNombre = nombre.firstChild;

            salida += "Nodo de texto dentro de <nombre>:\n";
            salida += "nodeName: " + textoDelNombre.nodeName + "\n";
            salida += "nodeType: " + textoDelNombre.nodeType + "\n";
            salida += "nodeValue: " + textoDelNombre.nodeValue + "\n\n";

            salida += "=== nextSibling y previousSibling ===\n";
            salida += "Nodo actual: " + horas.nodeName + "\n";
            salida += "previousSibling real puede ser texto: " + horas.previousSibling.nodeName + "\n";
            salida += "nextSibling real puede ser texto: " + horas.nextSibling.nodeName + "\n\n";

            salida += "Usando previousElementSibling y nextElementSibling:\n";
            salida += "Elemento anterior a <horas>: " + horas.previousElementSibling.nodeName + "\n";
            salida += "Elemento siguiente a <horas>: " + horas.nextElementSibling.nodeName + "\n\n";

            salida += "=== RECORRIDO GENÉRICO DEL ÁRBOL ===\n";
            salida += recorrerNodo(raiz, 0);

            document.getElementById("salida").textContent = salida;
        })
        .catch(error => {
            document.getElementById("salida").textContent =
                "Error al cargar el XML: " + error;
        });
}

function recorrerNodo(nodo, nivel) {
    let texto = "";
    let sangria = "  ".repeat(nivel);

    texto += sangria + "- " + nodo.nodeName;
    texto += " | nodeType: " + nodo.nodeType;

    if (nodo.nodeValue !== null && nodo.nodeValue.trim() !== "") {
        texto += " | nodeValue: " + nodo.nodeValue.trim();
    }

    texto += "\n";

    nodo.childNodes.forEach(hijo => {
        texto += recorrerNodo(hijo, nivel + 1);
    });

    return texto;
}

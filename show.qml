/*
    Copyright 2019 Harald Sitter <sitter@kde.org>

    This program is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License as
    published by the Free Software Foundation; either version 3 of
    the License or any later version accepted by the membership of
    KDE e.V. (or its successor approved by the membership of KDE
    e.V.), which shall act as a proxy defined in Section 14 of
    version 3 of the license.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

    PLEASE NOTE:
    This is not the original neon theme, but an adpment made for eggs 
    from eggs author: Piero Proietti <piero.proietti@gmail.com>,
    modified by Charlie Martinez for Quirinux GNU/Linux <cmartinez@quirinux.org>
*/
import QtQuick 2.0;
import calamares.slideshow 1.0;


Presentation {
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 9000
        running: true
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {
        Image {
            id: slide1
            source: "slide_1.jpg"
            anchors.centerIn: parent
            anchors.top: background.bottom
            width: 810
            height: 485
            fillMode: Image.PreserveAspectFit
        }
         Text {
            font.family: "Helvetica"
            font.pixelSize : 12
            color: "#1a1a1a"
            anchors.horizontalCenter: slide1.horizontalCenter
            anchors.top: background.top
            text: qsTr("<h1>Quirinux General</h1>" +
                  "<h2>Basado en Debian GNU/Linux</h2>" +
                  "<h3>https://www.quirinux.org/</h3>" +
                  "<br />" +
                  "<p>La UX y UI de Quirinux Pro,<br/>el sistema operativo para el cine animado,<br /> ahora también en esta edición diseñada para el público en general que lo incluye todo, excepto los programas de animación.</p>")
            wrapMode: Text.WordWrap
            width: kde.width
            horizontalAlignment: Text.Center
        }
    }
    Slide {
        Image {
            id: slide2
            source: "slide_2.jpg"
            anchors.centerIn: parent
            anchors.top: background.bottom
            width: 810
            height: 485
            fillMode: Image.PreserveAspectFit
        }
         Text {
            font.family: "Helvetica"
            font.pixelSize : 12
            color: "#1a1a1a"
            anchors.horizontalCenter: slide2.horizontalCenter
            anchors.top: background.top
            text: qsTr("<h1>Quirinux General</h1>" +
                  "<h2>Programas preinstalados:</h2>" +
                  "<br/>" +
			"<p>Libre Office y Utilidades para PDF<br /> Software para Escanear<br /> GIMP Quirinux (Con Íconos y Atajos de Photoshop)<br /> Utilidades para organizar y reducir peso de imágenes<br /> Editor de video Kdenlive (Similar a Peremiere)<br /> Mozilla Firefox y KTorrent<br /> Creación de CD/DVD<br /> Editor de Audio Audacity<br /> Reproductor VLC y Conversores Multimedia<br /> Teclado y Pizarra en Pantalla<br /> Compatibilidad con Impresoras y Webcams<br />Calculadora, KPaint, Recortes, y Juegos.</p>")
            wrapMode: Text.WordWrap
            width: kde.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: slide3
            source: "slide_3.jpg"
            anchors.centerIn: parent
            anchors.top: background.bottom
            width: 810
            height: 485
            fillMode: Image.PreserveAspectFit
        }
         Text {
            font.family: "Helvetica"
            font.pixelSize : 12
            color: "#1a1a1a"
            anchors.horizontalCenter: slide3.horizontalCenter
            anchors.top: background.top
            text: qsTr("<h1>Quirinux GNU/Linux</h1>" +
                  '<h2>EL "Camaleón":</h2>' +
                  "<br/>" +
                  "<h3>El único sistema operativo que se adapta al la persona usuaria.</h3>" +
                  "<br/>" +
                  "<p>¡12 temas de escritorio para elegir, incluyendo estilos retro y vintage!</p>" +
                  "<br/>" +
		  "<p>Temas incluidos:</p>"+
          "<br/>" +
		  "<p>Win Dark<br />Win Luz<br />Win Mix<br />Xp<br />Mac<br />Mac Vintage<br />Retro<br />Clásico<br />Quirinux 1<br />Quirinux 1.2 (Spartan)<br />Quirinux General<br />Quirinux Pro<br /></p>" +
		"<p>Accede desde: Asistente Quirinux - Apariencia Win/Mac</p>")
            wrapMode: Text.WordWrap
            width: neon.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: slide4
            source: "slide_4.jpg"
            anchors.centerIn: parent
            anchors.top: background.bottom
            width: 810
            height: 485
            fillMode: Image.PreserveAspectFit
        }
         Text {
            font.family: "Helvetica"
            font.pixelSize : 12
            color: "#1a1a1a"
            anchors.horizontalCenter: slide4.horizontalCenter
            anchors.top: background.top
            text: qsTr("<h1>Quirinux GNU/Linux</h1>" +
                  "<h2>Centro de Software</h2>"+
                 	 "<br/>" +
                 	 "<h3>La forma más fácil de instalar programas</h3>"+
                      "<br/>" +
		 	 "<p>Si sabes instalar cosas en un teléfono Android,<br />entonces sabrás instalar programas en Quirinux.<br />Accede al <b>Centro de software y utiliza el<br />buscador incorporado para encontrar lo que necesites<br />dentro del amplio catálogo de aplicaciones para Debian<br />y las aplicaciones exclusivas del repositorio de quirinux</p>)"
            wrapMode: Text.WordWrap
            width: plasma.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: slide5
            source: "slide_5.jpg"
            anchors.centerIn: parent
            anchors.top: background.bottom
            width: 810
            height: 485
            fillMode: Image.PreserveAspectFit
        }
         Text {
            font.family: "Helvetica"
            font.pixelSize : 12
            color: "#1a1a1a"
            anchors.horizontalCenter: slide5.horizontalCenter
            anchors.top: background.top
            text: qsTr("<h1>Quirinux GNU/Linux</h1>" +
                  "<h2>Soporte comunicario</h2>"+
                 	 "<br/>" +
                 	 "<h3>Crea tu cuenta gratis en: https://foro.quirinux.org</h3>"+
		 	 "<p>Encontrarás entre otras secciones:</p>" +
		 	  "<br />" +
                   "<p>Tutoriales<br />Eventos Principales y a distancia<br />Principiantes<br />Instalación y arranque<br />Interfaz gráfica<br />Redes y conectividad<br />Software y aplicaciones<br />Soporte de hardware<br />Máquinas virtuales<br />Preguntas no técnicas</p>")
            wrapMode: Text.WordWrap
            width: plasma.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {
		Image {
			id: slide6
			source: "slide_6.jpg"
			anchors.centerIn: parent
			anchors.top: background.bottom
			width: 810
			height: 485
			fillMode: Image.PreserveAspectFit
		}
			Text {
			font.family: "Helvetica"
			font.pixelSize : 12
			color: "#1a1a1a"
			anchors.horizontalCenter: slide6.horizontalCenter
			anchors.top: background.top
			text: qsTr("<h1><b>Quirinux GNU/Linux<b></h1>" +
				"<h2>Creado por: Charlie Martinez</h2>" +
				"<h3>Email: cmartinez@quirinux.org</h3>" +
              	                "<br/><br/>" +
				"<p>Logotipo de: Thomas Gaya.<br />Beta Tester: Leonardo Besingor.<br />Sistema de creación de ISO: Penguins' Eggs, de Piero Proietti.</p><br /><br Gracias totales a Javier Obregón, Pablo López (Etertics),<br />Gustav González (Tupi),<br/>Gustavo Deveze, Patricia Mengui,<br/>Riky Linux, Geri Ratclife y Noelia Gerbaudo.</p><br /><br />"+
                "<p>Hecho en IDAC, Avellaneda (Argentina),<br />Santiago de Compostela y Roma.</p>")
			wrapMode: Text.WordWrap
			width: secure.width
			horizontalAlignment: Text.Center
		}
    } 		
}

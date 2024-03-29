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
        interval: 20000
        running: true
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {
		Image {
			id: slide1
			source: "slide1.png"
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
			text: qsTr("<h1><b>Quirinux GNU/Linux<b></h1>" +
				"<h2>Creado por: Charlie Martinez (Carlos Mariano Martínez Bourio)</h2>" +
				"<h3>Email: cmartinez@quirinux.org</h3>" +
              	                "<br/><br/>" +
				"Logotipo de: Thomas Gaya.<br/>Sistema de creación de ISO: Penguins' Eggs, de Piero Proietti.</p><br/>Voluntarios beta-testers: Noelia Gerbaudo, Leonardo Besingor y Sela González.<br/><br/> Gracias totales a Javier Obregón, Pablo López (Etertics),<br/>Gustav González (Tupi),<br/>Gustavo Deveze, Patricia Mengui,<br/>Riky Linux, Bazza y Geri Ratclife.<br/><br/>"+
                "Hecho en Buenos Aires (Argentina),<br/>Santiago de Compostela (Galicia, España) y Roma (Italia).")
			wrapMode: Text.WordWrap
			width: secure.width
			horizontalAlignment: Text.Center
		}
    } 		
}

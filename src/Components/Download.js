import React from "react";
import { FiArrowRight } from "react-icons/fi";

const apiUrl = 'https://micro-config.lucas-cm.com.br/v1/toggle/search';

function fetchToggles() {
  fetch(apiUrl)
    .then(response => response.json())
    .then(data => {
      const versionElement = document.getElementById('version');
      const linkDownloadElement = document.getElementById('link-download');

      // Find the item with the name "currentVersionApp"
      const currentVersion = data.data.find(item => item.name === "currentVersionApp");

      // Find the item with the name "currentVersionApp"
      const currentDownloadLink = data.data.find(item => item.name === "linkDownloadApp");

      if (currentVersion) {
        // Get the value from the item and update the content of the element
        versionElement.textContent = `Versão atual: ${currentVersion.value}`;
      } else {
        versionElement.textContent = 'Erro ao buscar a versão';
      }

      if (currentDownloadLink) {
        // Get the value from the item and update the href attribute of the anchor element
        if (currentDownloadLink.value) {
          linkDownloadElement.href = currentDownloadLink.value;
          linkDownloadElement.classList.remove('disabled'); // Remove the "disabled" class
        }
      } else {
        linkDownloadElement.classList.add('disabled'); // Add the "disabled" class
      }

    })
    .catch(error => {
      console.error('Erro ao buscar a versão:', error);
    });
}



const Download = () => {
  fetchToggles();
  return (
    <div className="download-section-container">
      <div className="download-section-image-container">
        <img src={'https://cdn.discordapp.com/attachments/1094163343985623080/1117349473719422976/spy-family-anya-peace-512x512.png'} alt="" />
      </div>
      <div className="download-section-text-container">
        <div>
          <p className="primary-subheading">Download</p>
          <h1 className="primary-heading">
            Aqui você pode baixar a versão mais recente do nosso aplicativo.
          </h1>
        </div>
        <div className="download-versao">
          <a id="link-download"  href="https://google.com" target="_blank" rel="noreferrer" style={{ textDecoration: "none" }} >
            <button className="secondary-button">
              Baixar Agora <FiArrowRight />{" "}
            </button>
          </a>
          <p id="version">Versão atual: Carregando...</p>
        </div>

      </div>
    </div>
  );
};


export default Download;

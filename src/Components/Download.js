import { FiArrowRight } from "react-icons/fi";
import React, { useEffect } from 'react';

const Download = () => {
  useEffect(() => {
    fetchToggles();
  }, []);

  async function fetchToggles() {
    const linkDownloadElement = document.getElementById('link-download');
    const currentVersionElement = document.getElementById('version');
    linkDownloadElement.classList.add('disabled');

    const apiUrl = 'https://micro-config.lucas-cm.com.br/v1/toggle/search'; // Defina a URL da sua API aqui
    try {
      const response = await fetch(apiUrl);
      const data = await response.json();
      const currentVersion = data.data.find(item => item.name === "currentVersionApp");
      const currentDownloadLink = data.data.find(item => item.name === "linkDownloadApp");


      if (currentVersion) {
        currentVersionElement.textContent = `Versão atual: ${currentVersion.value}`;
      } else if (!currentVersion) {
        currentVersionElement.textContent = 'Erro ao buscar a versão';

      }

      if (currentDownloadLink && currentDownloadLink.value) {
        linkDownloadElement.href = currentDownloadLink.value;
        linkDownloadElement.classList.remove('disabled');
      }
    } catch (error) {
      console.error('Erro ao buscar a versão:', error);
    }
  }

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
          <a id="link-download" href="https://objectstorage.sa-vinhedo-1.oraclecloud.com/n/axs7rpnviwd0/b/manga-easy-apks/o/manga-easy-latest.apk" target="_blank" rel="noreferrer" style={{ textDecoration: "none" }} >
            <button className="secondary-button">
              Baixar Agora <FiArrowRight />{""}
            </button>
          </a>
          <p id="version">Versão atual: Carregando...</p>
        </div>

      </div>
    </div>
  );

};


export default Download;

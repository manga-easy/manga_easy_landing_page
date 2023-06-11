import React from "react";
import { FiArrowRight } from "react-icons/fi";

const Download = () => {
  return (
    <div className="download-section-container">
      <div className="download-section-image-container">
        <img src={'https://cdn.discordapp.com/attachments/1094163343985623080/1117349473719422976/spy-family-anya-peace-512x512.png'} alt="" />
      </div>
      <div className="download-section-text-container">
        <div>
          <p className="primary-subheading">Donwload</p>
          <h1 className="primary-heading">
            Aqui você pode baixar a versão mais recente do nosso aplicativo.
          </h1>
        </div>
        <button className="secondary-button">
          Baixar Agora <FiArrowRight />{" "}
        </button>
      </div>
    </div>
  );
};

export default Download;

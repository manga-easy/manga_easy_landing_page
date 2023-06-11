import React from "react";
import DownloadBackgroundImage from "../Assets/download-background-image.png";
import { FiArrowRight } from "react-icons/fi";

const Download = () => {
  return (
    <div className="download-section-container">
      <div className="download-section-image-container">
        <img src={DownloadBackgroundImage} alt="" />
      </div>
      <div className="download-section-text-container">
        <p className="primary-subheading">Donwload</p>
        <h1 className="primary-heading">
        Aqui você pode baixar a versão mais recente do nosso aplicativo.
        </h1>
        <button className="secondary-button">
            Baixar Agora <FiArrowRight />{" "}
          </button>
      </div>
    </div>
  );
};

export default Download;

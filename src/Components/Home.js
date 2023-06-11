import React from "react";
import BannerBackground from "../Assets/home-banner-background.png";
import BannerImage from "../Assets/home-banner-image.png";
import Navbar from "./Navbar";

const Home = () => {
  return (
    
    <div className="home-container">
      <Navbar />
      <div className="home-banner-container">
        <div className="home-bannerImage-container">
          <img src={BannerBackground} alt="" />
        </div>
        <div className="home-text-section">
          <h1 className="primary-heading">
          Desvende um mundo de aventuras e emoções!!!
          </h1>
          <p className="primary-text">
          O Manga Easy é o ponto de partida para mergulhar em histórias cativantes, personagens fascinantes e ilustrações deslumbrantes. Baixe o aplicativo e deixe-se envolver pela magia do mangá. Entre nessa jornada épica conosco!
          </p>
        </div>
        <div className="home-image-section">
          <img src={BannerImage} alt="" />
        </div>
      </div>
    </div>
  );
};

export default Home;

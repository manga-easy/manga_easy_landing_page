import React from "react";
import AboutBackground from "../Assets/about-background.png";
import AboutBackgroundImage from "../Assets/about-background-image.png";

const About = () => {
  return (
    <div className="about-section-container">
      <div className="about-background-image-container">
        <img src={AboutBackground} alt="" />
      </div>
      <div className="about-section-image-container">
        <img src={AboutBackgroundImage} alt="" />
      </div>
      <div className="about-section-text-container">
        <p className="primary-subheading">Sobre</p>
        <h1 className="primary-heading">
        Descubra o Universo dos Mangás Conosco!
        </h1>
        <p className="primary-text">
        O Manga Easy é uma plataforma online dedicada a compartilhar mangás emocionantes e diversos. Com uma biblioteca virtual em constante expansão, oferecemos aos amantes de mangá a oportunidade de explorar uma variedade de gêneros e histórias envolventes.
        </p>
        <p className="primary-text">
        Nossa missão é conectar pessoas de todas as idades e origens por meio do poder dos mangás, ao mesmo tempo em que apoiamos artistas emergentes, proporcionando-lhes visibilidade. Junte-se a nós para vivenciar a magia dos mangás e embarcar em jornadas incríveis!
        </p>
        
      </div>
    </div>
  );
};

export default About;

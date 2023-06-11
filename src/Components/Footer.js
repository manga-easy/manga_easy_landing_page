import React from "react";
import { SiDiscord } from "react-icons/si";
import { SiInstagram } from "react-icons/si";
import { SiGithub } from "react-icons/si";

const Footer = () => {
  return (
    <div className="footer-wrapper">
      <p className="primary-subheading">Redes Sociais</p>

      <div className="footer-logo">
        <div className="logo">
          <img src={'https://media.discordapp.net/attachments/1056304767023972373/1056304821419905124/logo_manga_easy.png?width=787&height=468'} alt="" />
        </div>

        <div className="footer-icons">
          <SiDiscord />
          <SiInstagram />
          <SiGithub />
        </div>

      </div>
    </div>
  );
};

export default Footer;

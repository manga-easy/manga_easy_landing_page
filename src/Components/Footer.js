import React, { useEffect } from 'react';
import { SiDiscord } from "react-icons/si";
import { SiInstagram } from "react-icons/si";
import { SiGithub } from "react-icons/si";

const Footer = () => {
  useEffect(() => {
    fetchToggles();
  }, []);

  async function fetchToggles() {
    const linkDiscordElement = document.getElementById('link-discord');
    linkDiscordElement.classList.add('disabled');
    const apiUrl = 'https://micro-config.lucas-cm.com.br/v1/toggle/search';
    try {
      const response = await fetch(apiUrl);
      const data = await response.json();
      const currentDiscordLink = data.data.find(item => item.name === "linkDiscord");

      if (currentDiscordLink && currentDiscordLink.value){
        linkDiscordElement.href = currentDiscordLink.value;
        linkDiscordElement.classList.remove('disabled');
      }
    } catch (error) {
      console.error('Erro ao buscar o link do discord:', error);
    }
  }

  return (
    <div className="footer-wrapper">
      <div className="logo">
        <img src={'https://media.discordapp.net/attachments/1056304767023972373/1056304821419905124/logo_manga_easy.png?width=787&height=468'} alt="" />
      </div>
      <div className="footer-logo">
        <div className="footer-icons">
          <a id="link-discord" href="https://discord.gg/manga-easy-867833103513550850" target="_blank" rel="noreferrer">
            <SiDiscord />
          </a>
          <a href="https://www.instagram.com/mangaeasyoficial_/" target="_blank" rel="noreferrer">
            <SiInstagram />
          </a>
          <a href="https://github.com/manga-easy" target="_blank" rel="noreferrer">
            <SiGithub /></a>
        </div>
      </div>
    </div>
  );
};

export default Footer;

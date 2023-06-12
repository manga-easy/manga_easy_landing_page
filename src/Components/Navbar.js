/* eslint-disable jsx-a11y/anchor-is-valid */
import React, { useState } from "react";
import { HiOutlineBars3 } from "react-icons/hi2";
import Box from "@mui/material/Box";
import Drawer from "@mui/material/Drawer";
import Divider from "@mui/material/Divider";
import HomeIcon from "@mui/icons-material/Home";
import InfoIcon from "@mui/icons-material/Info";
import CommentRoundedIcon from "@mui/icons-material/CommentRounded";
import PhoneRoundedIcon from "@mui/icons-material/PhoneRounded";

const Navbar = () => {
  const [openMenu, setOpenMenu] = useState(false);
  const menuOptions = [
    {
      text: "Início",
      icon: <HomeIcon />,
      target: "Inicio",
    },
    {
      text: "Download",
      icon: <InfoIcon />,
      target: "Download",
    },
    {
      text: "Sobre",
      icon: <CommentRoundedIcon />,
      target: "Sobre",
    },
    {
      text: "Contato",
      icon: <PhoneRoundedIcon />,
      target: "Redes-sociais",
    },
  ];
  const handleMenuItemClick = (target) => {
    const targetSection = document.getElementById(target);
    targetSection.scrollIntoView({ behavior: "smooth" });
    setOpenMenu(false);
    console.log(target)
  };
  return (
    <nav>
      <div className="logo">
        <img src={'https://media.discordapp.net/attachments/1056304767023972373/1056304821419905124/logo_manga_easy.png?width=787&height=468'} alt="" />
      </div>
      <div className="navbar-links-container">
        {menuOptions.map((item) => (
          <a
            key={item.text}
            href={`#${item.target}`}
            onClick={() => handleMenuItemClick(item.target)}
          >
            {item.text}
          </a>
        ))}
      </div>
      <div className="navbar-menu-container">
        <HiOutlineBars3 onClick={() => setOpenMenu(true)} />
      </div>
      <Drawer open={openMenu} onClose={() => setOpenMenu(false)} anchor="right">
        <Box
          sx={{ width: 250 }}
          role="presentation"
          onClick={() => setOpenMenu(false)}
          onKeyDown={() => setOpenMenu(false)}
        >
          <div className="drawer">

            <div className="logo">
              <img src={'https://media.discordapp.net/attachments/1056304767023972373/1056304821419905124/logo_manga_easy.png?width=787&height=468'} alt="" />
            </div>
            <div className="drawer-links-container">
              {menuOptions.map((item) => (
                <a
                className="button-style"
                  key={item.text}
                  href={`#${item.target}`}
                  onClick={() => handleMenuItemClick(item.target)}
                >
                  {item.text}
                </a>
              ))}
            </div>
          </div>
          <Divider />
        </Box>
      </Drawer>
    </nav>
  );
};

export default Navbar;

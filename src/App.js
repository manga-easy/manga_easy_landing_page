import "./App.css";
import Home from "./Components/Home";
import About from "./Components/About";
import Footer from "./Components/Footer";
import Download from "./Components/Download";

function App() {
  return (
    <div className="App">
      <section id="Inicio">
      <Home />
      </section>
      <section id="Download">
      <Download />
      </section>
      <section id="Sobre">
      <About />
      </section>
      <section id="Redes-sociais">
      <Footer />
      </section>
    </div>
  );
}

export default App;

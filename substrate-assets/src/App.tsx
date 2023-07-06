import React, { useEffect, useState } from "react"
import './App.css';
import {Assets} from './components/Assets';
import { Welcome } from "./components/Welcome";
import { Header } from "./components/Header";

function App() {
  const [assets, setAssets] = useState([])

  useEffect(() => {
    const fetchAssets = (url: string) => {
      fetch(url).then(response => {
        return response.json();
      }).then((data) => {
        setAssets(data.assets);
      });
    };
  fetchAssets("https://paritytech.github.io/substrate-assets/assets.json");
}, [])

  console.log("assets===========>", assets)

  return (
    <div className="App">
      <header className="App-header">
        <Header/>
        <Welcome/>
        <Assets assets={assets}/>
      </header>
    </div>
  );
}

export default App;

import React from 'react';
import { createRoot } from 'react-dom/client';
import Header from './src/components/Header.js/Header';
import Body from './src/components/Body.js/Body';
import Footer from './src/components/Footer.js/Footer';
import './index.css';

var reactRoot = createRoot(document.getElementById('root'));

function App() {
  return (
    <div>
      <Header />
      <Body />
      <Footer />
    </div>
  );
}
reactRoot.render(<App />);






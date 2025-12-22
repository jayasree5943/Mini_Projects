import React from 'react';
import TopRated from './TopRated';
import Upcoming from './Upcoming';
import Text from './Text';

const Header = () => {
  return (
    <header>
      <h1>MovieDb</h1>
      <nav>
        <TopRated />
        <Upcoming />
      </nav>
     
    </header>
  );
};

export default Header; 

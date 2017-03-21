import React, { Component } from 'react';
import HomeHeader from './HomeHeader';
import About from './About';
import MainFooter from './MainFooter';
import '../stylesheets/main.css';

class Home extends Component {
  render() {
    return (
      <div>
        <HomeHeader />
        <About />
        <MainFooter />
      </div>
    );
  }
}

export default Home;

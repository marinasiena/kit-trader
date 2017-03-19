import React from 'react';
import {render} from 'react-dom';
import KitBuilder from './components/KitBuilder';

class KitBuilder extends React.Component {
  render() {
    return <p>Hello</p>
  }
}

render(<KitBuilder/>, document.getElementById('#duck'));

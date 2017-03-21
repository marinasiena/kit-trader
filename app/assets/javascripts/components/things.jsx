import React from 'react';
import {render} from 'react-dom';

class Things extends React.Component {
  render() {
    return <p>Howdy y'all!</p>
  }
}

render(<Things/>, document.getElementById('duck'));

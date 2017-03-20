import React from 'react';
import {render} from 'react-dom';

class Things extends React.Component {
  render() {
    return <p>Howdy :)</p>
  }
}

render(<Things/>, document.getElementById('duck'));

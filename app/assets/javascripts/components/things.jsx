import React from 'react';
import {render} from 'react-dom';

class Things extends React.Component {
  render() {
    return <p>Awesome!</p>
  }
}

render(<Things/>, document.getElementById('duck'));

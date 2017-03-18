import React from 'react';
import {render} from 'react-dom';

class KitBuilder extends React.Component {
  render() {
    return <p>Hello</p>
  }
}

render(<KitBuilder/>, document.getElementById('#fuck'));

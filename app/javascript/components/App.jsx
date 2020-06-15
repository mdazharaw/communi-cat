// Abandoned react module
import React from "react";
// import { Button } from '@material-ui/core'
// import axios from 'axios'
// import PropTypes from "prop-types"
import {Link, Route} from 'react-router-dom'

export default class App extends React.Component {
  render() {
    return (
      <div>
        <nav>
          <h1>React Router</h1>
          <Link to="/bananas">Bananas</Link>
          <Link to="/oranges">Oranges</Link>
        </nav>
        <main>
          <Route path="/bananas" render={() => <Bananas />} />
          <Route path="/oranges" render={() => <Oranges />} />
        </main>
      </div>
    );
  }
}

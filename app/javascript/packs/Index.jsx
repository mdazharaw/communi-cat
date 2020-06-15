// Abandoned react module
import React from "react";
import ReactDOM from "react-dom";
// import PropTypes from "prop-types";
// import * as Ons from "react-onsenui";
// import * as ons from "onsenui";
import Logo from "../images/Logo.png";
import App from '../components/App';
import { BrowserRouter } from "react-router-dom";


document.addEventListener("DOMContentLoaded", () => {
    ReactDOM.render(<BrowserRouter>
        <App />
      </BrowserRouter>, document.getElementById('app'))}
);

  
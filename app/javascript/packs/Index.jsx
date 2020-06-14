// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from "react";
import ReactDOM from "react-dom";
// import PropTypes from "prop-types";
// import * as Ons from "react-onsenui"; // Import everything and use it as 'Ons.Page', 'Ons.Button'
// import * as ons from "onsenui";
import Framework7 from 'framework7/framework7-lite.esm.bundle.js';
import Framework7React from 'framework7-react';
import Logo from "../images/Logo.png";
import App from './App.jsx';

// Init plugin
Framework7.use(Framework7React)

document.addEventListener("DOMContentLoaded", () => {
ReactDOM.render(
  React.createElement(App),
  document.getElementById('app')
)})
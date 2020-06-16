import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from "prop-types"
class HelloWorld extends React.Component {
  render () {
    return (
      <React.Fragment>
        Sup: {this.props.greeting}
      </React.Fragment>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <HelloWorld name="React" />,
    document.body.appendChild(document.createElement('div')),
  )
})

// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from "react";
import ReactDOM from "react-dom";
import PropTypes from "prop-types";
import * as Ons from "react-onsenui"; // Import everything and use it as 'Ons.Page', 'Ons.Button'
import * as ons from "onsenui";
import Logo from "../images/Logo.png";

class Settings extends React.Component {
  render() {
    return (
      <Ons.Page>
        <h2>Settings</h2>
      </Ons.Page>
    );
  }
}

class PageNav2 extends React.Component {
  renderToolbar() {
    return (
      <Ons.Toolbar>
        <div className='left'><Ons.BackButton>Back</Ons.BackButton></div>
      </Ons.Toolbar>
    );
  }

  render() {
    return (
      <Ons.Page renderToolbar={this.renderToolbar.bind(this)}>
        <Ons.Card>
          <img src={"https://monaca.io/img/logos/download_image_onsenui_01.png"} alt="Onsen UI" style={{ width: '100%' }} />
          <div className="title">{this.props.cardTitle ? this.props.cardTitle : 'Custom Card'}</div>
          <div className="content">
            <div>
              <Ons.Button>
                <Ons.Icon icon="ion-thumbsup"></Ons.Icon>
              </Ons.Button>
              <Ons.Button>
                <Ons.Icon icon="ion-share"></Ons.Icon>
              </Ons.Button>
            </div>
            <Ons.List>
              <Ons.ListHeader>Bindings</Ons.ListHeader>
              <Ons.ListItem>Vue</Ons.ListItem>
              <Ons.ListItem>Angular</Ons.ListItem>
              <Ons.ListItem>React</Ons.ListItem>
            </Ons.List>
          </div>
        </Ons.Card>
      </Ons.Page>
    );
  }
}

class Cards extends React.Component {
  pushPage(event) {
    this.props.navigator.pushPage({ component: PageNav2, props: { key: 'pageNav2', cardTitle: event.target.textContent } });
  }

  render() {
    return (
      <Ons.Page>
        <h2>Cards</h2>
        
        <Ons.ListTitle>Card List</Ons.ListTitle>
        <Ons.List>
          <Ons.ListItem onClick={this.pushPage.bind(this)}>Card One</Ons.ListItem>
          <Ons.ListItem onClick={this.pushPage.bind(this)}>Card Two</Ons.ListItem>
          <Ons.ListItem onClick={this.pushPage.bind(this)}>Card Three</Ons.ListItem>
        </Ons.List>
      </Ons.Page>
    );
  }
}

class PageNav1 extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      title: props.title ? props.title : 'Custom Page',
      nextTitle: null
    };
  }

  renderToolbar() {
    return (
      <Ons.Toolbar>
        <div className='left'><Ons.BackButton>Back</Ons.BackButton></div>
        <div className="center">{this.state.title}</div>
      </Ons.Toolbar>
    );
  }

  pushPage() {
    this.props.navigator.pushPage({ component: PageNav1, props: { key: 'pageNav' + this.props.navigator.routes.length, title: this.state.nexTitle } });
  }

  popPage() {
    this.props.navigator.popPage();
  }

  render() {
    return (
      <Ons.Page renderToolbar={this.renderToolbar.bind(this)}>
        <div style={{ textAlign: 'center' }}>
          <h1>Custom Page</h1>
          <p>
            <Ons.Input modifier="underbar" placeholder="Title" float onChange={evt => this.setState({ nexTitle: evt.target.value })} ></Ons.Input>
          </p>
          <Ons.Button onClick={this.pushPage.bind(this)}>
            Push Page
          </Ons.Button>
          <Ons.Button onClick={this.popPage.bind(this)}>
            Pop Page
          </Ons.Button>
        </div>
      </Ons.Page>
    );
  }
}

class Home extends React.Component {
  pushPage() {
    this.props.navigator.pushPage({ component: PageNav1, props: { key: 'pageNav1' } });
  }

  render() {
    return (
      <Ons.Page>
        <h2>Home</h2>
        <div style={{ textAlign: 'center' }}>
          <br />
          <Ons.Button onClick={this.pushPage.bind(this)}>
            Push Page
          </Ons.Button>
        </div>
      </Ons.Page>
    );
  }
}

class AppTabbar extends React.Component {
  renderToolbar() {
    return (
      <Ons.Toolbar>
        <div className="center">CommuniCat</div>
      </Ons.Toolbar>
    );
  }

  renderTabs(navigator) {
    return [
      {
        content: <Home key="home" navigator={this.props.navigator} />,
        tab: <Ons.Tab key="home" label="Home" icon="ion-home" />
      },
      {
        content: <Cards key="cards" navigator={this.props.navigator} />,
        tab: <Ons.Tab key="cards" label="Cards" icon="ion-card" badge="3" />
      },
      {
        content: <Settings key="settings" />,
        tab: <Ons.Tab key="settings" label="Settings" icon="ion-ios-cog" />
      }
    ];
  }

  render() {
    return (
      <Ons.Page renderToolbar={this.renderToolbar}>
        <Ons.Tabbar position='auto' index={0} renderTabs={this.renderTabs.bind(this)} />
      </Ons.Page>
    );
  }
}

class App extends React.Component {
  renderPage(route, navigator) {
    route.props = route.props || {};
    route.props.navigator = navigator;

    return React.createElement(route.component, route.props);
  }

  render() {
    return (
      <Ons.Navigator initialRoute={{ component: AppTabbar, props: {key: 'appTabbar'} }} renderPage={this.renderPage} />
    );
  }
}

ons.ready(function() {
  ReactDOM.render(<App />, document.getElementById('app'));
});
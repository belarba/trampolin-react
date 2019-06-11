import React from 'react'
import Home from './Home'
import { Route, Switch } from 'react-router-dom'

class App extends React.Component {
  render() {
    return (
      <div>
        <Switch>
          <Route exact path="/crypto" component={Home} />
        </Switch>
      </div>
    )
  }
}

export default App

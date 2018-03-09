import React from 'react';
import { AuthRoute, ProtectedRoute, AddressRequiredRoute } from '../util/route_util';
import { Link, Route, Switch } from 'react-router-dom';
import Header from './header';
import Main from './main';
import RestaurantIndexContainer from './restaurant_index/restaurant_index_container';
import RestaurantShowContainer from './restaurant_show/restaurant_show_container';

const App = () => {
  return (
    <div>
      <Header />
      <Route exact path='/' component={ Main } />
      <AddressRequiredRoute exact path='/restaurants' component={ RestaurantIndexContainer }/>
      <AddressRequiredRoute exact path='/restaurants/:id' component={ RestaurantShowContainer }/>
    </div>
  );
};

export default App;

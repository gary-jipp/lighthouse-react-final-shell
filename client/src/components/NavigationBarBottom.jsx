import React from 'react';
import { Link } from 'react-router-dom';

export default BottomNavigationBar = () => {
  return (
    <div className="bottom-navigation-bar">
      <Link to="/contactUs" className="nav-link">
        Contact Us
      </Link>
      <Link to="/aboutUs" className="nav-link">
        About Us
      </Link>
      <Link to="/signUp" className="nav-link">
        Sign Up
      </Link>
    </div>
  );
};
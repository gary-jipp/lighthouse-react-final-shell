import React from 'react';

import './AboutUs.scss';
import { NavigationBarTop, NavigationBarBottom } from './';

export default AboutUsPage = () => {

  return (
    <div className="about-us-container">
      {/* Top Navigation Bar */}
      <NavigationBarTop />

      {/* Body of the About Us Page */}
      <div className="about-us-body">
        <div className="background-with-pawprints">
          {/* SCSS for styling the pawprints, their placement etc. */}
        </div>
        <div className="about-us-content">
          <h2>About Us</h2>
          <h3>Our Tail Begins Here...</h3>
          <p>
            ...At Muttly, we're the Picasso of Paws, the Da Vinci of Doggos! We're not just a dog company; we're barkitects of the highest pedigree...
            Ever wondered what a Dalmatian and a Husky would look like combined? 
            We did too! 
            Our AI wizards work tirelessly, merging breeds with the precision of a doggy jigsaw puzzle.
            From Beagle-Bernese to Shih Tzu-Shepherd, we're the matchmakers for mutts. 
            Unleash your imagination, create your own breed, and join us in the symphony of barks - where every mutt has its day!
          </p>
        </div>
      </div>
      
      {/* Bottom Navigation Bar */}
      <NavigationBarBottom />
    </div>
  );
};
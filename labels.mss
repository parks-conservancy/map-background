#unit_labels
{
  text-face-name: "Frutiger LT 45 Light Bold";
  text-name: [name];
  text-fill: #000;
  text-opacity: 0.9;
  text-size: 9;
  text-min-distance: 10;
  // text-min-padding: 15;
  text-wrap-width: 32;

  text-placement-type: simple;
  text-placements: "X,S,W,N,E,SW,NE,SE,NE";
  text-dx: 5;
  text-dy: 5;

  [zoom>=12] {
    text-dx: 10;
    text-dy: 10;
    text-size: 11;
  }

  [zoom>=13] {
    text-wrap-width: 48;
    text-size: 12;
  }

  [zoom>=14] {
    text-face-name: "Frutiger LT 45 Light Bold";
    text-halo-fill: @land;
    text-halo-radius: 1.25;
    text-fill: #15984d;
    text-transform: uppercase;
    text-character-spacing: 2;
    text-dx: 32;
    text-dy: 32;
    text-size: 15;
  }

  [zoom>=15] {
    text-size: 16;
  }
}

#highway-labels {
  text-fill: #5a5c5b;
  text-name: "''";
  text-face-name: "Frutiger LT 55 Roman Regular";
  text-placement: line;

  //
  // separated highways
  //
  [highway='motorway']
  {
    [zoom>=12] {
      text-name: [name];
      text-halo-fill: #fcefba;
      text-halo-radius: 1.5;

      text-size: 11;
    }
    
    [zoom>=14] {
      text-size: 13;
      text-spacing: 400;
    }

  }

  //
  // trunk roads
  //
  [highway='trunk']
  {
    [zoom>=12] {
      text-name: [name];
      text-halo-fill: #fcefba;
      text-halo-radius: 1.5;

      text-size: 11;
    }
    
    [zoom>=15] {
      text-size: 13;
      text-spacing: 400;
    }
  }

  //
  // arterials
  //
  [highway='primary'],
  {
    [zoom>=13] {
      text-name: [name];
      text-halo-fill: #fff;
      text-halo-radius: 1.5;

      text-size: 11;
    }
    
    [zoom>=15] {
      text-size: 12;
      text-spacing: 400;
    }
  }

  //
  // minor arterials
  //
  [highway='secondary'],
  [highway='tertiary'],
  {
    [zoom>=13] {
      text-name: [name];
      text-halo-fill: #fff;
      text-halo-radius: 1.5;

      text-size: 11;
    }
    
    [zoom>=15] {
      text-size: 12;
      text-spacing: 400;
    }
  }

  //
  // local roads
  //
  [highway='residential'],
  [highway='service'],
  [highway='unclassified'],
  [highway='road'],
  {
    [zoom>=17] {
      text-name: [name];
      text-halo-fill: #fff;
      text-halo-radius: 1.5;
      text-spacing: 400;

      text-size: 11;
    }
  }
}

#places
{
  text-face-name: "Frutiger LT 45 Light Bold";
  text-name: [name];
  text-fill: #5f4f2a;
  text-opacity: 0.9;
  text-size: 10;
  text-placement: interior;
  // text-spacing: 0;
  text-label-position-tolerance: 5;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 24;
  text-halo-radius: 1.5;
  text-character-spacing: 2;

  text-transform: uppercase;
}

// seem right for zoom 12
#places[place='city']
{
  text-wrap-width: 32;
  text-size: 15;
  text-fill: #262626;
  text-character-spacing: 2;
  text-halo-radius: 1.5;
  
  [population>200000]
  {
    text-face-name: "Frutiger LT 55 Roman Bold";
    text-size: 18;
    text-wrap-width: 48;
    text-character-spacing: 3;
  }
}

#places[place='town']
{
  text-halo-radius: 1.5;
  text-character-spacing: 2;
  text-wrap-width: 32;
  text-size: 12;
  text-fill: #262626;
  
  [zoom>=13] {
    text-size: 14;
  }
}

#places[place='suburb']
{
  text-character-spacing: 1;
  text-size: 11;
}

#places[place='neighbourhood']
{
  text-face-name: "Frutiger LT 55 Roman Regular";

  [zoom>=12] {
    text-size: 9;
  }
  
  [zoom>=14] {
    text-size: 10;
  }
}

#places[place='village']
{
}

#places[place='hamlet']
{
}

#places[place='locality'],
#places[place='locale'],
{
}

#places[place='island']
{
}


#bay,
#places[place='islet'],
#places[place='island']
{
  text-face-name: "Frutiger LT 55 Roman Italic";
  text-name: [name];
  text-fill: #00a6da;
  text-size: 11;
  text-placement: interior;
  text-transform: uppercase;
  text-character-spacing: 4;
  // text-spacing: 0;
  // text-character-spacing: 1;
  text-label-position-tolerance: 5;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 42;
  text-halo-radius: 1.5;
  text-halo-fill: @water;
  
  [zoom>=14] {
    text-size: 12;
  }
  
  [zoom>=15] {
    text-size: 15;
  }
}

#water-labels[areasqkm>1],
{
  text-face-name: "Roboto Italic";
  text-name: [name];
  text-fill: #00a6da;
  text-size: 10;
  text-placement: interior;
  // text-spacing: 0;
  // text-character-spacing: 1;
  text-label-position-tolerance: 5;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 24;
  text-halo-radius: 1;
  text-halo-fill: @water;
}

#cpad-labels
{
  text-face-name: "Roboto Regular";
  text-name: [name];
  text-fill: #169d50;
  text-opacity: 1;
  text-size: 11;
  text-placement: interior;
  // text-spacing: 0;
  // text-character-spacing: 1;
  text-label-position-tolerance: 5;
  text-min-distance: 50;
  text-min-padding: 50;
  text-wrap-width: 24;
  /*
  text-halo-radius: 1;
  */
}

@land: #f8f7ed;
@water: #e0f3f8;
@coastline: #58baef;
@marsh: #ecf1de;
@beach: #eed7b4;
@park: #f3ebc4;
@managed_park: #dce8cb;
@school: #e6e2dc;

Map {
  background-color: @land;
  buffer-size: 384;
  font-directory: url("fonts/");
}

#water {
  polygon-fill: @water;

  [ftype=466] {
    polygon-fill: @marsh;
  }
}

#land {
  polygon-fill: @land;
}

#foreshore,
#beach {
  polygon-fill: @beach;
}

#coastline {
  line-color: @coastline;
  line-width: 0.25;

  [zoom>=12] {
    line-width: 0.75;
  }

  [zoom>=14] {
    line-width: 1.5;
  }
}

#cpad_units {
  polygon-fill: @park;

  [zoom>=15] {
    polygon-smooth: 0.5;
  }
}

#park_units {
  polygon-fill: @managed_park;

  [zoom>=15] {
    polygon-smooth: 0.5;
  }
}

#offshore-boundaries {
  line-color: #6eac77;
  line-opacity: 0.5;
  line-width: 0.25;
  line-dasharray: 5, 2;

  [zoom>=12] {
    line-width: 0.5;
  }
  
  [zoom>=13] {
    line-width: 0.7;
  }

  [zoom>=14] {
    line-dasharray: 10, 2, 2, 2;
    line-width: 0.5;
  }
  
  [zoom>=15] {
    line-width: 1;
    line-dasharray: 15, 2, 3.5, 2;
  }
  
  [zoom>=14] {
    line-width: 2;
  }
}

#parking
{
  polygon-fill: #f5f5e4;
  
  [zoom>=16] {
    polygon-smooth: 0.5;
  }
}

#school
{
  polygon-fill: @school;
}

#trails {
  line-width: 0;
  line-join: miter;
  line-cap: round;

  // remove noise by simplifying to 10m
  line-simplify: 10;
  line-simplify-algorithm: visvalingam-whyatt;

  // fully smooth
  line-smooth: 1;

  line-color: pink;

  [use_type='Hiking'] {
    line-color: brown;
  }

  [use_type='Multi-Use'] {
    line-color: green;
  }

  [use_type='Hiking and Horses'] {
    line-color: orange;
  }

  [use_type='Hiking and Bikes'] {
    line-color: blue;
  }

  [use_type='CLOSED'] {
    line-dasharray: 5,5;
    line-opacity: 0.5;
  }

  [zoom>=13] {
    line-width: 0.25;
  }

  [zoom>=14] {
    line-width: 0.75;
  }

  [zoom>=15] {
    line-width: 2;
    line-simplify: 0;
  }
}

#trail-labels {
  text-fill: #5a5c5b;
  text-halo-radius: 1.5;
  text-halo-fill: @land;
  text-size: 11;
  text-dy: 8;
  text-name: [trail_name];
  text-face-name: "Frutiger LT 45 Light Bold";
  text-placement: line;
}

#dual-carriageways {
  line-width: 1;
  line-color: #fc0;
}

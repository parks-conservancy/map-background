@land: #f8f7ed;
@water: #e0f3f8;
@coastline: #58baef;
@marsh: #70FFA9;
@beach: #eed7b4;
@park: #f3ebc4;
@managed_park: #dce8cb;
@school: #e6e2dc;

Map {
  background-color: @land;
  buffer-size: 128;
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
  line-width: 1.5;
}

#cpad_units {
  polygon-fill: @park;
}

#park_units {
  polygon-fill: @managed_park;
}

#sports {
  marker-fill: blue;
  marker-allow-overlap: true;
  marker-ignore-placement: true;
  marker-placement: interior;
}

/*
#lighthouses {
  ::box {
    marker-fill: #333;
    marker-allow-overlap: true;
    marker-ignore-placement: true;
    marker-width: 45;
    marker-height: 45;
  }

  text-allow-overlap: true;
  text-face-name: "Symbola Medium";
  text-name: "'ↅ'"; // &#2185; (lighthouse)
  text-fill: #fff;
  text-size: 24;
}
*/

#lighthouses {
    shield-file: url("images/box20px.png");
    shield-name: "'ↅ'"; // &#2185; (lighthouse)
    shield-face-name: 'Symbola Medium';
    shield-size: 13;
    shield-fill: #fff;
    shield-text-dy: 2.2;
  }

#locations {
  text-face-name: "Symbola Medium";
  text-name: "''";
  text-fill: #666;
  text-size: 14;
  text-min-distance: 25;
  text-min-padding: 50;
  text-halo-radius: 1;

  [type='Access'] {
    text-name: "'↥'"; // &#x21a5; (person)
  }

  [type='Beach'] {
    text-name: "'↔'"; // &#x2194; (kid on beach)
  }

  [type='Bike Rack'] {
    text-name: "'⇠'"; // &#x21e0; (bike)
  }

  [type='Building'] {
    text-name: "'Ⅹ'"; // &#x2169; (building)
  }

  [type='Cafe'] {
    text-name: "'ℰ'"; // &#x2130; (cafe)
  }

  [type='Campground'] {
    text-name: "'⇢'"; // &#x21e2; (tent)
  }

  [type='Meeting Place'] {
    text-name: "'⇁'"; // &#x21c1; (amphitheater)
  }

  [type='Overlook'] {
    text-name: "'⇨'"; // &#x21e8; (telescope)
  }

  [type='Park'] {
    text-name: "'⅊'"; // &#x214a; (tree)
    text-size: 24;
  }

  [type='Parking Lot'] {
    text-name: "'ℨ'"; // &#x2128; (P)
    text-size: 10;
  }

  [type='Restoration Site'] {
    text-name: "'↣'"; // &#x21a3; (person with branches)
  }

  [type='Restroom'] {
    text-name: "'№'"; // &#x2116; (restroom)
  }

  [type='Site of Interest'] {
    text-name: "'↦'"; // &#x21a6; (arrow pointing at *)
  }

  [type='Trailhead'] {
    text-name: "'↚'"; // &#x219a; (hiker)
  }

  [type='Water Fountain'] {
    text-name: "'Ω'"; // &#x2126; (water fountain)
    // alternately, glass of water: &#x21e1;
  }

  [type='Visitor Center'] {
    text-name: "'Å'"; // &#x212b; (information)
    // text-name: "'↌'"; // &#x218c; (ranger station)
  }
}

#unit_labels
{
  text-face-name: "Roboto Bold";
  text-name: [name];
  text-fill: #169d50;
  text-opacity: 0.9;
  text-size: 14;
  text-placement: interior;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  /*
  text-halo-radius: 1;
  */
}

#school
{
  polygon-fill: @school;
}

#trails {
  ::stroke {
    line-color: lighten(#7e4c39, 30%);
    line-width: 0;
    line-join: miter;
    line-cap: round;
  }

  line-width: 0;
  line-join: miter;
  line-cap: round;

  [zoom>=13] {
    line-color: lighten(#7e4c39, 40%);
    line-width: 0.5;
  }

  [zoom>=14] {
    line-color: lighten(#7e4c39, 30%);
    line-width: 0.5;
  }

  [zoom>=15] {
    ::stroke {
      line-width: 3;
    }

    line-color: lighten(#7e4c39, 40%);
    line-width: 2;
    line-dasharray: 10, 2;
  }
}

#dual-carriageways {
  line-width: 1;
  line-color: #fc0;
}

#highway-labels {
  [highway='motorway']
  {
    [zoom>=14] {
      text-fill: #5a5c5b;
      text-name: [name];
      text-face-name: "Frutiger LT 55 Roman Regular";
      text-placement: line;

      text-size: 14;
    }

    [zoom>=15] {
      text-size: 18;
    }
  }

  [highway='trunk']
  {
    [zoom>=14] {
      text-fill: #5a5c5b;
      text-name: [name];
      text-face-name: "Frutiger LT 55 Roman Regular";
      text-placement: line;

      text-size: 14;
    }
  }

  //
  // arterials
  //
  [highway='primary'],
  {
    [zoom>=14] {
      text-fill: #5a5c5b;
      text-name: [name];
      text-face-name: "Frutiger LT 55 Roman Regular";
      text-placement: line;

      text-size: 12;
    }
  }

  //
  // minor arterials
  //
  [highway='secondary'],
  [highway='tertiary'],
  {
    [zoom>=14] {
      text-fill: #5a5c5b;
      text-name: [name];
      text-face-name: "Frutiger LT 55 Roman Regular";
      text-placement: line;

      text-size: 12;
    }
  }

  //
  // local roads
  //
  [highway='residential'],
  [highway='residential_link'],
  [highway='service'],
  [highway='unclassified'],
  [highway='road'],
  {
    [zoom>=14] {
      text-fill: #5a5c5b;
      text-name: [name];
      text-face-name: "Frutiger LT 55 Roman Regular";
      text-placement: line;

      text-size: 12;
    }
  }
}

#places
{
  text-face-name: "Frutiger LT 55 Roman Regular";
  text-name: [name];
  text-fill: #5f4f2a;
  text-opacity: 0.9;
  text-size: 10;
  text-placement: interior;
  // text-spacing: 0;
  // text-character-spacing: 1;
  text-label-position-tolerance: 5;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 24;
  text-halo-radius: 1;
}

#places[place='city']
{
  text-size: 15;
  text-fill: #262626;
  
  [population>200000]
  {
    text-face-name: "Roboto Bold";
  }
}

#places[place='town']
{
  text-size: 14;
  text-fill: #262626;
}

#places[place='suburb']
{
  text-size: 11;
}

#places[place='neighborhood']
{
  text-size: 11;
}

#places[place='village']
{
  text-size: 11;
}

#places[place='hamlet']
{
  text-size: 10;
}

#bay
{
  text-face-name: "Roboto Italic";
  text-name: [name];
  text-fill: #00a6da;
  text-size: 11;
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

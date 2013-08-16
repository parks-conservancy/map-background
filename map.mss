@land: #f5f4ea;
@water: #e0f3f8;
@coastline: #58baef;
@marsh: #70FFA9;
@beach: #eed7b4;
@park: #e2edda;
@managed-park: #c2dbaa;
@school: #e6e2dc;

@controlled-access: #fc9e36;
@controlled-access-stroke: #f5f4ea;

@highway: #fee273;
@highway-stroke: #cfa18f;

@arterial: #fff;
@arterial-stroke: #cfd0d2;

@minor-arterial: #fff;
@minor-arterial-stroke: #cfd0d2;

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
  polygon-fill: @managed-park;
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
    shield-file: url("images/box28px.png");
    shield-name: "'ↅ'"; // &#2185; (lighthouse)
    shield-face-name: 'Symbola Medium';
    shield-size: 16;
    shield-fill: #fff;
    shield-text-dy: 2.2;
    /*
    shield-halo-radius: 1;
    shield-halo-fill: @land;
    shield-spacing: 400;
    shield-min-distance: 200;
    shield-wrap-width: 30;
    */
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
  line-color: #fc0;
  line-width: 2.5;
}

#road
{
  ::stroke {
    line-color: transparent;
    line-width: 0;

    line-join: miter;
    line-cap: round;
  }

  line-join: miter;
  line-cap: round;
  
  line-color: #ccc;
  line-width: 0.35;
  
  /* controlled access highways */
  [highway='motorway'],
  [highway='motorway_link'], // TODO narrower
  {
    ::stroke {
      line-color: #cfa18f;
      line-width: 0;

      [zoom>=6] {
        line-width: 1;
      }

      [zoom>=8] {
        line-width: 3;
      }

      [zoom>=11] {
        line-width: 4;
      }

      [zoom>=15] {
        line-width: 7;
      }

      [zoom>=16] {
        line-width: 12;
      }

      [zoom>=17] {
        line-width: 13;
      }
    }
    
    line-color: @controlled-access;
    line-width: 0;

    [zoom>=6] {
      line-width: 0.5;
    }

    [zoom>=8] {
      line-width: 1.5;
    }

    [zoom>=9] {
      line-width: 2;
    }

    [zoom>=15] {
      line-width: 5;
    }

    [zoom>=16] {
      line-width: 10;
    }

    [zoom>=17] {
      line-width: 11;
    }
  }

  /* trunk highways */
  [highway='trunk'],
  [highway='trunk_link'], // TODO narrower
  {
    ::stroke {
      line-color: @highway-stroke;
      line-width: 0;

      [zoom>=8] {
        line-width: 1;
      }

      [zoom>=9] {
        line-width: 2;
      }

      [zoom>=10] {
        line-width: 3;
      }

      [zoom>=12] {
        line-width: 4;
      }

      [zoom>=13] {
        line-width: 5;
      }

      [zoom>=15] {
        line-width: 12;
      }

      [zoom>=16] {
        line-width: 15;
      }

      [zoom>=17] {
        line-width: 20;
      }
    }
    
    line-color: @highway;
    line-width: 0;

    [zoom>=6] {
      line-width: 0.5;
    }

    [zoom>=7] {
      line-width: 1;
    }

    [zoom>=8] {
      /* color changes */
    }

    [zoom>=10] {
      line-width: 1.5;
    }

    [zoom>=12] {
      line-width: 2;
    }

    [zoom>=13] {
      line-width: 3;
    }

    [zoom>=15] {
      line-width: 10;
    }

    [zoom>=16] {
      line-width: 13;
    }

    [zoom>=17] {
      line-width: 17;
    }
  }

  /* major arterial */
  [highway='primary'],
  [highway='primary_link'], // TODO narrower
  {
    ::stroke {
      line-color: @arterial-stroke;
      line-width: 0;

      [zoom>=9] {
        line-width: 3;
      }

      [zoom>=12] {
        line-width: 4;
      }

      [zoom>=14] {
        line-width: 5;
      }

      [zoom>=15] {
        line-width: 8;
      }

      [zoom>=16] {
        line-width: 12;
      }

      [zoom>=17] {
        line-width: 15;
      }
    }
    
    line-color: @arterial;
    line-width: 0;

    [zoom>=9] {
      line-width: 1;
    }

    [zoom>=12] {
      line-width: 2;
    }

    [zoom>=14] {
      line-width: 3;
    }

    [zoom>=15] {
      line-width: 6;
    }

    [zoom>=16] {
      line-width: 10;
    }

    [zoom>=17] {
      line-width: 13;
    }
  }

  /* minor arterial, e.g. Noriega St. */
  [highway='secondary'],
  [highway='secondary_link'],
  [highway='tertiary'],
  [highway='tertiary_link'],
  {
    ::stroke {
      line-color: @minor-arterial-stroke;
      line-width: 1.5;

      [zoom>=9] {
            line-width: 1.5;
      }
    }
      
    line-color: @minor-arterial;
    line-width: 1;
      
    [zoom>=9] {
      line-width: 1.5;
    }
  }
}

#highway-labels {
 [zoom>=14]
  {
    text-fill: #000;
    text-size: 10;
    text-name: [name];
    text-face-name: "Roboto Regular";
    text-placement: line;
    text-dy: -5;
    /*
    text-halo-radius: 1;
    text-halo-fill: #cfa18f;
    text-opacity: 0.9;
    
    text-min-distance: 15;
    text-min-padding: 15;
    */

    [highway='motorway']
  	{
      text-size: 14;
    }
  
  	[highway='primary'],
  	[highway='secondary'],
  	{
      text-size: 9;
  	}
    
  }
}

#places
{
  text-face-name: "Roboto Regular";
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

#lighthouses {
  [zoom>=14] {
    shield-file: url("images/box20px.png");
    shield-name: "'ↅ'"; // &#2185; (lighthouse)
    shield-face-name: 'Symbola Medium';
    shield-size: 13;
    shield-fill: #fff;
    shield-text-dy: 2.2;
  }
}

#locations {
/*
  ::label {
    text-fill: #333;
    text-face-name: "Frutiger LT 45 Light Bold";
    text-name: "''";
    text-transform: uppercase;
    text-min-padding: 10;
    text-min-distance: 2.5;
    text-wrap-width: 32;

    text-placement-type: simple;
    text-placements: "X,S,W,N,E,SW,NE,SE,NE";
  }
  */

  shield-file: url("images/px.png");
  shield-size: 1;
  shield-fill: #fff;
  shield-text-dy: 2.2;

  shield-face-name: "Symbola Medium";
  shield-name: "''";
  shield-min-distance: 25;
  shield-min-padding: 50;

  [type='Access'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'↥'"; // &#x21a5; (person)

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }

  [type='Beach'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'↔'"; // &#x2194; (kid on beach)

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }

  [type='Bike Rack'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'⇠'"; // &#x21e0; (bike)

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }

  [type='Building'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'Ⅹ'"; // &#x2169; (building)

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }

  [type='Cafe'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'ℰ'"; // &#x2130; (cafe)

      shield-size: 14;
      shield-text-dy: 0;
    }

    [zoom>=15] {
    /*
      ::label {
        text-name: [name];
        text-transform: uppercase;
      }
      */

      shield-size: 16;
    }
  }

  [type='Campground'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'⇢'"; // &#x21e2; (tent)

      shield-size: 14;
    }

    [zoom>=15] {
      ::label {
        text-fill: #333;
        text-face-name: "Frutiger LT 45 Light Bold";
        text-transform: uppercase;
        text-min-padding: 0;
        text-min-distance: 0;
        text-wrap-width: 32;

        text-name: [name];
        text-dx: 12;
        text-placement-type: simple;
        text-placements: "E,W";
      }

      shield-size: 16;
      shield-min-distance: 0;
      shield-min-padding: 0;
      shield-dy: -4.75;
    }
  }

  [type='Meeting Place'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'⇁'"; // &#x21c1; (amphitheater)

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }

  [type='Overlook'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'⇨'"; // &#x21e8; (telescope)

      shield-size: 14;
    }

    [zoom>=15] {
      ::label {
        text-fill: #333;
        text-face-name: "Frutiger LT 45 Light Bold";
        text-transform: uppercase;
        text-min-padding: 0;
        text-min-distance: 0;
        text-wrap-width: 48;

        text-name: [name];
        text-dx: 12;
        text-dy: -4.75;
        text-placement-type: simple;
        text-placements: "W,E";
      }

      shield-size: 16;
      shield-min-distance: 0;
      shield-min-padding: 0;
      shield-dy: -4.75;
    }
  }

  [type='Park'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'⅊'"; // &#x214a; (tree)

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }

  [type='Parking Lot'] {
    [zoom>=15] {
      shield-file: url("images/box20px.png");

      shield-name: "'ℨ'"; // &#x2128; (P)
      shield-size: 12;
    }
  }

  [type='Restoration Site'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'↣'"; // &#x21a3; (person with branches)

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }

  [type='Restroom'] {
    [zoom>=16] {
      shield-file: url("images/box20px.png");
      shield-name: "'№'"; // &#x2116; (restroom)

      shield-size: 16;
    }
  }

  [type='Site of Interest'] {
    [zoom>=14] {
      ::marker {
        marker-width: 5;
        marker-height: 5;
        marker-fill: #333;
        marker-line-width: 0;
      }
    }

    [zoom>=15] {
      ::label {
        text-fill: #333;
        text-face-name: "Frutiger LT 45 Light Bold";
        text-transform: uppercase;
        text-min-padding: 0;
        text-min-distance: 0;
        text-wrap-width: 48;

        text-name: [name];
        text-dx: 6;
        text-placement-type: simple;
        text-placements: "W,E,N,S";
      }
    }
  }

  [type='Trailhead'] {
    [zoom>=13] {
      shield-file: url("images/box20px.png");
      shield-name: "'↚'"; // &#x219a; (hiker)

      shield-size: 14;
    }

    [zoom>=15] {
      ::label {
        text-fill: #333;
        text-face-name: "Frutiger LT 45 Light Bold";
        text-transform: uppercase;
        text-min-padding: 0;
        text-min-distance: 0;
        text-wrap-width: 32;

        text-name: [name];
        text-dx: 12;
        text-placement-type: simple;
        text-placements: "E,W";
      }

      shield-size: 16;
      shield-min-distance: 0;
      shield-min-padding: 0;
      shield-dy: -5.5;
    }
  }

  [type='Water Fountain'] {
    [zoom>=16] {
      shield-file: url("images/box20px.png");
      shield-name: "'Ω'"; // &#x2126; (water fountain)
      // alternately, glass of water: &#x21e1;

      shield-size: 16;
    }
  }

  [type='Visitor Center'] {
    [zoom>=14] {
      ::label {
        text-fill: #333;
        text-face-name: "Frutiger LT 45 Light Bold";
        text-transform: uppercase;
        text-min-padding: 0;
        text-min-distance: 0;
        text-wrap-width: 56;

        text-name: [name];
        text-dx: 12;
        text-placement-type: simple;
        text-placements: "E,W";
      }

      shield-file: url("images/box20px.png");

      // shield-name: "'Å'"; // &#x212b; (information)
      shield-name: "'↌'"; // &#x218c; (ranger station)

      shield-size: 14;
      shield-min-distance: 0;
      shield-min-padding: 0;
      shield-dy: -4.75;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }
}


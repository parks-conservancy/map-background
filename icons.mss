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
      shield-size: 16;
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
      shield-size: 16;
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
    [zoom>=14] {
      shield-file: url("images/box20px.png");

      shield-name: "'ℨ'"; // &#x2128; (P)
      shield-size: 10;
    }

    [zoom>=15] {
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
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'№'"; // &#x2116; (restroom)

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }

  [type='Site of Interest'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'↦'"; // &#x21a6; (arrow pointing at *)

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }

  [type='Trailhead'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'↚'"; // &#x219a; (hiker)

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }

  [type='Water Fountain'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");
      shield-name: "'Ω'"; // &#x2126; (water fountain)
      // alternately, glass of water: &#x21e1;

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }

  [type='Visitor Center'] {
    [zoom>=14] {
      shield-file: url("images/box20px.png");

      // shield-name: "'Å'"; // &#x212b; (information)
      shield-name: "'↌'"; // &#x218c; (ranger station)

      shield-size: 14;
    }

    [zoom>=15] {
      shield-size: 16;
    }
  }
}


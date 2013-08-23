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
  [type='Cafe'] {
    [zoom=15] {
      point-file: url("images/cafe_16x16px.png");
    }

    [zoom>=16] {
      shield-fill: #333;
      shield-text-dx: 0.1;
      shield-text-dy: -12;
      shield-wrap-width: 48;
      shield-face-name: "Frutiger LT 45 Light Bold";
      shield-name: [name];
      shield-min-distance: 5;
      shield-min-padding: 5;
      shield-file: url("images/cafe_32x16px.png");
      shield-unlock-image: true;
      shield-size: 10;

      point-file: url("images/cafe_16x16px.png");
    }
  }

  [type='Campground'] {
    [zoom=14] {
      point-file: url("images/campground_16x16px.png");
    }

    [zoom>=15] {
      shield-fill: #333;
      shield-halo-fill: @land;
      shield-halo-radius: 0.75;
      shield-text-dx: 0.1;
      shield-text-dy: -12;
      shield-wrap-width: 32;
      shield-face-name: "Frutiger LT 45 Light Bold";
      shield-name: [name];
      shield-min-distance: 5;
      shield-min-padding: 5;
      shield-file: url("images/campground_32x16px.png");
      shield-unlock-image: true;
      shield-size: 10;

      point-file: url("images/campground_16x16px.png");
    }
  }

  [type='Overlook'] {
    [zoom=14] {
      point-file: url("images/overlook_16x16px.png");
    }

    [zoom>=15] {
      shield-fill: #333;
      shield-halo-fill: @land;
      shield-halo-radius: 0.75;
      shield-text-dx: 0.1;
      shield-text-dy: -12;
      shield-wrap-width: 40;
      shield-face-name: "Frutiger LT 45 Light Bold";
      shield-name: [name];
      shield-min-distance: 5;
      shield-min-padding: 5;
      shield-file: url("images/overlook_32x16px.png");
      shield-unlock-image: true;
      shield-size: 10;

      point-file: url("images/overlook_16x16px.png");
    }
  }
  [type='Parking Lot'] {
    [zoom>=16] {
      point-file: url("images/parkinglot_16x16px.png");
    }
  }

  [type='Restroom'] {
    [zoom>=16] {
      point-file: url("images/restroom_16x16px.png");
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
        text-halo-fill: @land;
        text-halo-radius: 0.75;
        text-face-name: "Frutiger LT 45 Light Bold";
        /*
        text-transform: uppercase;
        */
        text-min-padding: 0;
        text-min-distance: 0;
        text-wrap-width: 48;

        text-size: 10;
        text-placement-type: simple;
        text-name: [name];
        text-dx: 7;
        text-placements: "W,E,N,S";
      }
    }
  }

  [type='Trailhead'] {
    [zoom>=13] {
      point-file: url("images/trailhead_16x16px.png");
    }
  }

  [type='Water Fountain'] {
    [zoom>=16] {
      point-file: url("images/waterfountain_16x16px.png");
    }
  }

  [type='Visitor Center'] {
    [zoom>=14] {
      shield-fill: #333;
      shield-halo-fill: @land;
      shield-halo-radius: 0.75;
      shield-text-dx: 0.1;
      shield-text-dy: -12;
      shield-wrap-width: 40;
      shield-face-name: "Frutiger LT 45 Light Bold";
      shield-name: [name];
      shield-min-distance: 5;
      shield-min-padding: 5;
      shield-file: url("images/visitors_32x16px.png");
      shield-unlock-image: true;
      shield-size: 10;

      point-file: url("images/visitors_16x16px.png");
    }
  }
}


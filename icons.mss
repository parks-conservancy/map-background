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
      point-file: url("images/cafe_14x14px.png");
    }

    [zoom>=16] {
      shield-fill: #333;
      shield-text-dx: 0.1;
      shield-text-dy: -12;
      shield-wrap-width: 48;
      shield-face-name: "Frutiger LT 55 Roman Regular";
      shield-name: [name];
      shield-min-distance: 5;
      shield-min-padding: 5;
      shield-file: url("images/cafe_32x16px.png");
      shield-unlock-image: true;
      shield-size: 10;

      point-file: url("images/cafe_16x16px.png");
    }
    
    [zoom>=17] {
      shield-size: 12;
      shield-wrap-width: 60;
    }
    
    [zoom>=18] {
      shield-face-name: "Frutiger LT 45 Light Bold";
      shield-size: 13;
    }
  }

  [type='Campground'] {
    [zoom=14] {
      point-file: url("images/campground_14x14px.png");
    }

    [zoom>=15] {
      shield-fill: #333;
      shield-halo-fill: @land;
      shield-halo-radius: 0;
      shield-text-dx: 0.1;
      shield-text-dy: -12;
      shield-wrap-width: 32;
      shield-face-name: "Frutiger LT 55 Roman Regular";
      shield-name: [name];
      shield-min-distance: 5;
      shield-min-padding: 5;
      shield-file: url("images/campground_28x14px.png");
      shield-unlock-image: true;
      shield-size: 11;
    }
    
    [zoom>=16] {
      shield-file: url("images/campground_32x16px.png");
      shield-face-name: "Frutiger LT 45 Light Bold";
      shield-size: 12;
      
      point-file: url("images/campground_16x16px.png");
    }
    
    [zoom>=17] {
      shield-size: 13;
      shield-wrap-width: 50;
    }
  }

  [type='Overlook'] {
    [zoom=14] {
      point-file: url("images/overlook_14x14px.png");
    }

    [zoom>=15] {
      shield-fill: #333;
      shield-halo-fill: @land;
      shield-halo-radius: 0;
      shield-text-dx: 0.1;
      shield-text-dy: -12;
      shield-wrap-width: 40;
      shield-face-name: "Frutiger LT 55 Roman Regular";
      shield-name: [name];
      shield-min-distance: 5;
      shield-min-padding: 5;
      shield-file: url("images/overlook_28x14px.png");
      shield-unlock-image: true;
      shield-size: 11;

      point-file: url("images/overlook_14x14px.png");
    }
    
    [zoom>=16] {
      shield-size: 12;
      shield-face-name: "Frutiger LT 55 Roman Bold";
      shield-file: url("images/overlook_32x16px.png");
      
      point-file: url("images/overlook_16x16px.png");
    }
    
    [zoom>=17] {
      shield-size: 13;
      shield-wrap-width: 50;
    }
  }
  [type='Parking Lot'] {
    [zoom>=16] {
      point-file: url("images/parkinglot_11x11px.png");
    }
    
    [zoom>=17] {
      point-file: url("images/parkinglot_14x14px.png");
    }
    
    [zoom>=18] {
      point-file: url("images/parkinglot_16x16px.png");
    }
  }

  [type='Restroom'] {
    [zoom>=15] {
      point-file: url("images/restroom_14x14px.png");
    }
    
    [zoom>=16] {
      point-file: url("images/restroom_16x16px.png");
    }
  }

  [type='Site of Interest'] {
    [zoom=14] {
      marker-width: 5;
      marker-height: 5;
      marker-fill: #333;
      marker-line-width: 0;
    }

    [zoom>=15] {
      marker-width: 5;
      marker-height: 5;
      marker-fill: #333;
      marker-line-width: 0;

      text-fill: #333;
      text-halo-fill: @land;
      text-halo-radius: 0;
      text-face-name: "Frutiger LT 55 Roman Regular";
      /*
      text-transform: uppercase;
      */
      text-min-padding: 0;
      text-min-distance: 0;
      text-wrap-width: 48;

      text-size: 11;
      text-placement-type: simple;
      text-name: [name];
      text-dx: 7;
      text-placements: "W,E,N,S";
    }
    
    [zoom>=16] {
      text-size: 12;
      text-face-name: "Frutiger LT 45 Light Bold";
    }
    
    [zoom>=17] {
      text-size: 13;
      text-face-name: "Frutiger LT 55 Roman Bold";
      text-wrap-width: 60;
    }
  }

  [type='Trailhead'] {
    [zoom>=13] {
      point-file: url("images/trailhead_14x14px.png");
    }
    
    [zoom>=16] {
      point-file: url("images/trailhead_16x16px.png");
    }
  }

  [type='Water Fountain'] {
    [zoom>=16] {
      point-file: url("images/waterfountain_16x16px.png");
    }
  }

  [type='Visitor Center'] {
    [zoom>=13] {
      shield-fill: #333;
      shield-halo-fill: @land;
      shield-halo-radius: 0;
      shield-text-dx: 1;
      shield-text-dy: -12;
      shield-wrap-width: 40;
      shield-face-name: "Frutiger LT 55 Roman Regular";
      shield-name: [name];
      shield-min-distance: 5;
      shield-min-padding: 5;
      shield-file: url("images/visitors_28x14px.png");
      shield-unlock-image: true;
      shield-size: 11;

      point-file: url("images/visitors_14x14px.png");
    }
    
    [zoom>=16] {
      shield-size: 12;
      shield-face-name: "Frutiger LT 45 Light Bold";
      shield-file: url("images/visitors_32x16px.png");
      
      point-file: url("images/visitors_16x16px.png");
    }
    
    [zoom>=17] {
      shield-size: 13;
    }
  }
}


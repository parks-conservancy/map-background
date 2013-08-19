@controlled_access: #fc9e36;
@controlled_access_stroke: #cfa18f;

@highway: #fee273;
@highway_stroke: #cfa18f;

@arterial: #fff;
@arterial_stroke: #cfd0d2;

@minor_arterial_low_zoom: #cfc7bb;
@minor_arterial: #fff;
@minor_arterial_stroke: #cfd0d2;

@local_road_low_zoom: #cfc7bb;
@local_road: #fff;
@local_road_stroke: #cfd0d2;

#road
{
  ::stroke {
    line-color: transparent;
    line-width: 0;
    line-join: miter;
    line-cap: round;
  }

  line-color: transparent;
  line-width: 0;
  line-join: miter;
  line-cap: round;
  
  /* controlled access highways */
  [highway='motorway'],
  {
    ::stroke {
      line-color: @controlled_access_stroke;
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
    
    line-color: @controlled_access;
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

  //
  // highway on/off ramps
  //
  [highway='motorway_link'],
  {
    ::stroke {
      line-color: @highway_stroke;
      line-width: 0;

      [zoom>=14] {
        line-width: 2.5;
      }

      [zoom>=15] {
        line-width: 4;
      }

      [zoom>=16] {
        line-width: 5;
      }

      [zoom>=17] {
        line-width: 8;
      }
    }

    line-color: @highway;
    line-width: 0;

    [zoom>=14] {
      line-width: 2;
    }

    [zoom>=15] {
      line-width: 3.5;
    }

    [zoom>=16] {
      line-width: 4.5;
    }

    [zoom>=17] {
      line-width: 7.5;
    }
  }

  /* trunk highways */
  [highway='trunk'],
  {
    ::stroke {
      line-color: @highway_stroke;
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

  //
  // trunk links
  //
  [highway='trunk_link'],
  {
    ::stroke {
      line-color: @highway_stroke;
      line-width: 0;

      [zoom>=14] {
        line-width: 3;
      }

      [zoom>=15] {
        line-width: 4;
      }

      [zoom>=16] {
        line-width: 5;
      }

      [zoom>=17] {
        line-width: 8;
      }
    }

    line-color: @highway;
    line-width: 0;

    [zoom>=14] {
      line-width: 2.5;
    }

    [zoom>=15] {
      line-width: 3.5;
    }

    [zoom>=16] {
      line-width: 4.5;
    }

    [zoom>=17] {
      line-width: 7.5;
    }
  }

  /* major arterial */
  [highway='primary'],
  {
    ::stroke {
      line-color: @arterial_stroke;
      line-width: 0;

      [zoom>=9] {
        line-width: 2;
      }

      [zoom>=11] {
        line-width: 3.5;
      }

      [zoom>=14] {
        line-width: 4.5;
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

    [zoom>=11] {
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

  [highway='primary_link'],
  [highway='secondary_link'],
  [highway='tertiary_link'],
  {
    ::stroke {
      line-color: @arterial_stroke;
      line-width: 0;

      [zoom>=14] {
        line-width: 3.5;
      }

      [zoom>=15] {
        line-width: 4.5;
      }

      [zoom>=16] {
        line-width: 5.5;
      }

      [zoom>=17] {
        line-width: 8.5;
      }
    }

    line-color: @arterial;
    line-width: 0;

    [zoom>=14] {
      line-width: 2.5;
    }

    [zoom>=15] {
      line-width: 3.5;
    }

    [zoom>=16] {
      line-width: 4.5;
    }

    [zoom>=17] {
      line-width: 7.5;
    }
  }

  //
  // minor arterials
  //
  [highway='secondary'],
  [highway='tertiary'],
  {
    ::stroke {
      line-color: @minor_arterial_stroke;
      line-width: 0;

      [zoom>=12] {
        line-width: 2.5;
      }

      [zoom>=14] {
        line-width: 4;
      }

      [zoom>=15] {
        line-width: 7;
      }

      [zoom>=16] {
        line-width: 11;
      }

      [zoom>=17] {
        line-width: 14;
      }
    }
      
    line-color: @minor_arterial_low_zoom;
    line-color: #fff;
    line-width: 0;

    [zoom>=10] {
      line-color: #bbb;
      line-width: 0.5;
    }

    [zoom>=12] {
      line-color: @minor_arterial;
      line-width: 1.5;
    }

    [zoom>=14] {
      line-width: 2.5;
    }

    [zoom>=15] {
      line-width: 5.5;
    }

    [zoom>=16] {
      line-width: 9.5;
    }

    [zoom>=17] {
      line-color: #fff;
      line-width: 12.5;
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
    ::stroke {
      line-color: @local_road_stroke;
      line-width: 0;

      [zoom>=15] {
        line-width: 5;
      }

      [zoom>=16] {
        line-width: 8;
      }

      [zoom>=17] {
        line-width: 12;
      }
    }
      
    line-color: @local_road_low_zoom;
    line-width: 0;

    [zoom>=11] {
      line-width: 0.5;
    }

    [zoom>=14] {
      line-width: 1;
    }

    [zoom>=15] {
      line-color: @local_road;
      line-width: 3.5;
    }

    [zoom>=16] {
      line-width: 6.5;
    }

    [zoom>=17] {
      line-width: 10.5;
    }
  }
}


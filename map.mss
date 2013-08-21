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
}

#park_units {
  polygon-fill: @managed_park;
}

#offshore-boundaries {
  line-color: #aaa;
  line-opacity: 0.5;
  line-width: 0.25;
  line-dasharray: 10, 2, 2, 2;

  [zoom>=12] {
    line-width: 0.75;
  }

  [zoom>=14] {
    line-width: 1.5;
  }
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

@land: #e5e3df;
@water: #b3d1ff;
@beach: #f6e898;
@park: #cadfaa;
@no-access: #d6dbd0;
@school: #e8ddbd;

@controlled-access: #fa9e25;
@controlled-access-stroke: #fa9e25;
@highway: #ffe168;
@highway-stroke: #e5bd4d;
@arterial-stroke: #d1ccc0;
@arterial: #fff;
@local: #dedad4;

Map {
  background-color: @water;
  buffer-size: 128;
}

#water {
  polygon-fill: @water;
}

#land {
  polygon-fill: @land;
}

#foreshore,
#beach {
  polygon-fill: @beach;
}

#cpad_units[zoom>=10] {

  polygon-fill: @park;
}

#sports {
  marker-fill: blue;
  marker-allow-overlap: true;
  marker-ignore-placement: true;
  marker-placement: interior;
}

#locations {
/*
  marker-fill: red;
  marker-allow-overlap: true;
  marker-ignore-placement: true;
  */
}

#locations[type='Access'] {
  text-face-name: "Symbola Medium";
  text-name: "'↥'"; // &#x21a5; (person)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Beach'] {
  text-face-name: "Symbola Medium";
  text-name: "'↔'"; // &#x2194; (kid on beach)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Bike Rack'] {
  text-face-name: "Symbola Medium";
  text-name: "'⇠'"; // &#x21e0; (bike)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Building'] {
  text-face-name: "Symbola Medium";
  text-name: "'Ⅹ'"; // &#x2169; (building)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Cafe'] {
  text-face-name: "Symbola Medium";
  text-name: "'ℰ'"; // &#x2130; (cafe)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Campground'] {
  text-face-name: "Symbola Medium";
  text-name: "'⇢'"; // &#x21e2; (tent)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Meeting Place'] {
  text-face-name: "Symbola Medium";
  text-name: "'⇁'"; // &#x21c1; (amphitheater)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Overlook'] {
  text-face-name: "Symbola Medium";
  text-name: "'⇨'"; // &#x21e8; (telescope)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Park'] {
  text-face-name: "Symbola Medium";
  text-name: "'⅊'"; // &#x214a; (tree)
  text-fill: #666;
  text-size: 24;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Parking Lot'] {
  text-face-name: "Symbola Medium";
  text-name: "'ℨ'"; // &#x2128; (P)
  text-fill: #666;
  text-size: 10;
  text-min-distance: 15;
  text-min-padding: 15;
  text-halo-radius: 1;
}

#locations[type='Restoration Site'] {
  text-face-name: "Symbola Medium";
  text-name: "'↣'"; // &#x21a3; (person with branches)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Restroom'] {
  text-face-name: "Symbola Medium";
  text-name: "'№'"; // &#x2116; (restroom)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Site of Interest'] {
  text-face-name: "Symbola Medium";
  text-name: "'↦'"; // &#x21a6; (arrow pointing at *)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Trailhead'] {
  text-face-name: "Symbola Medium";
  text-name: "'↚'"; // &#x219a; (hiker)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Water Fountain'] {
  text-face-name: "Symbola Medium";
  text-name: "'Ω'"; // &#x2126; (water fountain)
  // alternately, glass of water: &#x21e1;
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#locations[type='Visitor Center'] {
  text-face-name: "Symbola Medium";
  text-name: "'Å'"; // &#x212b; (information)
  // text-name: "'↌'"; // &#x218c; (ranger station)
  text-fill: #666;
  text-size: 14;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
}

#park_units {
  polygon-fill: darken(@park, 5%);
}

#unit_labels
{
  text-face-name: "Roboto Medium Italic";
  text-name: [name];
  text-fill: #22491b;
  text-opacity: 0.9;
  text-size: 14;
  text-placement: interior;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 48;
  text-halo-radius: 1;
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
  }

  line-join: miter;
  line-cap: round;
  
  line-color: #ccc;
  line-width: 0.35;
  
  [highway='motorway']
  {
    ::stroke {
      line-color: @controlled-access-stroke;
      line-width: 4;
    }
    
    line-color: @controlled-access;
    line-width: 3;
  }

  [highway='trunk'],
  {
    ::stroke {
      line-color: @highway-stroke;
      line-width: 3;
    }
    
    line-color: @highway;
    line-width: 2;
  }

  [highway='primary'],
  {
    ::stroke {
      line-color: @arterial-stroke;
      line-width: 4;
    }
    
    line-color: @arterial;
    line-width: 2;
  }

  [highway='secondary'],
  [highway='tertiary'],
  {
    line-color: @arterial-stroke;
    line-width: 1;
  }
}

#highway-labels {
  text-fill: #666;
  text-size: 10;
  text-name: [name];
  text-face-name: "Roboto Regular";
  text-placement: line;
  text-halo-radius: 1;
  text-opacity: 0.9;
  /*
  text-min-distance: 15;
  text-min-padding: 15;
  */

  [highway='motorway']
  {
    text-size: 11;
  }
  
  [highway='primary'],
  [highway='secondary'],
  {
    text-size: 9;
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
  text-fill: #4f698c;
  text-size: 11;
  text-placement: interior;
  // text-spacing: 0;
  // text-character-spacing: 1;
  text-label-position-tolerance: 5;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 24;
  text-halo-radius: 1;
  text-halo-fill: #cee3ff;
}

#water-labels[areasqkm>1],
{
  text-face-name: "Roboto Italic";
  text-name: [name];
  text-fill: #4f698c;
  text-size: 10;
  text-placement: interior;
  // text-spacing: 0;
  // text-character-spacing: 1;
  text-label-position-tolerance: 5;
  text-min-distance: 15;
  text-min-padding: 15;
  text-wrap-width: 24;
  text-halo-radius: 1;
  text-halo-fill: #cee3ff;
}

#cpad-labels
{
  text-face-name: "Roboto Italic";
  text-name: [name];
  text-fill: #22491b;
  text-opacity: 0.9;
  text-size: 11;
  text-placement: interior;
  // text-spacing: 0;
  // text-character-spacing: 1;
  text-label-position-tolerance: 5;
  text-min-distance: 50;
  text-min-padding: 50;
  text-wrap-width: 24;
  text-halo-radius: 1;
}
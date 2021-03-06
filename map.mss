@land: #f8f7ed;
@beach: #eed7b4;
@park: #f3ebc4;
@managed_park: #dce8cb;
@school: #e6e2dc;
@military: #eeebe7;
@reservation: #f8f3db;

#land {
  polygon-fill: @land;
}

#foreshore,
#beach {
  polygon-fill: @beach;
}

#cpad {
  [type='protected'] {
    polygon-fill: @park;
  }

  [type='military'] {
    polygon-fill: @military;
  }

  [type='reservation'] {
    polygon-fill: @reservation;
  }
}

#park_units {
  polygon-fill: @managed_park;

  [zoom>=15] {
    //polygon-smooth: 0.5;
  }
}

#parking
{
  polygon-fill: #f5f5e4;
  
  [zoom>=16] {
    //polygon-smooth: 0.5;
  }
}

#school
{
  polygon-fill: @school;
}

#fields
{
  polygon-fill: #d6e0b5;

  [leisure='golf_course']
  {
    polygon-fill: #cce1c5;
  }

  [zoom>=16] {
    //polygon-smooth: 0.5;
  }
}

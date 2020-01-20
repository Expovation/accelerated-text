 abstract ConceptNet = {

  flags startcat = Message ;

  cat Message; Venue; Location; Area; ReferencePoint; PWords ;

  fun AtLocation : Venue -> Location -> PWords -> Message;

  fun LocationDescription : Area -> ReferencePoint  -> Location;
  fun AreaLocation : Area -> Location ;


  fun CityArea : Area;
  fun CityRefPoint : ReferencePoint;
  fun PlaceWords : PWords;
  fun VenueName : Venue;

}
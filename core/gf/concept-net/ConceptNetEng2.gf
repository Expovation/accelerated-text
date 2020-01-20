concrete ConceptNetEng2 of ConceptNet = open ConceptNetEng, SyntaxEng, ParadigmsEng, UtilsEng, abc in {

  lincat Message = {s : Str} ;
  lincat Location = Adv ;
  lincat Venue, Area, ReferencePoint, PWords = N;

  lin AtLocation venue location words = placeInLocation venue location words;

  lin LocationDescription area referencePoint  =
                  SyntaxEng.mkAdv (mkConj ",")
                                  (mkInAdv area)
                                  (SyntaxEng.mkAdv (mkPrep "near") (mkNP referencePoint));

  lin AreaLocation area = mkInAdv area ;

  lin CityArea = mkN cityArea;
  lin CityRefPoint = mkN cityRefPoint;
  lin PlaceWords = mkN placeWords ;
  lin VenueName = mkN venueName;
}
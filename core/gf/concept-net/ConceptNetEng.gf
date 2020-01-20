resource ConceptNetEng = open SyntaxEng, ParadigmsEng, UtilsEng in {

  oper -- atLocation
    SS : Type = {s : Str} ;

    -- There is a place in the LOCATION
    placeInLocation : N -> Adv -> N -> SS =
        \locationDictionary_N,locationData_Adv,objectRef_N ->
            (mkUtt (mkThereIsAThing (mkCN locationDictionary_N locationData_Adv) objectRef_N)) ;

    -- In the LOCATION there is a place
    inLocationPlace : N -> Adv -> N -> SS =
        \locationDictionary_N,locationData_Adv,objectRef_N ->
            (mkUtt (mkS locationData_Adv (mkS presentSimTemp positivePol (mkThereIsAThing locationDictionary_N objectRef_N)))) ;

    -- VENUE in the LOCATION
    venueInLocation : N -> Adv -> N -> SS =
        \locationDictionary_N,locationData_Adv,objectRef_N ->
            (mkUtt (mkThereIsAThing objectRef_N locationData_Adv)) ;

    atLocation : N -> Adv -> N -> SS =
        \lexicon,arg0,arg1 ->
            ((placeInLocation lexicon arg0 arg1) | (inLocationPlace lexicon arg0 arg1) | (venueInLocation lexicon arg0 arg1)) ;

  oper -- hasProperty

    itHas : A -> N -> SS =
        \propertyName,object ->
            (mkS presentSimTemp positivePol (mkCl (mkNP object) propertyName)) ;

    hasProperty : A -> N -> SS =
        \lexicon,arg0 ->
            (mkUtt (itHas lexicon arg0)) ;

}
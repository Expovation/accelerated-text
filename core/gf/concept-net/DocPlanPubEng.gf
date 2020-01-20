concrete moduleinstance of module = open LangFunctionsEng, ConceptNetEng, SyntaxEng, ParadigmsEng in {
    lincat
        DocumentPlan01, Segment02, Amr03 = {s: Str};
        DictionaryItem04, Quote05, Quote06 = {s: N};
    lin
        Function01 Segment02 = {s = Segment02.s};
        Function02 Amr03 = {s = Amr03.s};
        Function03 DictionaryItem04 Quote05 Quote06 = {s = (atLocation DictionaryItem04.s Quote05.s Quote06.s).s};
        Function04 = {s = (mkN "place") | (mkN "venue") | (mkN "arena")};
        Function05 = {s = (mkN "city centre")};
        Function06 = {s = (mkN "Alimentum")};
}
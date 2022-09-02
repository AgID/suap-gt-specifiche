<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:pattern id="controllo_intermediario_ab" abstract="true">       
        <sch:rule context="$modulo">                     
            <sch:assert id="ass_check_allegato_procura" test="not(boolean(//sscheana:intermediario))
                or boolean(//sallegati:procura_delega)">
                
                Se presentato da intermediario allora deve essere presente allegato procura/delega                
            </sch:assert>
        </sch:rule>       
    </sch:pattern>  
    
    <sch:pattern id="alimentare_ab" abstract="true">       
        <sch:rule context="$modulo">           
            <sch:assert id="ass_vendita_alimentare" test="normalize-space(//esetmer:alimentare)!='' 
                and normalize-space(//sreqpro:requisiti_professionali)!=''"> 
                Deve essere valorizzato vendita alimentare ed è obbligatorio indicare i titoli professionali                
            </sch:assert>
        </sch:rule>       
    </sch:pattern> 
    
    <sch:pattern id="ampliamento_alimentare_ab" abstract="true">
        <sch:rule context="$modulo">           
            <sch:assert id="ass_ampliamento_vendita_alimentare" test="normalize-space(//$ns:a/$ns:settori_merceologici/esetmer:alimentare)!='' 
                and normalize-space(//sreqpro:requisiti_professionali)!=''"> 
                Deve essere valorizzato vendita alimentare per la sezione a ed è obbligatorio indicare i titoli professionali                
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="non_alimentare_ab" abstract="true">       
        <sch:rule context="$modulo">
            <sch:assert id="ass_non_alimentare" test="normalize-space(//esetmer:non_alimentare)!=''
                and normalize-space(//sreqpro:requisiti_professionali)=''"> 
                Deve essere valorizzato vendita non alimentare e non deve essere valorizzato requisiti professionali                                
            </sch:assert>
        </sch:rule>       
    </sch:pattern>   
    
    <sch:pattern id="ampliamento_non_alimentare_ab" abstract="true">       
        <sch:rule context="$modulo">
            <sch:assert id="ass_ampliamento_non_alimentare" test="normalize-space(//$ns:a/$ns:settori_merceologici/esetmer:non_alimentare)!=''
                and normalize-space(//sreqpro:requisiti_professionali)=''"> 
                Deve essere valorizzato vendita non alimentare per la sezione a e non deve essere valorizzato requisiti professionali                 
            </sch:assert>
        </sch:rule>       
    </sch:pattern>
    
    
    
</sch:schema>
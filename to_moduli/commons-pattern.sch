<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:pattern id="controllo_intermediario_ab" abstract="true">       
        <sch:rule context="$modulo">                     
            <sch:assert id="check_allegato_procura" test="not(boolean(//sscheana:intermediario))
                or boolean(//sallegati:procura_delega)">
                
                Se presentato da intermediario allora deve essere presente allegato procura/delega                
            </sch:assert>
        </sch:rule>       
    </sch:pattern>  
    
    <sch:pattern id="alimentare_ab" abstract="true">       
        <sch:rule context="$modulo">           
            <sch:assert id="procuratore_ab-vendita_alimentare" test="normalize-space(//esetmer:alimentare)!='' 
                and normalize-space(//sreonpr:requisiti_professionali)!=''"> 
                In caso di vendita alimentari è obbligatori almeno un titolo professionale deve essere indicato oppure deve essere indicato il preposto con titolo professionale 
            </sch:assert>
        </sch:rule>       
    </sch:pattern> 
    
    <sch:pattern id="non_alimentare_ab" abstract="true">       
        <sch:rule context="$modulo">
            <sch:assert id="procuratore_ab-vendita_non_alimentare" test="normalize-space(//esetmer:alimentare)=''"> 
                Non deve essere valorizzato vendita alimentare 
            </sch:assert>
        </sch:rule>       
    </sch:pattern>   
    
</sch:schema>
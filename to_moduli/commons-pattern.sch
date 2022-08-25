<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:pattern id="procuratore_ab" abstract="true">       
        <sch:rule context="$modulo">                     
            <sch:assert id="procuratore_ab-obbligo_delega" test="normalize-space(//sscheana:procuratore)='' or (normalize-space(//sscheana:procuratore)!='' 
                and normalize-space(//eallegati:procura_delega)!='')"> 
                In caso di procuratore l'allegato procura/delega è obbligatorio
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
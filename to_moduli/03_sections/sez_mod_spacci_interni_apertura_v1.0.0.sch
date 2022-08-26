<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/apertura_spacci_interni" prefix="sapspaint"/>      
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
   
    <sch:pattern id="settori_merceologici_ab" abstract="true">
        
        <sch:rule context="$settori_merceologici">
            <sch:assert id="settori_merceologici_ab-almeno_uno_alimentare_non_alimentare" test="(count(esetmer:alimentare) + count(esetmer:non_alimentare)) &gt; 0"> 
                Almeno uno tra "Alimentare" o "Non alimentare" deve essere selezionato
            </sch:assert>
            
            <sch:assert id="settori_merceologici_ab-non_presente" test="count(*[name(.)='esetmer:di_cui'])=0">
                Il parafrafo "di cui" non deve essere popolato                
            </sch:assert>            
        </sch:rule>
        
    </sch:pattern>   
    
    <sch:pattern id="settori_merceologici" abstract="false" is-a="settori_merceologici_ab">
        <sch:param name="settori_merceologici" value="sapspaint:settori_merceologici"/>        
    </sch:pattern>
</sch:schema>




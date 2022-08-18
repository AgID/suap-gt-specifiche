<!--    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    
    <sch:pattern id="settori_merceologici_ab" abstract="true">
        
        <sch:rule context="$settori_merceologici">
            <sch:assert test="count(child::*) &gt; 0"> 
                Almeno uno tra "Vicinato" o "Vendita esclusivamente mediante apparecchi automatici" deve essere selezionato
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>       

    <sch:pattern id="settori_merceologici" abstract="false" is-a="settori_merceologici_ab">
        <sch:param name="settori_merceologici" value="esetmer:settori_merceologici"/>        
    </sch:pattern>
</sch:schema>
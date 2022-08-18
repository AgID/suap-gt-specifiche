<!--    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/carattere_esercizio" prefix="ecarese"/>
    
    <sch:pattern id="carattere_esercizio_ab" abstract="true">
        
        <sch:rule context="$carattere_esercizio">
            <sch:assert test="count(child::*) &gt; 0"> 
                Almeno uno tra "Permanente", "Stagionale" o "Temporaneo" deve essere selezionato
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>       

    <sch:pattern id="carattere_esercizio" abstract="false" is-a="carattere_esercizio_ab">
        <sch:param name="carattere_esercizio" value="ecarese:carattere_esercizio"/>        
    </sch:pattern>
</sch:schema>
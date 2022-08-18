<!--    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/segnalazione_avvio" prefix="esegavv"/>
    
    <sch:pattern id="segnalazione_avvio_ab" abstract="true">
        
        <sch:rule context="$segnalazione_avvio">
            <sch:assert test="count(child::*) &gt; 0"> 
                Almeno uno tra "Vicinato" o "Vendita esclusivamente mediante apparecchi automatici" deve essere selezionato
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>       

    <sch:pattern id="segnalazione_avvio" abstract="false" is-a="segnalazione_avvio_ab">
        <sch:param name="segnalazione_avvio" value="esegavv:segnalazione_avvio"/>        
    </sch:pattern>
</sch:schema>
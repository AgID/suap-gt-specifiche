<!--    
    @data_creazione: 17 Agosto 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="esegavv"/>
    
    <sch:pattern id="segnalazione_avvio_ab" abstract="true">
        
        <sch:rule context="$segnalazione_avvio">        
            <sch:assert test="esegavv:esercizio_vicinato = 'true' or  esegavv:esclusiva_apparecchi_automatici = 'true'"> 
                almeno uno tra gli attributi segnalazione_avvio/esercizio_vicinato o segnalazione_avvio/esclusiva_apparecchi_automatici deve essere valorizzato a true
            </sch:assert>            
            
        </sch:rule>
        
    </sch:pattern>       

    <sch:pattern id="segnalazione_avvio" abstract="false" is-a="segnalazione_avvio_ab">
        <sch:param name="segnalazione_avvio" value="esegavv:segnalazione_avvio"/>        
    </sch:pattern>
</sch:schema>
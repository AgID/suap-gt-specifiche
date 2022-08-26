<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/ampliamento_esercizio_media_grande" prefix="samesmegr"/>
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    
    <sch:pattern id="segnalazione_avvio_ab" abstract="true">
        
        <sch:rule context="$segnalazione_avvio">
            <sch:assert id="segnalazione_avvio_ab-segnalazione_avvio" test="normalize-space(samesmegr:media_struttura)!=''                 
                or normalize-space(samesmegr:grande_struttura)!=''
                or normalize-space(samesmegr:esclusiva_apparecchi_automatici)!=''"> 
                Almeno uno tra "Media struttura", "Grande struttura" o "Vendita esclusivamente mediante apparecchi automatici" deve essere selezionato
            </sch:assert>           
        </sch:rule>
        
    </sch:pattern>       
    
    <sch:pattern id="segnalazione_avvio" abstract="false" is-a="segnalazione_avvio_ab">
        <sch:param name="segnalazione_avvio" value="samesmegr:segnalazione_avvio"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#settori_merceologici_ab"/>
    
    <sch:pattern id="settori_merceologici" abstract="false" is-a="settori_merceologici_ab">
        <sch:param name="settori_merceologici" value="samesmegr:settori_merceologici"/>        
    </sch:pattern>
</sch:schema>




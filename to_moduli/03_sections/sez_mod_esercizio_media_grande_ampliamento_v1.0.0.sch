<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/ampliamento_esercizio_media_grande" prefix="samesmegr"/>
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    
    <sch:pattern id="media_grande_ampliamento_ab" abstract="true">
        
        <sch:rule id="rule_media_grande_ampliamento_ab_segnalazione_avvio_ab" context="$nsamesmegr:segnalazione_avvio">
            <sch:assert id="segnalazione_avvio_ab-segnalazione_avvio" test="normalize-space(samesmegr:media_struttura)!=''                 
                or normalize-space(samesmegr:grande_struttura)!=''
                or normalize-space(samesmegr:esclusiva_apparecchi_automatici)!=''"> 
                Almeno uno tra "Media struttura", "Grande struttura" o "Vendita esclusivamente mediante apparecchi automatici" deve essere selezionato
            </sch:assert>           
        </sch:rule>
        
        <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#rule_settori_merceologici_ab"/>
        
        <sch:rule id="rule_media_grande_ampliamento_ab_settori_merceologici" context="$nsamesmegr:settori_merceologici">
            <sch:extends rule="rule_settori_merceologici_ab"/>
        </sch:rule>
      
    </sch:pattern>       
    
    <sch:pattern id="media_grande_ampliamento" abstract="false" is-a="media_grande_ampliamento_ab">
        <sch:param name="nsamesmegr" value="samesmegr"/>         
    </sch:pattern>
    
</sch:schema>




<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/trasferimento_esercizio_media_grande" prefix="stresmegr"/>
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
    
    <sch:pattern id="media_grande_trasferimento_ab" abstract="true">
        
        <sch:rule id="rule_media_grande_trasferimento_ab_segnalazione_avvio" context="$nstresmegr:segnalazione_avvio">
            <sch:assert id="segnalazione_avvio_ab-segnalazione_avvio" test="normalize-space(stresmegr:media_struttura)!=''                 
                or normalize-space(stresmegr:grande_struttura)!=''
                or normalize-space(stresmegr:esclusiva_apparecchi_automatici)!=''"> 
                Almeno uno tra "Media struttura", "Grande struttura" o "Vendita esclusivamente mediante apparecchi automatici" deve essere selezionato
            </sch:assert>           
        </sch:rule>
        
        <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#rule_settori_merceologici_ab"/>
        
        <sch:rule id="rule_media_grande_apertura_ab_settori_merceologici" context="$nstresmegr:settori_merceologici">
            <sch:extends rule="rule_settori_merceologici_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#rule_indirizzo_italiano_ab"/>
        
        <sch:rule id="rule_media_grande_apertura_ab_indirizzo" context="$nstresmegr:indirizzo">
            <sch:extends rule="rule_indirizzo_italiano_ab"/>
        </sch:rule>
        
    </sch:pattern>       
    
    <sch:pattern id="media_grande_trasferimento" abstract="false" is-a="media_grande_trasferimento_ab">
        <sch:param name="nstresmegr" value="stresmegr"/>        
    </sch:pattern>
   
</sch:schema>




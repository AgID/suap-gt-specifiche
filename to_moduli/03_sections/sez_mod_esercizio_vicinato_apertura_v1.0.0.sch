<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/apertura_esercizio_vicinato" prefix="sapesvi"/>    
    <sch:ns uri="http://agid.it/suap/entities/modalita_vendita" prefix="emodven"/>
    <sch:ns uri="http://agid.it/suap/entities/carattere_esercizio" prefix="ecarese"/>
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
   
        
    
    <sch:pattern id="vicinato_apertura_ab" abstract="true">
        
        <sch:rule id="rule_media_grande_ampliamento_ab_segnalazione_avvio_ab" context="$nsapesvi:segnalazione_avvio">
            <sch:assert id="segnalazione_avvio_ab-segnalazione_avvio" test="normalize-space($nsapesvi:esercizio_vicinato)!=''                                 
                or normalize-space($nsapesvi:esclusiva_apparecchi_automatici)!=''"> 
                Almeno uno tra "Vicinato" o "Vendita esclusivamente mediante apparecchi automatici" deve essere selezionato
            </sch:assert>           
        </sch:rule>
        
        <sch:rule id="rule_vicinato_apertura_ab_carattere_esercizio" context="$nsapesvi:carattere_esercizio">
            <sch:assert id="carattere_esercizio_ab-carattere_esercizio" test="normalize-space(ecarese:permanente)!='' 
                    or normalize-space(ecarese:stagionale)!='' 
                    or normalize-space(ecarese:temporaneo)!=''"> 
                Almeno uno tra "Permanente", "Stagionale" o "Temporaneo" deve essere selezionato
            </sch:assert>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_modalita_vendita_v1.0.0.sch#rule_modalita_vendita_ab"/>
        
        <sch:rule id="rule_vicinato_apertura_ab_modalita_vendita" context="$nsapesvi:modalita_vendita">
            <sch:extends rule="rule_modalita_vendita_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#rule_settori_merceologici_ab"/>
        
        <sch:rule id="rule_vicinato_apertura_ab_settori_merceologici" context="$nsapesvi:settori_merceologici">
            <sch:extends rule="rule_settori_merceologici_ab"/>
        </sch:rule>
        
    </sch:pattern>       
    
    <sch:pattern id="vicinato_apertura" abstract="false" is-a="vicinato_apertura_ab">
        <sch:param name="nsapesvi" value="sapesvi"/>        
    </sch:pattern>
    
</sch:schema>




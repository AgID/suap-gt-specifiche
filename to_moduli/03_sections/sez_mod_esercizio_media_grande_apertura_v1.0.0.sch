<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/apertura_esercizio_media_grande" prefix="sapesmegr"/>    
    <sch:ns uri="http://agid.it/suap/entities/modalita_vendita" prefix="emodven"/>
    <sch:ns uri="http://agid.it/suap/entities/carattere_esercizio" prefix="ecarese"/>
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
   
    
    <sch:pattern id="media_grande_apertura_ab" abstract="true">
        
        <sch:rule id="rule_media_grande_apertura_ab_segnalazione_avvio" context="$nsapesmegr:segnalazione_avvio">
            <sch:assert id="segnalazione_avvio_ab-segnalazione_avvio" test="normalize-space(sapesmegr:media_struttura)!=''                 
                or normalize-space(sapesmegr:grande_struttura)!=''
                or normalize-space(sapesmegr:esclusiva_apparecchi_automatici)!=''"> 
                Almeno uno tra "Media struttura", "Grande struttura" o "Vendita esclusivamente mediante apparecchi automatici" deve essere selezionato
            </sch:assert>           
        </sch:rule>
        
        <sch:include href="../02_entities/ent_modalita_vendita_v1.0.0.sch#rule_modalita_vendita_ab"/>
                
        <sch:rule id="rule_media_grande_apertura_ab_modalita_vendita" context="$nsapesmegr:modalita_vendita">
            <sch:extends rule="rule_modalita_vendita_ab"/>
        </sch:rule>
        
        <sch:rule id="rule_media_grande_apertura_ab_carattere_esercizio" context="$nsapesmegr:carattere_esercizio">
            <sch:assert id="carattere_esercizio_ab-carattere_esercizio" test="normalize-space(ecarese:permanente)!='' 
                or normalize-space(ecarese:stagionale)!=''"> 
                Almeno uno tra "Permanente" o "Stagionale"
            </sch:assert>
            
            <sch:assert id="carattere_esercizio_ab-no_stagionale" test="normalize-space(ecarese:temporaneo)=''"> 
                "Temporaneo" non può essere presente
            </sch:assert>
        </sch:rule>
         
        <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#rule_settori_merceologici_ab"/>
        
        <sch:rule id="rule_media_grande_apertura_ab_settori_merceologici" context="$nsapesmegr:settori_merceologici">
            <sch:extends rule="rule_settori_merceologici_ab"/>
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="media_grande_apertura" abstract="false" is-a="media_grande_apertura_ab">
        <sch:param name="nsapesmegr" value="sapesmegr"/>        
    </sch:pattern>
    
</sch:schema>




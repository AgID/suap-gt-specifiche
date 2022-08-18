<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">


    <sch:ns uri="http://agid.it/suap/forms/esercizio_vicinato_apertura" prefix="mesviap"/>    
    <sch:ns uri="http://agid.it/suap/sections/apertura_esercizio_vicinato" prefix="sapesvi"/>    
    <sch:ns uri="http://agid.it/suap/sections/scheda_anagrafica" prefix="sscheana"/>    
    <sch:ns uri="http://agid.it/suap/sections/requisiti_onorabilita_professionali" prefix="sreonpr" />
    
    <sch:include href="../02_entities/ent_segnalazione_avvio_v1.0.0.sch#segnalazione_avvio_ab"/>
    <sch:include href="../02_entities/ent_modalita_vendita_v1.0.0.sch#modalita_vendita_ab"/>
    <sch:include href="../02_entities/ent_carattere_esercizio_v1.0.0.sch#carattere_esercizio_ab"/>
    <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#settori_merceologici_ab"/>
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    <sch:include href="../02_entities/ent_cittadinanza_v1.0.0.sch#cittadinanza_ab"/>
    <sch:include href="../02_entities/ent_documento_rilasciato_v1.0.0.sch#documento_rilasciato_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    <sch:include href="../03_sections/sez_dati_anagrafici_v1.0.0.sch#sez_dati_anagrafici_ab"/>
    <sch:include href="../02_entities/ent_requisiti_professionali_v1.0.0.sch#requisiti_professionali_ab"/>
    
    <sch:pattern id="segnalazione_avvio" abstract="false" is-a="segnalazione_avvio_ab">
        <sch:param name="segnalazione_avvio" value="//sapesvi:requisiti_professionali"/>        
    </sch:pattern>
    
    <sch:pattern id="modalita_vendita" abstract="false" is-a="modalita_vendita_ab">
        <sch:param name="modalita_vendita" value="//sapesvi:modalita_vendita"/>        
    </sch:pattern>
    
    <sch:pattern id="carattere_esercizio" abstract="false" is-a="carattere_esercizio_ab">
        <sch:param name="carattere_esercizio" value="//sapesvi:carattere_esercizio"/>        
    </sch:pattern>
    
    <sch:pattern id="settori_merceologici" abstract="false" is-a="settori_merceologici_ab">
        <sch:param name="settori_merceologici" value="//sapesvi:settori_merceologici"/>        
    </sch:pattern>
    
    <sch:pattern id="sez_dati_anagrafici_persona" is-a="persona_ab" >
        <sch:param name="persona" value="//sscheana:persona"/>
    </sch:pattern>
    
    <sch:pattern id="cittadinanza" abstract="false" is-a="cittadinanza_ab">
        <sch:param name="cittadinanza" value="//sscheana:cittadinanza"/>        
    </sch:pattern>
    
    <sch:pattern id="documento_rilasciato" abstract="false" is-a="documento_rilasciato_ab">
        <sch:param name="documento_rilasciato" value="//sscheana:documento_rilasciato"/>        
    </sch:pattern>
    
    <sch:pattern id="sez_dati_anagrafici_residenza_indirizzo_italiano" is-a="indirizzo_italiano_ab" >
        <sch:param name="indirizzo_italiano" value="//sscheana:indirizzo_italiano"/>
    </sch:pattern>
    
    <sch:pattern id="sez_dati_anagrafici" is-a="sez_dati_anagrafici_ab" >
        <sch:param name="procuratore" value="//sscheana:procuratore"/>
    </sch:pattern>
    
    <sch:pattern id="requisiti_professionali" abstract="false" is-a="requisiti_professionali_ab">
        <sch:param name="requisiti_professionali" value="//sreonpr:requisiti_professionali"/>        
    </sch:pattern>
    
    
</sch:schema>
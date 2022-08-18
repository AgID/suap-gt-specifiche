<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
    <sch:ns uri="http://agid.it/suap/sections/apertura_esercizio_vicinato" prefix="sapesvi"/>
    <sch:ns uri="http://agid.it/suap/entities/segnalazione_avvio" prefix="esegavv"/>
    <sch:ns uri="http://agid.it/suap/entities/modalita_vendita" prefix="emodven"/>
    <sch:ns uri="http://agid.it/suap/entities/carattere_esercizio" prefix="ecarese"/>
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
   
    <sch:include href="../02_entities/ent_segnalazione_avvio_v1.0.0.sch#segnalazione_avvio_ab"/>
    <sch:include href="../02_entities/ent_modalita_vendita_v1.0.0.sch#modalita_vendita_ab"/>
    <sch:include href="../02_entities/ent_carattere_esercizio_v1.0.0.sch#carattere_esercizio_ab"/>
    <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#settori_merceologici_ab"/>
    
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
</sch:schema>




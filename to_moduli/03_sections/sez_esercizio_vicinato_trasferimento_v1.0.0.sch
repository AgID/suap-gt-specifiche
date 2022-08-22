<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
    <sch:ns uri="http://agid.it/suap/sections/trasferimento_esercizio_vicinato" prefix="stresvi"/>
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
   
    <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#settori_merceologici_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    
    <sch:pattern id="settori_merceologici" abstract="false" is-a="settori_merceologici_ab">
        <sch:param name="settori_merceologici" value="stresvi:settori_merceologici"/>        
    </sch:pattern>
    
    <sch:pattern id="indirizzo_italiano" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="stresvi:indirizzo"/>        
    </sch:pattern>
</sch:schema>




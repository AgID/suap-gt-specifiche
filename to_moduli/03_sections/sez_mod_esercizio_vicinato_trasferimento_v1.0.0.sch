<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/trasferimento_esercizio_vicinato" prefix="stresvi"/>
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
    
    
    <sch:pattern id="vicinato_trasferimento_ab" abstract="true">
        
        <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#rule_settori_merceologici_ab"/>
        
        <sch:rule id="rule_vicinato_apertura_ab_settori_merceologici" context="$nstresvi:settori_merceologici">
            <sch:extends rule="rule_settori_merceologici_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#rule_indirizzo_italiano_ab"/>
        
        <sch:rule id="rule_vicinato_apertura_ab_indirizzo" context="$nstresvi:indirizzo">
            <sch:extends rule="rule_indirizzo_italiano_ab"/>
        </sch:rule>
        
    </sch:pattern>       
    
    <sch:pattern id="vicinato_trasferimento" abstract="false" is-a="vicinato_trasferimento_ab">
        <sch:param name="nstresvi" value="stresvi"/>        
    </sch:pattern>
   
</sch:schema>




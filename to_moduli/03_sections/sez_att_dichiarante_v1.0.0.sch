<!-- 
    @data_creazione: 26 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/dichiarante" prefix="sdichia"/>
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eindest"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
     
    <sch:pattern id="att_dichiarante_ab" abstract="true">
        <sch:include href="../02_entities/ent_persona_v1.0.0.sch#rule_persona_ab"/>
        
        <sch:rule context="sdichia:persona">
            <sch:extends rule="rule_persona_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#rule_indirizzo_estero_ab"/>
        
        <sch:rule context="sdichia:indirizzo_estero">
            <sch:extends rule="rule_indirizzo_estero_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#rule_indirizzo_italiano_ab"/>
        
        <sch:rule context="sdichia:indirizzo_italiano">
            <sch:extends rule="rule_indirizzo_italiano_ab"/>
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="att_dichiarante" abstract="false" is-a="att_dichiarante_ab">        
    </sch:pattern>
    
</sch:schema>
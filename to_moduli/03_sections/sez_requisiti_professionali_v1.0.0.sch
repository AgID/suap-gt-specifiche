<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/requisiti_onorabilita_professionali" prefix="sreonpr"/>    
    <sch:ns uri="http://agid.it/suap/entities/requisiti_professionali" prefix="ereqpro"/>
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rec" prefix="eisrec"/>
                  
    <sch:pattern id="requisiti_professionali_ab" abstract="true">
        
        <sch:include href="../02_entities/ent_requisiti_professionali_v1.0.0.sch#rule_requisiti_professionali_ab"/>
        
        <sch:rule id="rule_requisiti_professionali_ab_requisiti_professionali" context="$nsreonpr:requisiti_professionali">
            <sch:extends rule="rule_requisiti_professionali_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_persona_v1.0.0.sch#rule_persona_ab"/>
        
        <sch:rule id="rule_requisiti_professionali_ab_requisiti_professionali_preposto" context="ereqpro:requisiti_professionali_preposto">
            <sch:extends rule="rule_persona_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#rule_indirizzo_italiano_ab"/>
        
        <sch:rule id="rule_requisiti_professionali_ab_luogo_corso" context="ereqpro:luogo_corso">
            <sch:extends rule="rule_indirizzo_italiano_ab"/>
        </sch:rule>
        
        <sch:rule id="rule_requisiti_professionali_ab_sede_impresa" context="ereqpro:sede_impresa">
            <sch:extends rule="rule_indirizzo_italiano_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#rule_iscrizione_rea_ab"/>
        
        <sch:rule id="rule_requisiti_professionali_ab_iscrizione_registro" context="ereqpro:iscrizione_registro">
            <sch:extends rule="rule_iscrizione_rea_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_iscrizione_REC_v1.0.0.sch#rule_iscrizione_rec_ab"/>
        
        <sch:rule id="rule_requisiti_professionali_ab_iscirizione_rec" context="ereqpro:iscrizione_REC">
            <sch:extends rule="rule_iscrizione_rec_ab"/>
        </sch:rule>
        
    </sch:pattern>  
    
    <sch:pattern id="requisiti_professionali_sez" abstract="false" is-a="requisiti_professionali_ab">
        <sch:param name="nsreonpr" value="sreonpr"/>        
    </sch:pattern>
        
</sch:schema>


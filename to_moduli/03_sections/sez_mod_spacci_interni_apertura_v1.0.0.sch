<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/apertura_spacci_interni" prefix="sapspaint"/>      
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    <sch:ns uri="http://agid.it/suap/entities/impresa" prefix="eimpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/> 
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eindest"/> 
   
    <sch:pattern id="spacci_interni_apertura_ab" abstract="true">
        
        <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#rule_impresa_ab"/>
        
        <sch:rule id="rule_spacci_interni_apertura_ab_impresa" context="$nsapspaint:presso">
            <sch:extends rule="rule_impresa_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#rule_iscrizione_rea_ab"/> 
        
        <sch:rule id="rule_spacci_interni_apertura_ab_iscrizione_registro" context="eimpresa:iscrizione_registro">
            <sch:extends rule="rule_iscrizione_rea_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#rule_indirizzo_italiano_ab"/>
        
        <sch:rule id="rule_spacci_interni_apertura_ab_indirizzo_italiano" context="eimpresa:indirizzo_italiano">
            <sch:extends rule="rule_indirizzo_italiano_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#rule_indirizzo_estero_ab"/> 
        
        <sch:rule id="rule_spacci_interni_apertura_ab_indirizzo_estero" context="eimpresa:indirizzo_estero">
            <sch:extends rule="rule_indirizzo_estero_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#rule_settori_merceologici_ab"/>
        
        <sch:rule id="rule_spacci_interni_apertura_apertura_ab_settori_merceologici" context="$nsapspaint:settori_merceologici">
            <sch:extends rule="rule_settori_merceologici_ab"/>
        </sch:rule>
        
        
    </sch:pattern>   
    
    <sch:pattern id="spacci_interni_apertura" abstract="false" is-a="spacci_interni_apertura_ab">
        <sch:param name="nsapspaint" value="sapspaint"/>        
    </sch:pattern>
</sch:schema>




<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"> 
    
    <sch:ns uri="http://agid.it/suap/sections/allegati" prefix="sallegati"/>
    <sch:ns uri="http://agid.it/suap/entities/file" prefix="efile"/>
    
    
    <sch:pattern id="allegati_ab" abstract="true">        
        <sch:include href="../02_entities/ent_files_v1.0.0.sch#rule_files_ab"/>
        
        <sch:rule context="sallegati:procura_delega">
            <sch:extends rule="rule_files_ab"/>
        </sch:rule>
        
        <sch:rule context="sallegati:dichiarazione_requisiti_preposto">
            <sch:extends rule="rule_files_ab"/>
        </sch:rule>
        
        <sch:rule context="sallegati:dichiarazione_requisiti_soci">
            <sch:extends rule="rule_files_ab"/>
        </sch:rule>
        
        <sch:rule context="sallegati:planimetria_locali">
            <sch:extends rule="rule_files_ab"/>
        </sch:rule>
        
        <sch:rule context="sallegati:assolvimento_imposta_bollo">
            <sch:extends rule="rule_files_ab"/>
        </sch:rule>
        
        <sch:rule context="sallegati:attestamento_versamenti">
            <sch:extends rule="rule_files_ab"/>
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="allegati" abstract="false" is-a="allegati_ab">               
    </sch:pattern>
  
</sch:schema>
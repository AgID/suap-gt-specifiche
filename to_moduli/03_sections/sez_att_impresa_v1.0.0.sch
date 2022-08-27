<!-- 
    @data_creazione: 26 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/impresa" prefix="simpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/impresa" prefix="eimpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
        
    <sch:pattern id="impresa_sez_ab" abstract="true">
               
        <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#rule_impresa_ab"/>
        
        <sch:rule context="simpresa:impresa">
            <sch:extends rule="rule_impresa_ab"/>
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="impresa_sez" abstract="false" is-a="impresa_sez_ab">               
    </sch:pattern>
   
</sch:schema>
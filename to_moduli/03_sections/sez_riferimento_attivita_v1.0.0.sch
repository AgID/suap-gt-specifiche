<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

    <sch:ns uri="http://agid.it/suap/sections/riferimento_attivita" prefix="srifatt"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
    
    <sch:pattern id="riferimento_attivita_ab" abstract="true">
        
        <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#rule_indirizzo_italiano_ab"/>
        
        <sch:rule id="rule_riferimento_attivita_ab_indirizzo" context="$nsrifatt:indirizzo">
            <sch:extends rule="rule_indirizzo_italiano_ab"/>
        </sch:rule>        
    </sch:pattern>
    
    <sch:pattern id="riferimento_attivita" abstract="false" is-a="riferimento_attivita_ab">
        <sch:param name="nsrifatt" value="srifatt"/>
    </sch:pattern>
    
 
</sch:schema>
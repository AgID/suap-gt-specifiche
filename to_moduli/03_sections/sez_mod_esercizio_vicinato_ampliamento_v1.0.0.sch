<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/ampliamento_esercizio_vicinato" prefix="samesvi"/>
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    
    <sch:pattern id="vicinato_ampliamento_ab" abstract="true">
        
        <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#rule_settori_merceologici_ab"/>
        
        <sch:rule id="rule_vicinato_ampliamento_ab_settori_merceologici" context="$nsamesvi:settori_merceologici">
            <sch:extends rule="rule_settori_merceologici_ab"/>
        </sch:rule>
        
    </sch:pattern>       
    
    <sch:pattern id="vicinato_ampliamento" abstract="false" is-a="vicinato_ampliamento_ab">
        <sch:param name="nsamesvi" value="samesvi"/>         
    </sch:pattern>
        
</sch:schema>




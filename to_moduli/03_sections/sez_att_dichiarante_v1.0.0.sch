<!-- 
    @data_creazione: 26 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/dichiarante" prefix="sdichia"/>
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    
    <sch:pattern id="persona" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="sdichia:persona"/>             
    </sch:pattern>    
</sch:schema>
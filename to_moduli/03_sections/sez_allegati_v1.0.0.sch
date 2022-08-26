<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"> 
    
    <sch:ns uri="http://agid.it/suap/sections/allegati" prefix="sallegati"/>
    <sch:ns uri="http://agid.it/suap/entities/file" prefix="efile"/>
    
    <sch:include href="../02_entities/ent_files_v1.0.0.sch#files_ab"/>
    
    <sch:pattern id="files_procura_delega" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:procura_delega"/>        
    </sch:pattern>
    
    <sch:pattern id="files_dichiarazione_requisiti_preposto" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:dichiarazione_requisiti_preposto"/>        
    </sch:pattern>
    
    <sch:pattern id="files_dichiarazione_requisiti_soci" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:dichiarazione_requisiti_soci"/>        
    </sch:pattern>
    
    <sch:pattern id="files_planimetria_locali" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:planimetria_locali"/>        
    </sch:pattern>
    
    <sch:pattern id="files_assolvemento_imposta_bollo" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:assolvemento_imposta_bollo"/>        
    </sch:pattern>
    
</sch:schema>
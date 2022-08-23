<!--
    
    @data_creazione: 01 Agosto 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/allegati" prefix="eallegati"/>
    <sch:ns uri="http://agid.it/suap/entities/file" prefix="efile"/>
    
    <sch:include href="ent_files_v1.0.0.sch#files_ab"/>
    
    <sch:pattern id="files_procura_delega" abstract="false" is-a="files_ab">
        <sch:param name="file" value="eallegati:procura_delega"/>        
    </sch:pattern>
    
    <sch:pattern id="files_dichiarazione_requisiti_preposto" abstract="false" is-a="files_ab">
        <sch:param name="file" value="eallegati:dichiarazione_requisiti_preposto"/>        
    </sch:pattern>
    
    <sch:pattern id="files_dichiarazione_requisiti_soci" abstract="false" is-a="files_ab">
        <sch:param name="file" value="eallegati:dichiarazione_requisiti_soci"/>        
    </sch:pattern>
</sch:schema>
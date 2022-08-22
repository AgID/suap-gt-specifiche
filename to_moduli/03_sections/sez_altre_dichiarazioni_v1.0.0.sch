<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
   
    <sch:ns uri="http://agid.it/suap/entities/altre_dichiarazioni" prefix="ealtdic"/>
    
    <sch:include href="../02_entities/ent_altre_dichiarazioni_v1.0.0.sch#altre_dichiarazioni_ab"/>
    
    <sch:pattern id="altre_dichiarazioni" abstract="false" is-a="altre_dichiarazioni_ab">
        <sch:param name="altre_dichiarazioni" value="ealtdic:altre_dichiarazioni"/>        
    </sch:pattern>    
</sch:schema>
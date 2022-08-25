<!--
    
    @data_creazione: 01 Agosto 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/file" prefix="efile"/>
   
    <sch:pattern id="files_ab" abstract="true">
        
        <sch:rule context="$file">
            
            <sch:let name="keysMime" value="document('../01_vocabularies/voc_mime_types.xml')//Row"/>
            
            <sch:let name="content_type" value="normalize-space(efile:content_type)"/>
            
            <sch:assert id="files_ab-mime_type" test="count($keysMime[
                normalize-space(Value[@ColumnRef='description']/SimpleValue) = $content_type
                ]) = 1">
                Mime Type non esiste (<sch:value-of select="$content_type"/>) 
            </sch:assert>
            
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="files" abstract="false" is-a="files_ab">
        <sch:param name="file" value="efile:file"/>        
    </sch:pattern>
</sch:schema>
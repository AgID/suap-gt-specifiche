<!--
    
    @data_creazione: 01 Agosto 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
   
    <sch:pattern id="iscrizione_rea_ab" abstract="true">
        
        <sch:rule id="rule_iscrizione_rea" context="$iscrizione_rea">
            
            <sch:let name="keysCCIAA" value="document('../01_vocabularies/voc_cciaa.xml')//Row"/>
            
            <sch:let name="CCIAA" value="normalize-space(eiscrea:CCIAA)"/>
            
            <sch:assert id="iscrizione_rea_ab-cciaa" test="count($keysCCIAA[
                normalize-space(Value[@ColumnRef='id']/SimpleValue) = $CCIAA
                ]) = 1">
                CCIAA non esiste (<sch:value-of select="$CCIAA"/>) 
            </sch:assert>
            
        </sch:rule>             
      
    </sch:pattern>
    
    <sch:pattern id="iscrizione_rea" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="eiscrea:iscrizione_rea"/>        
    </sch:pattern>
</sch:schema>
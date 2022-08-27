<!--
    
    @data_creazione: 01 Agosto 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rec" prefix="eisrec"/>
    
    <sch:pattern id="iscrizione_rec_ab" abstract="true">
        
        <sch:rule id="rule_iscrizione_rec_ab" abstract="true">
            
            <sch:let name="keysCCIAA" value="document('../01_vocabularies/voc_cciaa.xml')//Row"/>
            
            <sch:let name="CCIAA" value="normalize-space(eisrec:CCIAA)"/>
            
            <sch:assert id="iscrizione_rec_ab-cciaa" test="count($keysCCIAA[
                normalize-space(Value[@ColumnRef='id']/SimpleValue) = $CCIAA
                ]) = 1">
                CCIAA non esiste (<sch:value-of select="$CCIAA"/>) 
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="$iscrizione_rec">
            <sch:extends rule="rule_iscrizione_rec_ab"/>
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="iscrizione_rec" abstract="false" is-a="iscrizione_rec_ab">
        <sch:param name="iscrizione_rec" value="eisrec:iscrizione_rec"/>        
    </sch:pattern>
</sch:schema>
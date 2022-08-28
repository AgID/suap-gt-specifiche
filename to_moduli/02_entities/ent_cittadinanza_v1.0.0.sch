<!--    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/cittadinanza" prefix="ecitt"/>
    
    <sch:pattern id="cittadinanza_ab" abstract="true">
        
        <sch:rule id="rule_cittadinanza_ab" abstract="true">
            
            <sch:let name="keysStati" value="document('../01_vocabularies/voc_stati.xml')//Row"/>
            
            <sch:let name="stato" value="normalize-space(ecitt:stato_cittadinanza)"/>
            
            <sch:assert id="cittadinanza_ab-ass_stato_cl_check" test="
                count($keysStati[
                normalize-space(Value[@ColumnRef='codice_istat']/SimpleValue) = $stato
                ]) = 1">
                
                Stato di cittadinanza non esiste (<sch:value-of select="$stato"/>) 
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule id="rule_cittadinanza" context="$cittadinanza">
            <sch:extends rule="rule_cittadinanza_ab"/>
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="cittadinanza" abstract="false" is-a="cittadinanza_ab">
        <sch:param name="cittadinanza" value="ecitt:cittadinanza"/>        
    </sch:pattern>
</sch:schema>
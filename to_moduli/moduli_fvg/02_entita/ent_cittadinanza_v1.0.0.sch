<!--
    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://entita/cittadinanza" prefix="ec"/>

    <sch:pattern id="cittadinanza_ab" abstract="true">
        
        <sch:let name="keysStati" value="document('../01_vocabolari/voc_Stati_cl.xml')//Row"/> 
        
        <sch:rule context="$cittadinanza">
            
            <sch:let name="stato" value="normalize-space(ec:stato_cittadinanza)"/>
            
            <sch:assert id="ass_stato_cl_check" test="count($keysStati[
                normalize-space(Value[@ColumnRef='code']/SimpleValue) = $stato
                ]) = 1">
                Stato di cittadinanza non esiste (<sch:value-of select="$stato"/>) 
            </sch:assert>
            
        </sch:rule>
    </sch:pattern>
    
    <!-- equivalente eseguibile definito per consentire un rapido testo dello schematron e non usato a runtime -->
    <sch:pattern id="cittadinanza" abstract="false" is-a="cittadinanza_ab">
        <sch:param name="cittadinanza" value="ec:cittadinanza"/>        
    </sch:pattern>
</sch:schema>
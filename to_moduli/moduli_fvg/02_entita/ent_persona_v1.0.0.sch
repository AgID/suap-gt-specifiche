<!--
    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://entita/persona" prefix="ep"/>
    
    <sch:pattern id="persona_ab" abstract="true">
        
        <sch:let name="keysComuni" value="document('../01_vocabolari/voc_storico_comuni.xml')//Row"/> 
        <sch:let name="keysStatiEsteri" value="document('../01_vocabolari/voc_StatiEsteri.xml')//Row"/> 
        
        <sch:rule context="$luogo_nascita_italiano">
            
            <sch:let name="comune" value="normalize-space(ep:luogo_nascita_italiano)"/>
            
            <sch:assert id="ass_comune_cl_check" test="count($keysComuni[
                normalize-space(Value[@ColumnRef='code' ]/SimpleValue) = $comune
                ]) = 1">
                
                Comune non esiste (<sch:value-of select="$comune"/>) 
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="$stato_estero">
            
            <sch:let name="stato" value="normalize-space(eii:comune)"/>
            
            <sch:assert id="ass_comune_cl_check" test="count($keysComuni[
                normalize-space(Value[@ColumnRef='code' ]/SimpleValue) = $comune
                ]) = 1">
                
                Comune non esiste (<sch:value-of select="$comune"/>) 
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <!-- equivalente eseguibile definito per consentire un rapido testo dello schematron e non usato a runtime -->
    <sch:pattern id="persona" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="ep:persona"/>        
    </sch:pattern>
</sch:schema>
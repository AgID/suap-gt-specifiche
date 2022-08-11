<!--
    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="ep"/>
    
    <sch:pattern id="persona_ab" abstract="true">
        
        <sch:let name="keysStoricoComuni" value="document('../01_vocabolari/voc_storico_comuni.xml')//Row"/> 
        <sch:let name="keysStatiEsteri" value="document('../01_vocabolari/voc_StatiEsteri_cl.xml')//Row"/> 

        <sch:rule context="$persona/ep:luogo_nascita_italiano">
            <sch:let name="comune" value="normalize-space(./text())"/>
            <sch:assert id="ass_comune_cl_check" test="$comune='' or count($keysStoricoComuni[
                normalize-space(Value[@ColumnRef='codice_istat']/SimpleValue) = $comune
                ]) = 1">
                
                Comune non esiste (<sch:value-of select="$comune"/>)
                
            </sch:assert>  
        </sch:rule>
  
        <sch:rule context="$persona/ep:stato_estero">
            <sch:let name="stato" value="normalize-space(./text())"/>
            
            <sch:assert id="ass_stato_cl_check" test="$stato='' or count($keysStatiEsteri[
                normalize-space(Value[@ColumnRef='code']/SimpleValue) = $stato
                ]) = 1">
                
                Stato estero non esiste (<sch:value-of select="$stato"/>) 
                
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>       

    <!-- equivalente eseguibile definito per consentire un rapido testo dello schematron e non usato a runtime -->
    <sch:pattern id="persona" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="ep:persona"/>        
    </sch:pattern>
</sch:schema>
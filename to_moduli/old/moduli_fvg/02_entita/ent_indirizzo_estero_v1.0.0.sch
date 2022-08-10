<!--
    
    @data_creazione: 01 Agosto 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://entita/indirizzo_estero" prefix="eie"/>
    
    <!-- Pattern riusabile per la verifica delle caratteristiche base di qualunque indirizzo italiano indipendentemente
        dal contesto di utilizzo
    -->
    <sch:pattern id="indirizzo_estero_ab" abstract="true">
        
        <sch:let name="keysStati" value="document('../01_vocabolari/voc_StatiEsteri_cl.xml')//Row"/> 
        
        <sch:rule context="$indirizzo_estero">
            
            <sch:let name="stato" value="normalize-space(eie:stato_estero)"/>
            
            <sch:assert id="ass_stato_cl_check" test="count($keysStati[
                normalize-space(Value[@ColumnRef='code']/SimpleValue) = $stato
                ]) = 1">
                Stato estero non esiste (<sch:value-of select="$stato"/>) 
            </sch:assert>
            
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="indirizzo_estero" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="eie:indirizzo_estero"/>        
    </sch:pattern>
</sch:schema>
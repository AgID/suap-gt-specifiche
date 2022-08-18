<!--
    
    @data_creazione: 01 Agosto 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eie"/>
   
    <sch:pattern id="indirizzo_estero_ab" abstract="true">
        
        <sch:rule context="$indirizzo_estero">
            
            <sch:let name="keysStati" value="document('../01_vocabularies/voc_stati.xml')//Row"/>
            
            <sch:let name="stato" value="normalize-space(eie:stato_estero)"/>
            
            <sch:assert test="count($keysStati[
                normalize-space(Value[@ColumnRef='codice_istat']/SimpleValue) = $stato
                ]) = 1">
                Stato estero non esiste (<sch:value-of select="$stato"/>) 
            </sch:assert>
            
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="indirizzo_estero" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="eie:indirizzo_estero"/>        
    </sch:pattern>
</sch:schema>
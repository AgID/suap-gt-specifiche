<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

    <sch:pattern>
        <sch:let name="keysComuni" value="document('storico_comuni.xml')//Row"/>
       
        <sch:rule context="indirizzo_italiano">
            
            <sch:let name="comune_nascita" value="normalize-space(comune_nascita)"/>
            <sch:let name="data_nascita" value="normalize-space(data_nascita)"/>
            
            
            <sch:assert test="count($keysComuni[
                normalize-space(Value[@ColumnRef='codice_istat' ]/SimpleValue) = $comune_nascita
                ])">
                
                Comune non esiste
                <sch:value-of select="$comune_nascita"/>
            </sch:assert>
            
        </sch:rule>
    </sch:pattern>
</sch:schema>

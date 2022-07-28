<!--
    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

    <sch:ns uri="http://entita/indirizzo_italiano" prefix="eii"/>
    
    <sch:pattern>
        <sch:let name="keysComuni" value="document('../01_vocabolari/voc_ComuniItaliani_cl.xml')//Row"/> 
        
        <sch:rule context="eii:indirizzo_italiano">
            <sch:p>
                Verifico nel comune il fatto che il codice del comune derivi dalla code list di riferimento                
            </sch:p>
            
            <sch:let name="comune" value="normalize-space(eii:comune)"/>
            
            <sch:assert id="ass_comune_cl_check" test="count($keysComuni[
                normalize-space(Value[@ColumnRef='code' ]/SimpleValue) = $comune
                ]) = 1">
                
                Comune alla data non esiste
                <sch:value-of select="$comune"/> 
            </sch:assert>
            
        </sch:rule>
    </sch:pattern></sch:schema>
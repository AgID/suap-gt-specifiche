<!--    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    
    <sch:pattern id="persona_ab" abstract="true">
        
        <sch:rule context="$persona">
            
            <sch:let name="keysStoricoComuni" value="document('../01_vocabularies/voc_comuni_italiani_storico.xml')//Row"/> 
            <sch:let name="keysStatiEsteri" value="document('../01_vocabularies/voc_stati.xml')//Row"/>
            
            <sch:let name="data_nascita" value="normalize-space(epers:data_nascita)"/>
            <sch:let name="luogo_nascita_italiano" value="normalize-space(epers:luogo_nascita_italiano)"/>
            <sch:let name="stato_estero" value="normalize-space(epers:stato_estero)"/>
            
            
            <sch:assert id="ass_comune_nascita_cl_check" test="
                $luogo_nascita_italiano='' or count(
                                                        $keysStoricoComuni[
                                                            normalize-space(Value[@ColumnRef='codice_istat']/SimpleValue) = $luogo_nascita_italiano
                                                            and xs:date(Value[@ColumnRef = 'data_istituzione']/SimpleValue) &lt;= xs:date($data_nascita)
                                                            and xs:date(Value[@ColumnRef = 'data_cessazione']/SimpleValue) &gt;= xs:date($data_nascita)
                                                        ] 
                                                    ) = 1">
                
                Comune non esiste (<sch:value-of select="$luogo_nascita_italiano"/>) alla data (<sch:value-of select="$data_nascita"/>)                 
            </sch:assert>
            
            <sch:assert id="ass_stato_nasciata_cl_check" test="
                $stato_estero='' or count(
                                            $keysStatiEsteri[
                                                                normalize-space(Value[@ColumnRef='codice_istat']/SimpleValue) = $stato_estero
                                                            ] 
                                            ) = 1">
                
                Stato non esiste (<sch:value-of select="$stato_estero"/>)                 
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>       

    <sch:pattern id="persona" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="epers:persona"/>             
    </sch:pattern>
</sch:schema>
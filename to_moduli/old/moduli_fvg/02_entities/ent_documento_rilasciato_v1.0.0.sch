<!--
    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
    
    N.B: nell'IDE Oxygen lo schematron pur essendo impostato su xslt2 non gestisce bene il maggiore tra date ma nel test
    case scenario funziona correttamente..Quindi un errore in Oxygen eseguendo lo schematron è falso problema.
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/documento_rilasciato" prefix="edr"/>
    
    <sch:pattern>
        
        <sch:rule context="edr:documento_rilasciato">
            <sch:p>
                Verifico che la data di inizio sia precedente alla data di scadenza                
            </sch:p>
            
            <sch:let name="dataRilascio" value="xs:date(edr:data_rilascio)"/>
            <sch:let name="dataScadenza" value="xs:date(edr:data_scadenza)"/>
            
            <sch:assert id="ass_dr_check_date" test="($dataScadenza > $dataRilascio)">
                Data Scadenza (<sch:value-of select="$dataScadenza"/>)  deve essere successiva a data di rilascio (<sch:value-of select="$dataRilascio"/> ) se presenti entrambe
            </sch:assert>
            
        </sch:rule>
    </sch:pattern>
</sch:schema>
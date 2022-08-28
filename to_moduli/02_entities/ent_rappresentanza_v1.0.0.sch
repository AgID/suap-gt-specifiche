<!--
    @data_creazione: 26 Agosto 2022    
    @version: 1.0.0   
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/rappresentanza" prefix="erapp"/>
    
    <sch:pattern id="rappresentanza_ab" abstract="true">
        
        <sch:rule id="rule_rappresentanza_ab" abstract="true">        
            <sch:let name="dataInizio" value="xs:date(erapp:data_inizio)"/>
            <sch:let name="dataFine" value="xs:date(erapp:data_fine)"/>
            
            <sch:assert id="rappresentanza_ab-ass_dr_check_date" test="($dataFine &gt;= $dataInizio)">
                Rappresentanza: la data di fine (<sch:value-of select="$dataFine"/>) deve essere successiva a data di inizio  (<sch:value-of select="$dataInizio"/>)
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule id="rule_rappresentanza" context="$rappresentanza">
            <sch:extends rule="rule_rappresentanza_ab"/>
        </sch:rule>
    </sch:pattern>
        
    <sch:pattern id="rappresentanza" abstract="false" is-a="rappresentanza_ab">
        <sch:param name="rappresentanza" value="erapp:rappresentanza"/>        
    </sch:pattern>
</sch:schema>
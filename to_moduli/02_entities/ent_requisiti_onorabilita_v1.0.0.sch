<!--    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/requisiti_onorabilita" prefix="ereqono"/>
    
    <sch:pattern id="requisiti_onorabilita_ab" abstract="true">
        
        <sch:rule context="$requisiti_onorabilita">
            <sch:assert test="ereqono:possesso_requisiti_onorabilita!='' and ereqono:no_cause_divieto!=''"> 
                Le dichiarazioni di possessop requisiti onorabilita e no cause divieto sono obbligatorie 
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>       

    <sch:pattern id="requisiti_onorabilita" abstract="false" is-a="requisiti_onorabilita_ab">
        <sch:param name="requisiti_onorabilita" value="ereqono:requisiti_onorabilita"/>        
    </sch:pattern>
</sch:schema>
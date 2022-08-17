<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
    <sch:ns prefix="sreonpr" uri="http://agid.it/suap/sections/requisiti_onorabilita_professionali"/>
    
    <sch:pattern id="sez_requisiti_onorabilita_professionali_ab" abstract="true"> 
       
        <sch:rule context="$requisiti_professionali">
            <sch:assert test="count(child::*) &gt; 0"> 
                almeno un titolo professionale deve essere indicato oppure deve essere indicato il preposto con titolo professionale           
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="sez_requisiti_onorabilita_professionali" abstract="false" is-a="sez_requisiti_onorabilita_professionali_ab">
        <sch:param name="requisiti_professionali" value="sreonpr:requisiti_professionali"/>        
    </sch:pattern>
    
</sch:schema>


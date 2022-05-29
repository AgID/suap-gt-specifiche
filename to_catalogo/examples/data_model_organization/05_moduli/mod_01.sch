<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
    <sch:ns prefix="ep" uri="http://entita/persona"/>
    <sch:ns prefix="ed" uri="http://entita/documento"/>
    <sch:ns prefix="sp" uri="http://sezione/presentatore"/>


    <sch:include href="../04_sezioni/sez_presentatore.patterns"/>    
    
    <sch:pattern  id="crossed_check">  
        <sch:rule context="sp:presentatore">
                        
            <sch:assert test="ep:nome=ep:cognome"> nome e cognome devono esssere uguali</sch:assert>
            
        </sch:rule>
    </sch:pattern>
    
    <sch:phase id="all">
        <sch:active pattern="carnilaty_check"/>
        <sch:active pattern="crossed_check"/>
    </sch:phase>

    <sch:phase id="min">
        <sch:active pattern="carnilaty_check"/>        
    </sch:phase>
    
</sch:schema>
<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
    <sch:ns prefix="ep" uri="http://entita/persona"/>
    <sch:ns prefix="ed" uri="http://entita/documento"/>
    <sch:ns prefix="ei" uri="http://entita/indirizzo"/>
    <sch:ns prefix="ei" uri="http://entita/indirizzo"/>
    <sch:ns prefix="sp" uri="http://sezione/presentatore"/>
    <sch:ns prefix="ssa" uri="http://sezione/sede_attivita"/>
    <sch:ns prefix="m02" uri="http://moduli/02"/>
    
    <sch:include href="../04_sezioni/sez_presentatore_v1.0.0.patterns"/>
    <sch:include href="../04_sezioni/sez_sede_attivita_v1.0.0.patterns"/>     
    
    <sch:pattern  id="crossed_check">  
        <sch:rule context="m02:moduli_02">
            
            <sch:assert test="starts-with(ssa:sede_attivita/ei:via,sp:presentatore/ep:nome)"> sede_attivita.via deve iniziare con presentatore.nome</sch:assert>
            
        </sch:rule>
    </sch:pattern>
  
    <sch:phase id="only_sez_presentatore">
        <sch:active pattern="sez_presentatore"/>        
    </sch:phase>
    
</sch:schema>

<!-- version: 1.0.0 -->
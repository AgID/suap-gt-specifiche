<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
    <sch:ns prefix="stresvi" uri="http://sezione/trasferimento_esercizio_vicinato"/>
    <sch:ns prefix="sreonpr" uri="http://sezione/requisiti_onorabilita_professionali"/>
    <sch:ns prefix="sreat" uri="http://sezione/riferimento_attivita"/>
    <sch:ns prefix="sdaca" uri="http://sezione/dati_catastali"/>
    <sch:ns prefix="sapesvi" uri="http://sezione/apertura_esercizio_vicinato"/>
    <sch:ns prefix="saldi" uri="http://sezione/altre_dichiarazioni"/>
    <sch:ns prefix="eseme" uri="http://entita/settori_merceologici"/>    
    <sch:ns prefix="eseav" uri="http://entita/segnalazione_avvio"/>
    <sch:ns prefix="emove" uri="http://entita/modalita_vendita"/>
    <sch:ns prefix="eind" uri="http://entita/indirizzo"/>    
    <sch:ns prefix="econ" uri="http://entita/contatti"/>
    <sch:ns prefix="ecaes" uri="http://entita/carattere_esercizio"/>
    <sch:ns prefix="mesvi" uri="http://moduli/esercizio_vicinato"/>
    
    
    <sch:include href="../03_sezioni/sez_altre_dichiarazioni_v1.0.0.patterns"/>
    <sch:include href="../03_sezioni/sez_apertura_esercizio_vicinato_v1.0.0.patterns"/>
    <sch:include href="../03_sezioni/sez_dati_catastali_v1.0.0.patterns"/>
    <sch:include href="../03_sezioni/sez_requisiti_onorabilita_professionali_v1.0.0.patterns"/>
    <sch:include href="../03_sezioni/sez_riferimento_attivita_v1.0.0.patterns"/>
    <sch:include href="../03_sezioni/sez_trasferimento_esercizio_vicinato_v1.0.0.patterns"/>
    
    
    <sch:pattern  id="alimentare">  
        <sch:rule context="sapesvi:settori_merceologici">
                
            <sch:assert test="count(eseme:alimentare) = 1"> 
                l'attributo apertura_esercizio_vicinato/settori_merceologici/alimentare è obbligatorio
            </sch:assert>
                           
        </sch:rule>
        
        <sch:rule context="sreonpr:requisiti_onorabilita_professionali">
            
            <sch:assert test="count(sreonpr:requisiti_professionali) = 1"> 
                l'attributo requisiti_onorabilita_professionali/requisiti_professionali è obbligatorio
            </sch:assert>
                       
        </sch:rule>
    </sch:pattern>
  
    <sch:pattern  id="non_alimentare">  
        <sch:rule context="sapesvi:settori_merceologici">
            
            <sch:assert test="count(eseme:alimentare) = 0"> 
                l'attributo apertura_esercizio_vicinato/settori_merceologici/alimentare non deve essere presente
            </sch:assert>
                        
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern  id="superficie_superiore_400mq">  
        <sch:rule context="sapesvi:settori_merceologici">
            
            <sch:assert test="sum(eseme:alimentare | eseme:non_alimentare) &gt;= 400"> 
                la superficie totale (apertura_esercizio_vicinato/settori_merceologici/alimentare +apertura_esercizio_vicinato/settori_merceologici/non_alimentare) deve essere &gt;= 400 mq
            </sch:assert>
            
        </sch:rule>        
    </sch:pattern>
    
    <sch:pattern  id="superficie_inferiore_400mq">  
        <sch:rule context="sapesvi:settori_merceologici">
            
            <sch:assert test="sum(eseme:alimentare | eseme:non_alimentare) &lt; 400"> 
                la superficie totale (apertura_esercizio_vicinato/settori_merceologici/alimentare +apertura_esercizio_vicinato/settori_merceologici/non_alimentare) deve essere &lt; 400 mq                
            </sch:assert>
            
        </sch:rule>        
    </sch:pattern>
  
    <sch:phase id="apertura_non_alimentare_inferiore_400mq">
        <sch:active pattern="sez_riferimento_attivita"/>
        <sch:active pattern="sez_dati_catastali"/>
        <sch:active pattern="sez_apertura_esercizio_vicinato"/>
        <sch:active pattern="sez_requisiti_onorabilita_professionali"/>        
        <sch:active pattern="sez_altre_dichiarazioni"/>
        <sch:active pattern="non_alimentare"/>
        <sch:active pattern="superficie_inferiore_400mq"/>
    </sch:phase>
    
    <sch:phase id="apertura_alimentare_inferiore_400mq">
        <sch:active pattern="sez_riferimento_attivita"/>
        <sch:active pattern="sez_dati_catastali"/>
        <sch:active pattern="sez_apertura_esercizio_vicinato"/>
        <sch:active pattern="sez_requisiti_onorabilita_professionali"/>        
        <sch:active pattern="sez_altre_dichiarazioni"/>
        <sch:active pattern="alimentare"/>
        <sch:active pattern="superficie_inferiore_400mq"/>
    </sch:phase>
    
    <sch:phase id="apertura_non_alimentare_superiore_400mq">
        <sch:active pattern="sez_riferimento_attivita"/>
        <sch:active pattern="sez_dati_catastali"/>
        <sch:active pattern="sez_apertura_esercizio_vicinato"/>
        <sch:active pattern="sez_requisiti_onorabilita_professionali"/>        
        <sch:active pattern="sez_altre_dichiarazioni"/>
        <sch:active pattern="non_alimentare"/>
        <sch:active pattern="superficie_superiore_400mq"/>
    </sch:phase>
    
    <sch:phase id="apertura_alimentare_superiore_400mq">
        <sch:active pattern="sez_riferimento_attivita"/>
        <sch:active pattern="sez_dati_catastali"/>
        <sch:active pattern="sez_apertura_esercizio_vicinato"/>
        <sch:active pattern="sez_requisiti_onorabilita_professionali"/>        
        <sch:active pattern="sez_altre_dichiarazioni"/>
        <sch:active pattern="alimentare"/>
        <sch:active pattern="superficie_superiore_400mq"/>
    </sch:phase>
    
    <sch:phase id="trasferimento_non_alimentare_inferiore_400mq">
        <sch:active pattern="sez_riferimento_attivita"/>
        <sch:active pattern="sez_dati_catastali"/>
        <sch:active pattern="sez_trasferimento_esercizio_vicinato"/>
        <sch:active pattern="sez_requisiti_onorabilita_professionali"/>        
        <sch:active pattern="sez_altre_dichiarazioni"/>
        <sch:active pattern="non_alimentare"/>
        <sch:active pattern="superficie_inferiore_400mq"/>
    </sch:phase>
    
    <sch:phase id="trasferimento_alimentare_inferiore_400mq">
        <sch:active pattern="sez_riferimento_attivita"/>
        <sch:active pattern="sez_dati_catastali"/>
        <sch:active pattern="sez_trasferimento_esercizio_vicinato"/>
        <sch:active pattern="sez_requisiti_onorabilita_professionali"/>        
        <sch:active pattern="sez_altre_dichiarazioni"/>
        <sch:active pattern="alimentare"/>
        <sch:active pattern="superficie_inferiore_400mq"/>
    </sch:phase>
    
    <sch:phase id="trasferimento_non_alimentare_superiore_400mq">
        <sch:active pattern="sez_riferimento_attivita"/>
        <sch:active pattern="sez_dati_catastali"/>
        <sch:active pattern="sez_trasferimento_esercizio_vicinato"/>
        <sch:active pattern="sez_requisiti_onorabilita_professionali"/>        
        <sch:active pattern="sez_altre_dichiarazioni"/>
        <sch:active pattern="non_alimentare"/>
        <sch:active pattern="superficie_superiore_400mq"/>
    </sch:phase>
    
    <sch:phase id="trasferimento_alimentare_superiore_400mq">
        <sch:active pattern="sez_riferimento_attivita"/>
        <sch:active pattern="sez_dati_catastali"/>
        <sch:active pattern="sez_trasferimento_esercizio_vicinato"/>
        <sch:active pattern="sez_requisiti_onorabilita_professionali"/>        
        <sch:active pattern="sez_altre_dichiarazioni"/>
        <sch:active pattern="alimentare"/>
        <sch:active pattern="superficie_superiore_400mq"/>
    </sch:phase>
    
</sch:schema>
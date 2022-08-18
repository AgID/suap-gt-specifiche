<!-- 
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/scheda_anagrafica" prefix="sscheana"/>
    
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    <sch:include href="../02_entities/ent_cittadinanza_v1.0.0.sch#cittadinanza_ab"/>
    <sch:include href="../02_entities/ent_documento_rilasciato_v1.0.0.sch#documento_rilasciato_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    
    <sch:pattern id="sez_dati_anagrafici_ab" abstract="true">
        <sch:rule context="$procuratore">
            <sch:assert test="$procuratore='' 
                or ($procuratore/sscheana:ruolo[.!='Agenzia per le imprese'])
                or ($procuratore/sscheana:ruolo[.='Agenzia per le imprese'] and boolean($procuratore/sscheana:deominazione_agenzia_imprese))">                
            </sch:assert>            
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="sez_dati_anagrafici_persona" is-a="persona_ab" >
        <sch:param name="persona" value="//sscheana:persona"/>
    </sch:pattern>
    
    <sch:pattern id="cittadinanza" abstract="false" is-a="cittadinanza_ab">
        <sch:param name="cittadinanza" value="//sscheana:cittadinanza"/>        
    </sch:pattern>
    
    <sch:pattern id="documento_rilasciato" abstract="false" is-a="documento_rilasciato_ab">
        <sch:param name="documento_rilasciato" value="//sscheana:documento_rilasciato"/>        
    </sch:pattern>
    
    <sch:pattern id="sez_dati_anagrafici_residenza_indirizzo_italiano" is-a="indirizzo_italiano_ab" >
        <sch:param name="indirizzo_italiano" value="//sscheana:indirizzo_italiano"/>
    </sch:pattern>
    
    <sch:pattern id="sez_dati_anagrafici" is-a="sez_dati_anagrafici_ab" >
        <sch:param name="procuratore" value="//sscheana:procuratore"/>
    </sch:pattern>
    
</sch:schema>

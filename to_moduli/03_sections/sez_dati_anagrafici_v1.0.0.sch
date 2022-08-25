<!-- 
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/scheda_anagrafica" prefix="sscheana"/>
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    <sch:ns uri="http://agid.it/suap/entities/cittadinanza" prefix="ecitt"/>
    <sch:ns uri="http://agid.it/suap/entities/documento_rilasciato" prefix="edocril"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
    <sch:ns uri="http://agid.it/suap/entities/impresa" prefix="eimpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eie"/>
    
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    <sch:include href="../02_entities/ent_cittadinanza_v1.0.0.sch#cittadinanza_ab"/>
    <sch:include href="../02_entities/ent_documento_rilasciato_v1.0.0.sch#documento_rilasciato_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#indirizzo_estero_ab"/>
    <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#impresa_ab"/>
    <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#iscrizione_rea_ab"/>
    
    <!--
        
    TODO: verificare se accettabile omettere il vocabolario 
    <sch:pattern id="sez_dati_anagrafici_ab" abstract="true">        
        <sch:rule context="$intermediario">
            <sch:let name="ruolo" value="normalize-space(sscheana:ruolo)"/>
            
            <sch:assert id="sez_dati_anagrafici_ab-intermediario" test="$intermediario='' 
                or ($ruolo!='Agenzia per le imprese')
                or ($ruolo='Agenzia per le imprese' and normalize-space(sscheana:denominazione_agenzia_imprese)!='')">  
                
                Denominazione agenzia per le imprese è necessario
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="sez_dati_anagrafici" is-a="sez_dati_anagrafici_ab" >
        <sch:param name="intermediario" value="sscheana:intermediario"/>
    </sch:pattern>
    -->
    
    <!-- ***************** Rappresentante/Persona ********************* -->

    <sch:pattern id="rappresentante_persona" is-a="persona_ab" >
        <sch:param name="persona" value="sscheana:rappresentante/sscheana:persona"/>
    </sch:pattern>
    
    <sch:pattern id="rappresentante_persona_obbligatorieta">
        <sch:rule context="sscheana:rappresentante/sscheana:persona">
            <sch:let name="sesso" value="normalize-space(epers:sesso)"/>
            <sch:let name="luogo_nascita_italiano" value="normalize-space(epers:luogo_nascita_italiano)"/>
            <sch:let name="stato_estero" value="normalize-space(epers:stato_estero)"/>
        
            <sch:assert id="rappresentante_persona_obbligatorieta_ass_obbligatori" test="$sesso = ''  or ($luogo_nascita_italiano = '' and $stato_estero = '')"> 
                Per il rappresentante vanno specificati obbligatoriamente sesso e luogo di nascita
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!-- ***************** Rappresentante/Cittadinanza ********************* -->
    
    <!-- 
        FIXME: il vocabolario degli stati contiene "apolide" che è accettabile solo per un vocabolario
        di cittadinanza (apolide e' una proprieta della persona)
    -->
    <sch:pattern id="cittadinanza" abstract="false" is-a="cittadinanza_ab">
        <sch:param name="cittadinanza" value="sscheana:rappresentante/sscheana:cittadinanza"/>        
    </sch:pattern>
    
    <!-- ***************** Rappresentante/Documento rilasciato ********************* -->
    
    <!-- 
        TODO: verificare che il permesso soggiorno presente solo nel caso di cittadino non EU
        A livello di vocabolario controllato si potrebbe fare ma valutare se oneroso.
    -->
    <sch:pattern id="documento_rilasciato" abstract="false" is-a="documento_rilasciato_ab">
        <sch:param name="documento_rilasciato" value="sscheana:rappresentante/sscheana:permesso_soggiorno"/>        
    </sch:pattern>
    
    <!-- ***************** Rappresentante/residenza ********************* -->
    
    <sch:pattern id="indirizzo_estero" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="sscheana:indirizzo_estero"/>        
    </sch:pattern>
    
    <sch:pattern id="indirizzo_italiano" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="sscheana:indirizzo_italiano"/>        
    </sch:pattern>
    
    <!-- ***************** Rappresentante/contatti ********************* -->
    
    <!-- TODO verificare se a livello modulo è obblgiatorio specificare almeno un contatto -->
    <!-- vietare l'utilizzo diversi dai 3 indicati nel modulo -->
    
    
    <!--
    <sch:pattern id="iscrizione_rea" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="eimpresa:iscrizione_registro"/>        
    </sch:pattern>
    
    <sch:pattern id="impresa" abstract="false" is-a="impresa_ab">
        <sch:param name="impresa" value="sscheana:impresa"/>        
    </sch:pattern>
    
    -->
</sch:schema>

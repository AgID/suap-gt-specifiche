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
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eindest"/>   
    <sch:ns uri="http://agid.it/suap/entities/contatti" prefix="econt"/>    
    <sch:ns uri="http://agid.it/suap/entities/rappresentanza" prefix="erapp"/>
    
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    <sch:include href="../02_entities/ent_cittadinanza_v1.0.0.sch#cittadinanza_ab"/>
    <sch:include href="../02_entities/ent_documento_rilasciato_v1.0.0.sch#documento_rilasciato_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#indirizzo_estero_ab"/>
    <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#impresa_ab"/>
    <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#iscrizione_rea_ab"/>
    <sch:include href="../02_entities/ent_rappresentanza_v1.0.0.sch#rappresentanza_ab"/>
    
    <!-- ############################################### RAPPRESENTANTE ############################################### -->
    
    <!-- ***************** Rappresentante/Persona ********************* -->

    <sch:pattern id="rappresentante_persona" is-a="persona_ab" >
        <sch:param name="persona" value="sscheana:rappresentante/sscheana:persona"/>
    </sch:pattern>
    
    <sch:pattern id="rappresentante_persona_obbligatorieta">
        <sch:rule context="sscheana:rappresentante/sscheana:persona">
            <sch:let name="sesso" value="normalize-space(epers:sesso)"/>
            <sch:let name="luogo_nascita_italiano" value="normalize-space(epers:luogo_nascita_italiano)"/>
            <sch:let name="stato_estero" value="normalize-space(epers:stato_estero)"/>
        
            <sch:assert id="rappresentante_persona_obbligatorieta_ass_sesso" test="$sesso != ''"> 
                Rappresentante: va specificato obbligatoriamente il sesso 
            </sch:assert>
            <sch:assert id="rappresentante_persona_obbligatorieta_ass_luogo_nascita" test="$luogo_nascita_italiano != '' or  $stato_estero != ''"> 
                Rappresentante: vanno specificati obbligatoriamente i dati del luogo di nascita italiano o estero
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!-- ***************** Rappresentante/Cittadinanza ********************* -->
    
    <!-- 
        FIXME: il vocabolario degli stati contiene "apolide" che è accettabile solo per un vocabolario
        di cittadinanza (apolide e' una proprieta della persona)
    -->
    <sch:pattern id="rappresentante_cittadinanza" abstract="false" is-a="cittadinanza_ab">
        <sch:param name="cittadinanza" value="sscheana:rappresentante/sscheana:cittadinanza"/>        
    </sch:pattern>
    
    <!-- ***************** Rappresentante/Documento rilasciato ********************* -->
    
    <!-- 
        TODO: verificare che il permesso soggiorno presente solo nel caso di cittadino non EU
        A livello di vocabolario controllato si potrebbe fare ma valutare se oneroso e cmq i vocabolari 
        attuali non prevedeono questo metadato su appartenenza o meno dello stato ad EU
    -->
    <sch:pattern id="rappresentante_documento_rilasciato" abstract="false" is-a="documento_rilasciato_ab">
        <sch:param name="documento_rilasciato" value="sscheana:rappresentante/sscheana:permesso_soggiorno"/>        
    </sch:pattern>
    
    <!-- ***************** Rappresentante/residenza ********************* -->
    
    <sch:pattern id="rappresentante_res_indirizzo_estero" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="sscheana:rappresentante/sscheana:residenza/sscheana:indirizzo_estero"/>        
    </sch:pattern>
    
    <sch:pattern id="rappresentante_res_indirizzo_italiano" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="sscheana:rappresentante/sscheana:residenza/sscheana:indirizzo_italiano"/>        
    </sch:pattern>
    
    <!-- ***************** Rappresentante/contatti ********************* -->
    
    <sch:pattern id="rappresentante_contatti">
        <sch:rule context="sscheana:rappresentante/sscheana:contatti">
            
            <sch:let name="fax" value="normalize-space(econt:fax)"/>
            <!--
                Al momento non ci sono particolari filtri sugli altri se non il rispetto dei constraint
                di formato in xsd
            <sch:let name="telefono_fisso" value="normalize-space(econt:telefono_fisso)"/>
            <sch:let name="cellulare" value="normalize-space(econt:cellulare)"/>
            <sch:let name="domicilio_digitale" value="normalize-space(econt:domicilio_digitale)"/>
            <sch:let name="email" value="normalize-space(econt:email)"/>
            -->
            
            <sch:assert id="rappresentante_contatti_ass_fax" test="$fax = ''"> 
                Rappresentante: Non ammesso specificare un fax tra i contatti
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!-- ***************** Rappresentante/rappresentanza ********************* -->
    
    <!-- 
        FIXME:nella definizione di rappresentanza data inizio e fine non sono obbligatori.
        Valutare se farli diventare obbligatori in generale oppure forzare su schematron qui controllo
    -->
    <sch:pattern id="rappresentante_rappresentanza" abstract="false" is-a="rappresentanza_ab">
        <sch:param name="rappresentanza" value="sscheana:rappresentante/sscheana:rappresentanza"/>        
    </sch:pattern>
    
    <!-- ############################################### IMPRESA ############################################### -->
    
    <sch:pattern id="impresa" abstract="false" is-a="impresa_ab">
        <sch:param name="impresa" value="sscheana:impresa"/>        
    </sch:pattern>
    
    <!-- ############################################### INTERMEDIARIO ######################################### -->
    
    <!-- ***************** Intermediario/Persona ********************* -->
    
    <sch:pattern id="intermediario_persona" is-a="persona_ab" >
        <sch:param name="persona" value="sscheana:intermediario/sscheana:persona"/>
    </sch:pattern>
    
    <sch:pattern id="intermediario_persona_obbligatorieta">
        <sch:rule context="sscheana:intermediario/sscheana:persona">
            <sch:let name="sesso" value="normalize-space(epers:sesso)"/>
            <sch:let name="luogo_nascita_italiano" value="normalize-space(epers:luogo_nascita_italiano)"/>
            <sch:let name="stato_estero" value="normalize-space(epers:stato_estero)"/>
            
            <!-- TODO Business: verificare perche diversamente dal caso del rappresentante non viene chiesto il sesso per intermediario --> 
            <sch:assert id="intermediario_persona_obbligatorieta_ass_sesso" test="$sesso = ''"> 
                Intermediario: campo sesso non ammesso
            </sch:assert>
            <sch:assert id="intermediario_persona_obbligatorieta_ass_luogo_nascita" test="$luogo_nascita_italiano != '' or $stato_estero != ''"> 
                Intermediario: vanno specificati obbligatoriamente i dati del luogo di nascita italiano o estero
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!-- ***************** Intermediario/residenza ********************* -->
    
    <sch:pattern id="intermediario_residenza_indirizzo_estero">
        <sch:rule context="sscheana:intermediario/sscheana:residenza">
            <sch:let name="indirizzo_estero" value="normalize-space(sscheana:indirizzo_estero)"/>
            
            <sch:assert id="intermediario_residenza_indirizzo_estero_ass_non_ammesso" test="$indirizzo_estero != '' "> 
                Intermediario: non ammessa residenza all'estero.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="intermediario_residenza_indirizzo_italiano" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="sscheana:intermediario/sscheana:residenza/sscheana:indirizzo_italiano"/>        
    </sch:pattern>
    
    <!-- ***************** Intermediario/contatti ********************* -->
    
    <sch:pattern id="intermediario_contatti">
        <sch:rule context="sscheana:intermediario/sscheana:contatti">
            
            <sch:let name="fax" value="normalize-space(econt:fax)"/>
            <!--
                Al momento non ci sono particolari filtri sugli altri se non il rispetto dei constraint
                di formato in xsd
            <sch:let name="telefono_fisso" value="normalize-space(econt:telefono_fisso)"/>
            <sch:let name="cellulare" value="normalize-space(econt:cellulare)"/>
            <sch:let name="domicilio_digitale" value="normalize-space(econt:domicilio_digitale)"/>
            <sch:let name="email" value="normalize-space(econt:email)"/>
            -->
            
            <sch:assert id="intermediario_contatti_ass_fax" test="$fax = ''"> 
                Intermediario: Non ammesso specificare un fax tra i contatti
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    
    <!--
        
    Omesso controllo: si intende implicitamente che se indicata la denominazione dell'agenzia delle imprese si
    e' in tal caso altrimenti si e' nello scenario di procura/delega ad intermediario esterno all'impresa.
        
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
    
</sch:schema>
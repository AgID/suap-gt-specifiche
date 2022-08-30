<!-- 
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/scheda_anagrafica" prefix="sscheana"/>
    
    <sch:ns uri="http://agid.it/suap/entities/impresa" prefix="eimpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/> 
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eindest"/>
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    <sch:ns uri="http://agid.it/suap/entities/cittadinanza" prefix="ecitt"/>
    <sch:ns uri="http://agid.it/suap/entities/documento_rilasciato" prefix="edocril"/>
    <sch:ns uri="http://agid.it/suap/entities/rappresentanza" prefix="erapp"/>
 
    
    <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#iscrizione_rea_ab"/>
    
    <sch:pattern id="sez_dati_anagrafici_iscrizione_registro" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="eimpresa:iscrizione_registro"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    
    <sch:pattern id="sez_dati_anagrafici_indirizzo_italiano" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="eimpresa:indirizzo_italiano"/>        
    </sch:pattern>
    
    <sch:pattern id="sez_dati_anagrafici_indirizzo_italiano_residenza" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="sscheana:indirizzo_italiano"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#indirizzo_estero_ab"/>
    
    <sch:pattern id="sez_dati_anagrafici_indirizzo_estero" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="eimpresa:indirizzo_estero"/>        
    </sch:pattern>
    
    <sch:pattern id="sez_dati_anagrafici_indirizzo_estero_residenza" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="sscheana:indirizzo_estero"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#impresa_ab"/>       
    
    <sch:pattern id="sez_dati_anagrafici_impresa" abstract="false" is-a="impresa_ab">
        <sch:param name="impresa" value="sscheana:impresa"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    
    <sch:pattern id="sez_dati_anagrafici_persona" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="sscheana:persona"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_cittadinanza_v1.0.0.sch#cittadinanza_ab"/>
    
    <sch:pattern id="sez_dati_anagrafici_cittadinanza" abstract="false" is-a="cittadinanza_ab">               
        <sch:param name="cittadinanza" value="sscheana:cittadinanza"/>
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_documento_rilasciato_v1.0.0.sch#documento_rilasciato_ab"/> 
    
    <sch:pattern id="sez_dati_anagrafici_permesso_soggiorno" abstract="false" is-a="documento_rilasciato_ab">
        <sch:param name="documento_rilasciato" value="sscheana:permesso_soggiorno"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_rappresentanza_v1.0.0.sch#rappresentanza_ab"/>
    
    <sch:pattern id="sez_dati_anagrafici_rappresentanza" abstract="false" is-a="rappresentanza_ab">
        <sch:param name="rappresentanza" value="sscheana:rappresentanza"/>        
    </sch:pattern>
    
    <sch:pattern id="dati_anagrafici_ab" abstract="true">
        
        <sch:rule id="rule_dati_anagrafici_ab_persona" context="$nsscheana:persona">
            
            <sch:assert test="normalize-space(epers:sesso)!=''">
                Sesso è obbligatorio
            </sch:assert>
            
            <sch:assert test="normalize-space(epers:data_nascita)!=''">
                Data di nascita è obbligatorio
            </sch:assert>
            
            <sch:assert test="normalize-space(epers:luogo_nascita_italiano)!='' or normalize-space(epers:stato_estero)!=''">
                Luogo di nascita italiano o stato estero è obbligatorio
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule id="rule_dati_anagrafici_ab_contatti" context="$nsscheana:contatti">
            <sch:assert test="count(*[name(.)='econt:fax'])=0">
                Fax non permesso come contatto
            </sch:assert>
            
            <sch:assert test="count(*)&gt;0">
                Almeno un contatto è obbligatorio
            </sch:assert>
        </sch:rule>
        
        <sch:rule id="rule_dati_anagrafici_ab_solo_permesso_soggiorno" context="sscheana:permesso_soggiorno">         
            <sch:assert test="normalize-space(edocril:tipo)='PS'">
                Solo permesso di soggiorno è ammesso
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="dati_anagrafici" abstract="false" is-a="dati_anagrafici_ab">
        <sch:param name="nsscheana" value="sscheana"/>                
    </sch:pattern>
    
</sch:schema>
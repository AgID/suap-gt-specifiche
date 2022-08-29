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
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eindest"/>
    <sch:ns uri="http://agid.it/suap/entities/rappresentanza" prefix="erapp"/>
    <sch:ns uri="http://agid.it/suap/entities/impresa" prefix="eimpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
        
    <sch:pattern id="dati_anagrafici_ab" abstract="true">
               
        <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#rule_impresa_ab"/>
        
        <sch:rule id="rule_dati_anagrafici_ab_impresa" context="$nsscheana:impresa">
            <sch:extends rule="rule_impresa_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#rule_iscrizione_rea_ab"/>  
        
        <sch:rule id="rule_dati_anagrafici_ab_indirizzo_registro" context="eimpresa:iscrizione_registro">
            <sch:extends rule="rule_iscrizione_rea_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#rule_indirizzo_italiano_ab"/>
        
        <sch:rule id="rule_dati_anagrafici_ab_indirizzo_italiano_impresa" context="eimpresa:indirizzo_italiano">
            <sch:extends rule="rule_indirizzo_italiano_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#rule_indirizzo_estero_ab"/> 
        
        <sch:rule id="rule_dati_anagrafici_ab_indirizzo_estero_impresa" context="eimpresa:indirizzo_estero">
            <sch:extends rule="rule_indirizzo_estero_ab"/>
        </sch:rule>        
        
        <sch:include href="../02_entities/ent_persona_v1.0.0.sch#rule_persona_ab"/>
        
        <sch:rule id="rule_dati_anagrafici_ab_persona" context="$nsscheana:persona">
            <sch:extends rule="rule_persona_ab"/>
            
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
                
        <sch:include href="../02_entities/ent_cittadinanza_v1.0.0.sch#rule_cittadinanza_ab"/>
        
        <sch:rule id="rule_dati_anagrafici_ab_cittadinanza" context="$nsscheana:cittadinanza">
            <sch:extends rule="rule_cittadinanza_ab"/>
        </sch:rule>
        
        <sch:include href="../02_entities/ent_documento_rilasciato_v1.0.0.sch#rule_documento_rilasciato_ab"/>        
        
        <sch:rule id="rule_dati_anagrafici_ab_permesso_soggiorno" context="$nsscheana:permesso_soggiorno">
            <sch:extends rule="rule_documento_rilasciato_ab"/> 
            
            <sch:assert test="normalize-space(edocril:tipo)='PS'">
                Solo permesso di soggiorno è ammesso
            </sch:assert>
        </sch:rule>
                
        <sch:rule id="rule_dati_anagrafici_ab_residenza_indirizzo_italiano" context="$nsscheana:indirizzo_italiano">
            <sch:extends rule="rule_indirizzo_italiano_ab"/>
        </sch:rule>
           
        <sch:rule id="rule_dati_anagrafici_ab_residenza_indirizzo_estero" context="$nsscheana:indirizzo_estero">
            <sch:extends rule="rule_indirizzo_estero_ab"/>
        </sch:rule>
                
        <sch:include href="../02_entities/ent_rappresentanza_v1.0.0.sch#rule_rappresentanza_ab"/>
        
        <sch:rule id="rule_dati_anagrafici_ab_rappresentanza" context="$nsscheana:rappresentanza">
            <sch:extends rule="rule_rappresentanza_ab"/>
        </sch:rule>       
    </sch:pattern>
    
    <sch:pattern id="dati_anagrafici" abstract="false" is-a="dati_anagrafici_ab">
        <sch:param name="nsscheana" value="sscheana"/>                
    </sch:pattern>
    
</sch:schema>
<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/forms/spacci_interni_apertura" prefix="mspaintap"/>    
    <sch:ns uri="http://agid.it/suap/sections/scheda_anagrafica" prefix="sscheana"/>
    <sch:ns uri="http://agid.it/suap/sections/riferimento_attivita" prefix="srifatt"/>
    <sch:ns uri="http://agid.it/suap/entities/impresa" prefix="eimpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/> 
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eindest"/>
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    <sch:ns uri="http://agid.it/suap/entities/cittadinanza" prefix="ecitt"/>
    <sch:ns uri="http://agid.it/suap/entities/documento_rilasciato" prefix="edocril"/>
    <sch:ns uri="http://agid.it/suap/entities/rappresentanza" prefix="erapp"/>
    <sch:ns uri="http://agid.it/suap/sections/apertura_spacci_interni" prefix="sapspaint"/>      
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    <sch:ns uri="http://agid.it/suap/sections/allegati" prefix="sallegati"/>
    <sch:ns uri="http://agid.it/suap/entities/file" prefix="efile"/>
    <sch:ns uri="http://agid.it/suap/sections/altre_dichiarazioni" prefix="saltdic"/>
        
    <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#iscrizione_rea_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#indirizzo_estero_ab"/>
    <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#impresa_ab"/>
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    <sch:include href="../02_entities/ent_cittadinanza_v1.0.0.sch#cittadinanza_ab"/>
    <sch:include href="../02_entities/ent_documento_rilasciato_v1.0.0.sch#documento_rilasciato_ab"/>
    <sch:include href="../02_entities/ent_rappresentanza_v1.0.0.sch#rappresentanza_ab"/>
    <sch:include href="../03_sections/sez_dati_anagrafici_v1.0.0.sch#dati_anagrafici_ab"/>
    <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#settori_merceologici_ab"/> 
    <sch:include href="../03_sections/sez_mod_spacci_interni_apertura_v1.0.0.sch#sez_spacci_interni_apertura_ab"/>
    <sch:include href="../02_entities/ent_files_v1.0.0.sch#files_ab"/>
    <sch:include href="../03_sections/sez_altre_dichiarazioni_v1.0.0.sch#sez_altre_dichiarazini_ab"/>
    <sch:include href="../commons-pattern.sch#controllo_intermediario_ab"/>
    
    <sch:pattern id="mod_spacci_interni_apertura_iscrizione_registro" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="eimpresa:iscrizione_registro"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_indirizzo_italiano" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="eimpresa:indirizzo_italiano"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_indirizzo_italiano_residenza" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="sscheana:indirizzo_italiano"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_indirizzo_estero" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="eimpresa:indirizzo_estero"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_indirizzo_estero_residenza" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="sscheana:indirizzo_estero"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_impresa" abstract="false" is-a="impresa_ab">
        <sch:param name="impresa" value="sscheana:impresa"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_persona" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="sscheana:persona"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_cittadinanza" abstract="false" is-a="cittadinanza_ab">               
        <sch:param name="cittadinanza" value="sscheana:cittadinanza"/>
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_permesso_soggiorno" abstract="false" is-a="documento_rilasciato_ab">
        <sch:param name="documento_rilasciato" value="sscheana:permesso_soggiorno"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_rappresentanza" abstract="false" is-a="rappresentanza_ab">
        <sch:param name="rappresentanza" value="sscheana:rappresentanza"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_dati_anagrafici" abstract="false" is-a="dati_anagrafici_ab">
        <sch:param name="nsscheana" value="sscheana"/>                
    </sch:pattern> 
    
    <sch:pattern id="mod_spacci_interni_apertura_attivita_indirizzo" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="srifatt:indirizzo"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_presso" abstract="false" is-a="impresa_ab">
        <sch:param name="impresa" value="sapspaint:presso"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_settori_merceologici" abstract="false" is-a="settori_merceologici_ab">
        <sch:param name="settori_merceologici" value="sapspaint:settori_merceologici"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_no_dicui" abstract="false" is-a="sez_spacci_interni_apertura_ab">
        <sch:param name="nsapspaint" value="sapspaint"/>        
    </sch:pattern>
        
    <sch:pattern id="mod_spacci_interni_apertura_procura_delega" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:procura_delega"/>        
    </sch:pattern>
        
    <sch:pattern id="mod_spacci_interni_apertura_dichiarazione_requisiti_soci" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:dichiarazione_requisiti_soci"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_assolvimento_imposta_bollo" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:assolvimento_imposta_bollo"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_attestazione_versamenti" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:attestazione_versamenti"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_altre_dichiarazioni" abstract="false" is-a="sez_altre_dichiarazini_ab">
        <sch:param name="nsaltdic" value="saltdic"/>
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura_controllo_intermediario" abstract="false" is-a="controllo_intermediario_ab">
        <sch:param name="modulo" value="mspaintap:spacci_interni_apertura"/>
    </sch:pattern>
    
    <sch:pattern id="mod_spacci_interni_apertura">
        <sch:rule id="rule_mod_spacci_interni_apertura" context="mspaintap:spacci_interni_apertura">
            <sch:assert id="check_allegati" test="count(sallegati:allegati/*[
                name(.)='sallegati:procura_delega'
                or name(.)='sallegati:dichiarazione_requisiti_soci'
                or name(.)='sallegati:attestazione_versamenti'
                or name(.)='sallegati:assolvimento_imposta_bollo'
                ])=count(sallegati:allegati/*)">
                
                Solo gli allegati procura delega, dichiarazione requisiti soci, attestazione versamenti e assolvimento imposta di bollo sono ammessi
            </sch:assert>
            
            <sch:assert id="check_altre_dichiarazioni" test="count(saltdic:altre_dichiazioni/*[
                name(.)='saltdic:non_vendita_pubblico'
                or name(.)='saltdic:vendita_effetuata_a'
                or name(.)='saltdic:rispetto_regolamenti_locali'
                or name(.)='saltdic:impegno_comunicazioni_variazioni'
                ])=count(saltdic:altre_dichiazioni/*) and count(saltdic:altre_dichiazioni/*)=4">
                
                Le altre dichiarazioni non vendita pubblico, vendita effettua a, rispetto regolamenti locali e impegno comunicazioni variazioni sono obbligatorie e sono le uniche amesse
            </sch:assert>
        </sch:rule>
    </sch:pattern>    
   
</sch:schema>

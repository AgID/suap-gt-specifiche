<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/forms/esercizio_media_grande_trasferimento" prefix="mesmegrtr"/>
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
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    <sch:ns uri="http://agid.it/suap/sections/allegati" prefix="sallegati"/>
    <sch:ns uri="http://agid.it/suap/entities/file" prefix="efile"/>
    <sch:ns uri="http://agid.it/suap/sections/altre_dichiarazioni" prefix="saltdic"/>        
    <sch:ns uri="http://agid.it/suap/sections/requisiti_onorabilita" prefix="sreqono"/>    
    <sch:ns uri="http://agid.it/suap/entities/requisiti_professionali" prefix="ereqpro"/>
    <sch:ns uri="http://agid.it/suap/sections/requisiti_professionali" prefix="sreqpro"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rec" prefix="eisrec"/>    
    <sch:ns uri="http://agid.it/suap/entities/modalita_vendita" prefix="emodven"/>
    <sch:ns uri="http://agid.it/suap/entities/carattere_esercizio" prefix="ecarese"/>    
    <sch:ns uri="http://agid.it/suap/sections/trasferimento_esercizio_media_grande" prefix="stresmegr"/>
        
    
    <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#iscrizione_rea_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#indirizzo_estero_ab"/>
    <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#impresa_ab"/>
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    <sch:include href="../02_entities/ent_cittadinanza_v1.0.0.sch#cittadinanza_ab"/>
    <sch:include href="../02_entities/ent_documento_rilasciato_v1.0.0.sch#documento_rilasciato_ab"/>
    <sch:include href="../02_entities/ent_rappresentanza_v1.0.0.sch#rappresentanza_ab"/>
    <sch:include href="../03_sections/sez_dati_anagrafici_v1.0.0.sch#dati_anagrafici_ab"/>         
    <sch:include href="../02_entities/ent_files_v1.0.0.sch#files_ab"/>
    <sch:include href="../03_sections/sez_altre_dichiarazioni_v1.0.0.sch#sez_altre_dichiarazini_ab"/>
    <sch:include href="commons-pattern.sch#controllo_intermediario_ab"/>    
    <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#settori_merceologici_ab"/>
    <sch:include href="../02_entities/ent_requisiti_professionali_v1.0.0.sch#requisiti_professionali_ab"/>
    <sch:include href="../02_entities/ent_iscrizione_REC_v1.0.0.sch#iscrizione_rec_ab"/>
    <sch:include href="../02_entities/ent_modalita_vendita_v1.0.0.sch#modalita_vendita_ab"/>    
    <sch:include href="commons-pattern.sch#alimentare_ab"/>
    <sch:include href="commons-pattern.sch#non_alimentare_ab"/>
    <sch:include href="../03_sections/sez_mod_esercizio_media_grande_trasferimento_v1.0.0.sch#sez_media_grande_trasferimento_ab"/>
    
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_iscrizione_registro" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="eimpresa:iscrizione_registro"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_indirizzo_italiano" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="eimpresa:indirizzo_italiano"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_indirizzo_italiano_residenza" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="sscheana:indirizzo_italiano"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_indirizzo_estero" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="eimpresa:indirizzo_estero"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_indirizzo_estero_residenza" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="sscheana:indirizzo_estero"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_impresa" abstract="false" is-a="impresa_ab">
        <sch:param name="impresa" value="sscheana:impresa"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_persona" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="sscheana:persona"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_cittadinanza" abstract="false" is-a="cittadinanza_ab">               
        <sch:param name="cittadinanza" value="sscheana:cittadinanza"/>
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_permesso_soggiorno" abstract="false" is-a="documento_rilasciato_ab">
        <sch:param name="documento_rilasciato" value="sscheana:permesso_soggiorno"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_rappresentanza" abstract="false" is-a="rappresentanza_ab">
        <sch:param name="rappresentanza" value="sscheana:rappresentanza"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_dati_anagrafici" abstract="false" is-a="dati_anagrafici_ab">
        <sch:param name="nsscheana" value="sscheana"/>                
    </sch:pattern> 
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_attivita_indirizzo" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="srifatt:indirizzo"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_procura_delega" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:procura_delega"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_planimetria_locali" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:planimetria_locali"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_dichiarazione_requisiti_soci" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:dichiarazione_requisiti_soci"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_dichiarazione_requisiti_preposto" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:dichiarazione_requisiti_preposto"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_assolvimento_imposta_bollo" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:assolvimento_imposta_bollo"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_attestazione_versamenti" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:attestazione_versamenti"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_controllo_intermediario" abstract="false" is-a="controllo_intermediario_ab">
        <sch:param name="modulo" value="mesmegrtr:esercizio_media_grande_trasferimento"/>
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_requisiti_professionali" abstract="false" is-a="requisiti_professionali_ab">
        <sch:param name="requisiti_professionali" value="sreqpro:requisiti_professionali"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_requisiti_professionali_preposto" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="ereqpro:requisiti_professionali_preposto"/>             
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_luogo_corso" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="ereqpro:luogo_corso"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_sede_impresa" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="ereqpro:sede_impresa"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_iscrizione_registro_requisiti_preofessionali" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="ereqpro:iscrizione_registro"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_iscrizione_rec" abstract="false" is-a="iscrizione_rec_ab">
        <sch:param name="iscrizione_rec" value="ereqpro:iscrizione_REC"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento">
        <sch:rule id="rule_mod_esercizio_media_grande_trasferimento" context="mesmegrtr:esercizio_media_grande_trasferimento">
            <sch:assert id="check_allegati" test="count(sallegati:allegati/*[
                    name(.)='sallegati:procura_delega'
                    or name(.)='sallegati:dichiarazione_requisiti_soci'
                    or name(.)='sallegati:dichiarazione_requisiti_preposto'
                    or name(.)='sallegati:planimetria_locali'                
                    or name(.)='sallegati:attestazione_versamenti'
                    or name(.)='sallegati:assolvimento_imposta_bollo'
                    ])=count(sallegati:allegati/*) 
                and boolean(//sallegati:planimetria_locali)
                and boolean(//sallegati:assolvimento_imposta_bollo)">
                
                Solo gli allegati procura delega, dichiarazione requisiti soci, dichiarazione requisiti preposto, attestazione versamenti e assolvimento imposta di bollo sono ammessi
                ed allegato planimetria locali e assolvimento imposta di bollo sono obbligatori
 
            </sch:assert>
            
            <sch:assert id="check_altre_dichiarazioni" test="count(saltdic:altre_dichiazioni/*[
                name(.)='saltdic:rispetto_regolamenti_locali'
                or name(.)='saltdic:impegno_comunicazioni_variazioni'
                or name(.)='saltdic:rispetto_normativa_prevenzioni_incendi'
                ])=count(saltdic:altre_dichiazioni/*) and count(saltdic:altre_dichiazioni/*)=3">
                
                Le altre dichiarazioni rispetto regolamenti locali, rispetto normativa prevenzioni incendi e impegno comunicazioni variazioni sono obbligatorie e sono le uniche amesse
            </sch:assert>
        </sch:rule>
    </sch:pattern> 
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_settori_merceologici" abstract="false" is-a="settori_merceologici_ab">
        <sch:param name="settori_merceologici" value="stresmegr:settori_merceologici"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_trasferimento_indirizzo" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="stresmegr:indirizzo"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_sez_media_grande_trasferimento" abstract="false" is-a="sez_media_grande_trasferimento_ab">
        <sch:param name="nstresmegr" value="stresmegr"/>        
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_alimentare" abstract="false" is-a="alimentare_ab">                     
        <sch:param name="modulo" value="mesmegrtr:esercizio_media_grande_trasferimento"/>
    </sch:pattern>
    
    <sch:pattern id="mod_esercizio_media_grande_trasferimento_non_alimentare" abstract="false" is-a="non_alimentare_ab">
        <sch:param name="modulo" value="mesmegrtr:esercizio_media_grande_trasferimento"/>        
    </sch:pattern>
    
    <sch:phase id="non_alimentare_ph">
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_non_alimentare"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_iscrizione_registro"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_indirizzo_italiano"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_indirizzo_italiano_residenza"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_indirizzo_estero"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_indirizzo_estero_residenza"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_impresa"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_persona"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_cittadinanza"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_permesso_soggiorno"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_rappresentanza"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_dati_anagrafici"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_attivita_indirizzo"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_procura_delega"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_planimetria_locali"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_dichiarazione_requisiti_soci"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_dichiarazione_requisiti_preposto"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_assolvimento_imposta_bollo"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_attestazione_versamenti"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_controllo_intermediario"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_requisiti_professionali"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_requisiti_professionali_preposto"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_luogo_corso"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_sede_impresa"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_iscrizione_registro_requisiti_preofessionali"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_iscrizione_rec"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento"/>        
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_settori_merceologici"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_trasferimento_indirizzo"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_sez_media_grande_trasferimento"/>
    </sch:phase>
    
    <sch:phase id="alimentare_ph">
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_alimentare"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_iscrizione_registro"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_indirizzo_italiano"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_indirizzo_italiano_residenza"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_indirizzo_estero"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_indirizzo_estero_residenza"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_impresa"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_persona"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_cittadinanza"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_permesso_soggiorno"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_rappresentanza"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_dati_anagrafici"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_attivita_indirizzo"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_procura_delega"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_planimetria_locali"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_dichiarazione_requisiti_soci"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_dichiarazione_requisiti_preposto"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_assolvimento_imposta_bollo"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_attestazione_versamenti"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_controllo_intermediario"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_requisiti_professionali"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_requisiti_professionali_preposto"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_luogo_corso"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_sede_impresa"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_iscrizione_registro_requisiti_preofessionali"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_iscrizione_rec"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento"/>        
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_settori_merceologici"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_trasferimento_indirizzo"/>
        <sch:active pattern="mod_esercizio_media_grande_trasferimento_sez_media_grande_trasferimento"/>
    </sch:phase>
    
</sch:schema>

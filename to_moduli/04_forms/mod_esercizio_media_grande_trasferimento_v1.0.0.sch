<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
    
    TODO
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/forms/esercizio_media_grande_trasferimento" prefix="mesmegrtr"/>
    <sch:ns uri="http://agid.it/suap/sections/trasferimento_esercizio_media_grande" prefix="stresmegr"/>    
    <sch:ns uri="http://agid.it/suap/sections/scheda_anagrafica" prefix="sscheana"/>
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    <sch:ns uri="http://agid.it/suap/entities/cittadinanza" prefix="ecitt"/>
    <sch:ns uri="http://agid.it/suap/entities/documento_rilasciato" prefix="edocril"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
    <sch:ns uri="http://agid.it/suap/entities/impresa" prefix="eimpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eie"/>
    <sch:ns uri="http://agid.it/suap/sections/riferimento_attivita" prefix="srifatt"/>
    <sch:ns uri="http://agid.it/suap/sections/requisiti_onorabilita_professionali" prefix="sreonpr"/>
    <sch:ns uri="http://agid.it/suap/entities/requisiti_onorabilita" prefix="ereqono"/>
    <sch:ns uri="http://agid.it/suap/entities/requisiti_professionali" prefix="ereqpro"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rec" prefix="eisrec"/>  
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    <sch:ns uri="http://agid.it/suap/entities/allegati" prefix="eallegati"/>
    <sch:ns uri="http://agid.it/suap/sections/allegati" prefix="sallegati"/>
    <sch:ns uri="http://agid.it/suap/entities/file" prefix="efile"/> 
    <sch:ns uri="http://agid.it/suap/sections/altre_dichiarazioni" prefix="saltdic"/>
            
    <sch:include href="../03_sections/sez_dati_anagrafici_v1.0.0.sch#sez_dati_anagrafici_ab"/>
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    <sch:include href="../02_entities/ent_cittadinanza_v1.0.0.sch#cittadinanza_ab"/>
    <sch:include href="../02_entities/ent_documento_rilasciato_v1.0.0.sch#documento_rilasciato_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#indirizzo_estero_ab"/>
    <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#impresa_ab"/>
    <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#iscrizione_rea_ab"/>
    <sch:include href="../02_entities/ent_requisiti_professionali_v1.0.0.sch#requisiti_professionali_ab"/>
    <sch:include href="../02_entities/ent_iscrizione_REC_v1.0.0.sch#iscrizione_rec_ab"/>
    <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#settori_merceologici_ab"/>
    <sch:include href="../02_entities/ent_files_v1.0.0.sch#files_ab"/>
    <sch:include href="../commons-pattern.sch#alimentare_ab"/>
    <sch:include href="../commons-pattern.sch#non_alimentare_ab"/>
    <sch:include href="../commons-pattern.sch#procuratore_ab"/>
    
    <sch:pattern id="altre_dichiarazioni_ab" abstract="true">       
        <sch:rule context="$altre_dichiarazioni"> 
            <sch:assert id="allegati_ab-rispetto_regolamenti_locali" test="normalize-space(saltdic:rispetto_regolamenti_locali)!=''"> 
                Dichiarazione rispetto regolamenti locali è obbligatoria
            </sch:assert>
            
            <sch:assert id="allegati_ab-rispetto_normativa_prevenzioni_incendi" test="normalize-space(saltdic:rispetto_normativa_prevenzioni_incendi)!=''"> 
                Dichiarazione rispetto normativa prevenzioni incendi è obbligatoria
            </sch:assert>
            
            <sch:assert id="allegati_ab-rispetto_normativa_movimentazione_merci" test="normalize-space(saltdic:rispetto_normativa_movimentazione_merci)!=''"> 
                Dichiarazione rispetto normativa movimentazione merci (parcheggio, sosta e movimentazione) è obbligatoria
            </sch:assert>           
            
            <sch:assert id="allegati_ab-impegno_comunicazioni" test="normalize-space(saltdic:impegno_comunicazioni)!=''"> 
                Dichiarazione impegno comunicazioni variazioni è obbligatoria
            </sch:assert> 
            
            <sch:assert id="allegati_ab-non_presenti" test="count(*[
                name(.)!='saltdic:rispetto_regolamenti_locali'
                and name(.)!='saltdic:rispetto_normativa_prevenzioni_incendi'
                and name(.)!='saltdic:rispetto_normativa_movimentazione_merci'
                and name(.)!='saltdic:impegno_comunicazioni'
                ])=0"> 
                Solo Dichiarazione rispetto regolamenti locali, Dichiarazione rispetto normativa prevenzioni incendi, Dichiarazione rispetto normativa movimentazione merci e Dichiarazione impegno comunicazioni variazioni è obbligatoria                
                "/>)
            </sch:assert>             
        </sch:rule>       
    </sch:pattern>  
    
    <sch:pattern id="altre_dichiarazioni" abstract="false" is-a="altre_dichiarazioni_ab">
        <sch:param name="altre_dichiarazioni" value="saltdic:altre_dichiazioni"/>        
    </sch:pattern>
    
    <sch:pattern id="allegati_ab" abstract="true">       
        <sch:rule context="$allegati">                                 
            <sch:assert id="allegati_ab-planimetria" test="normalize-space(sallegati:planimetria_locali)!=''"> 
                Planimetria allegati è obbligatoria
            </sch:assert>
            
            <sch:assert id="allegati_ab-assolvemento_imposta_bolloi" test="normalize-space(sallegati:assolvemento_imposta_bollo)!=''"> 
                Assolvemento imposta bollo è obbligatoria
            </sch:assert>
        </sch:rule>       
    </sch:pattern>  
    
    <sch:pattern id="allegati" abstract="false" is-a="allegati_ab">
        <sch:param name="allegati" value="sallegati:allegati"/>        
    </sch:pattern>
    
    <sch:pattern id="procuratore" abstract="false" is-a="procuratore_ab">
        <sch:param name="modulo" value="mesmegrtr:esercizio_media_grande_trasferimento"/>        
    </sch:pattern>
    
    <sch:pattern id="alimentare" abstract="false" is-a="alimentare_ab">
        <sch:param name="modulo" value="mesmegrtr:esercizio_media_grande_trasferimento"/>        
    </sch:pattern>
    
    <sch:pattern id="non_alimentare" abstract="false" is-a="non_alimentare_ab">
        <sch:param name="modulo" value="mesmegrtr:esercizio_media_grande_trasferimento"/>        
    </sch:pattern>
    
    <sch:pattern id="sez_dati_anagrafici" is-a="sez_dati_anagrafici_ab" >
        <sch:param name="procuratore" value="sscheana:procuratore"/>
    </sch:pattern>
    
    <sch:pattern id="persona_scheda_anagrafica" is-a="persona_ab" >
        <sch:param name="persona" value="sscheana:persona"/>   
    </sch:pattern>
    
    <sch:pattern id="cittadinanza" abstract="false" is-a="cittadinanza_ab">
        <sch:param name="cittadinanza" value="sscheana:cittadinanza"/>        
    </sch:pattern>
    
    <sch:pattern id="documento_rilasciato" abstract="false" is-a="documento_rilasciato_ab">
        <sch:param name="documento_rilasciato" value="sscheana:documento_rilasciato"/>        
    </sch:pattern>
    
    <sch:pattern id="iscrizione_rea_scheda_anagrafica" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="eimpresa:iscrizione_registro"/>        
    </sch:pattern>
    
    <sch:pattern id="impresa" abstract="false" is-a="impresa_ab">
        <sch:param name="impresa" value="sscheana:impresa"/>        
    </sch:pattern>
    
    <sch:pattern id="indirizzo_estero" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="sscheana:indirizzo_estero"/>        
    </sch:pattern>
    
    <sch:pattern id="indirizzo_italiano_scheda_anagrafica" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="sscheana:indirizzo_italiano"/>        
    </sch:pattern>
    
    <sch:pattern id="indirizzo_italiano_rif_attivita" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="srifatt:indirizzo"/>        
    </sch:pattern>
    
    <sch:pattern id="requisiti_professionali" abstract="false" is-a="requisiti_professionali_ab">
        <sch:param name="requisiti_professionali" value="sreonpr:requisiti_professionali"/>        
    </sch:pattern>
    
    <sch:pattern id="persona_requisiti_professionali" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="ereqpro:requisiti_professionali_preposto"/>         
    </sch:pattern>
    
    <sch:pattern id="indirizzo_italiano_luogo_corso" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="ereqpro:luogo_corso"/>        
    </sch:pattern>
    
    <sch:pattern id="iscrizione_rea_requisiti_professionali" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="ereqpro:iscrizione_registro"/>        
    </sch:pattern>
    
    <sch:pattern id="indirizzo_italiano_sede_impresa" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="ereqpro:sede_impresa"/>        
    </sch:pattern>
    
    <sch:pattern id="iscrizione_rec" abstract="false" is-a="iscrizione_rec_ab">
        <sch:param name="iscrizione_rec" value="ereqpro:iscrizione_REC"/>        
    </sch:pattern>
    
    <sch:pattern id="settori_merceologici" abstract="false" is-a="settori_merceologici_ab">
        <sch:param name="settori_merceologici" value="stresmegr:settori_merceologici"/>        
    </sch:pattern>
    
    <sch:pattern id="indirizzo_italiano" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="stresmegr:indirizzo"/>        
    </sch:pattern>
    
    <sch:pattern id="files_procura_delega" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:procura_delega"/>        
    </sch:pattern>
    
    <sch:pattern id="files_dichiarazione_requisiti_preposto" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:dichiarazione_requisiti_preposto"/>        
    </sch:pattern>
    
    <sch:pattern id="files_dichiarazione_requisiti_soci" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:dichiarazione_requisiti_soci"/>        
    </sch:pattern>
    
    <sch:pattern id="files_planimetria_locali" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:planimetria_locali"/>        
    </sch:pattern>
    
    <sch:pattern id="files_assolvemento_imposta_bollo" abstract="false" is-a="files_ab">
        <sch:param name="file" value="sallegati:assolvemento_imposta_bollo"/>        
    </sch:pattern>
    
    
    <sch:phase id="non_alimentare_ph">
        <sch:active pattern="non_alimentare"/>
        <sch:active pattern="procuratore"/>
        <sch:active pattern="sez_dati_anagrafici"/>
        <sch:active pattern="persona_scheda_anagrafica"/>
        <sch:active pattern="cittadinanza"/>
        <sch:active pattern="documento_rilasciato"/>
        <sch:active pattern="iscrizione_rea_scheda_anagrafica"/>
        <sch:active pattern="impresa"/>
        <sch:active pattern="indirizzo_estero"/>
        <sch:active pattern="indirizzo_italiano_scheda_anagrafica"/>
        <sch:active pattern="indirizzo_italiano_rif_attivita"/>
        <sch:active pattern="settori_merceologici"/>
        <sch:active pattern="requisiti_professionali"/>
        <sch:active pattern="persona_requisiti_professionali"/>
        <sch:active pattern="indirizzo_italiano_luogo_corso"/>
        <sch:active pattern="iscrizione_rea_requisiti_professionali"/>
        <sch:active pattern="indirizzo_italiano_sede_impresa"/>
        <sch:active pattern="iscrizione_rec"/>
        <sch:active pattern="indirizzo_italiano"/>
        <sch:active pattern="files_procura_delega"/>
        <sch:active pattern="files_dichiarazione_requisiti_preposto"/>
        <sch:active pattern="files_dichiarazione_requisiti_soci"/>
        <sch:active pattern="files_planimetria_locali"/>        
        <sch:active pattern="files_assolvemento_imposta_bollo"/>
        <sch:active pattern="altre_dichiarazioni"/>
        <sch:active pattern="allegati"/>
    </sch:phase>
    
    <sch:phase id="alimentare_ph">
        <sch:active pattern="alimentare"/>
        <sch:active pattern="procuratore"/>
        <sch:active pattern="sez_dati_anagrafici"/>
        <sch:active pattern="persona_scheda_anagrafica"/>
        <sch:active pattern="cittadinanza"/>
        <sch:active pattern="documento_rilasciato"/>
        <sch:active pattern="iscrizione_rea_scheda_anagrafica"/>
        <sch:active pattern="impresa"/>
        <sch:active pattern="indirizzo_estero"/>
        <sch:active pattern="indirizzo_italiano_scheda_anagrafica"/>
        <sch:active pattern="indirizzo_italiano_rif_attivita"/>      
        <sch:active pattern="settori_merceologici"/>
        <sch:active pattern="requisiti_professionali"/>
        <sch:active pattern="persona_requisiti_professionali"/>
        <sch:active pattern="indirizzo_italiano_luogo_corso"/>
        <sch:active pattern="iscrizione_rea_requisiti_professionali"/>
        <sch:active pattern="indirizzo_italiano_sede_impresa"/>
        <sch:active pattern="iscrizione_rec"/>
        <sch:active pattern="indirizzo_italiano"/>
        <sch:active pattern="files_procura_delega"/>
        <sch:active pattern="files_dichiarazione_requisiti_preposto"/>
        <sch:active pattern="files_dichiarazione_requisiti_soci"/>
        <sch:active pattern="files_planimetria_locali"/>        
        <sch:active pattern="files_assolvemento_imposta_bollo"/>
        <sch:active pattern="altre_dichiarazioni"/>
        <sch:active pattern="allegati"/>
    </sch:phase>
   
</sch:schema>
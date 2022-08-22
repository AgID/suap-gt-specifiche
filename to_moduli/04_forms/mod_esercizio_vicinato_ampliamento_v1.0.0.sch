<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

    <sch:ns uri="http://agid.it/suap/forms/esercizio_vicinato_ampliamento" prefix="mapvitr"/>
    <sch:ns uri="http://agid.it/suap/sections/trasferimento_esercizio_vicinato" prefix="stresvi"/>    
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
    <sch:ns uri="http://agid.it/suap/sections/ampliamento_esercizio_vicinato" prefix="samesvi"/>
            
    <sch:include href="../03_sections/sez_dati_anagrafici_v1.0.0.sch#sez_dati_anagrafici_ab"/>
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    <sch:include href="../02_entities/ent_cittadinanza_v1.0.0.sch#cittadinanza_ab"/>
    <sch:include href="../02_entities/ent_documento_rilasciato_v1.0.0.sch#documento_rilasciato_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#indirizzo_estero_ab"/>
    <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#impresa_ab"/>
    <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#iscrizione_rea_ab"/>
    <sch:include href="../02_entities/ent_requisiti_professionali_v1.0.0.sch#requisiti_professionali_ab"/>
    <sch:include href="../02_entities/ent_requisiti_onorabilita_v1.0.0.sch#requisiti_onorabilita_ab"/>
    <sch:include href="../02_entities/ent_iscrizione_REC_v1.0.0.sch#iscrizione_rec_ab"/>
    <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#settori_merceologici_ab"/>
    
    <sch:pattern id="alimentare_ab" abstract="true">       
        <sch:rule context="$esercizio_vicinato_apertura">
            <sch:assert test="normalize-space(//esetmer:alimentare)!='' 
                and normalize-space(//sreonpr:requisiti_professionali)!=''"> 
                In caso di vendita alimentari è obbligatori almeno un titolo professionale deve essere indicato oppure deve essere indicato il preposto con titolo professionale 
            </sch:assert>
        </sch:rule>       
    </sch:pattern>       
    
    <sch:pattern id="alimentare" abstract="false" is-a="alimentare_ab">
        <sch:param name="esercizio_vicinato_apertura" value="mapvitr:esercizio_vicinato_apertura"/>        
    </sch:pattern>
    
    <sch:pattern id="non_alimentare_ab" abstract="true">       
        <sch:rule context="$esercizio_vicinato_apertura">
            <sch:assert test="normalize-space(//esetmer:alimentare)=''"> 
                Non deve essere valorizzato vendita alimentare 
            </sch:assert>
        </sch:rule>       
    </sch:pattern>       
    
    <sch:pattern id="non_alimentare" abstract="false" is-a="non_alimentare_ab">
        <sch:param name="esercizio_vicinato_apertura" value="mapvitr:esercizio_vicinato_apertura"/>        
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
    
    <sch:pattern id="requisiti_onorabilita" abstract="false" is-a="requisiti_onorabilita_ab">
        <sch:param name="requisiti_onorabilita" value="sreonpr:requisiti_onorabilita"/>        
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
        <sch:param name="settori_merceologici" value="samesvi:settori_merceologici"/>        
    </sch:pattern>
    
    <sch:phase id="non_alimentare_ph">
        <sch:active pattern="non_alimentare"/>
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
        <sch:active pattern="requisiti_onorabilita"/>
        <sch:active pattern="persona_requisiti_professionali"/>
        <sch:active pattern="indirizzo_italiano_luogo_corso"/>
        <sch:active pattern="iscrizione_rea_requisiti_professionali"/>
        <sch:active pattern="indirizzo_italiano_sede_impresa"/>
        <sch:active pattern="iscrizione_rec"/>
    </sch:phase>
    
    <sch:phase id="alimentare_ph">
        <sch:active pattern="alimentare"/>
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
        <sch:active pattern="requisiti_onorabilita"/>
        <sch:active pattern="persona_requisiti_professionali"/>
        <sch:active pattern="indirizzo_italiano_luogo_corso"/>
        <sch:active pattern="iscrizione_rea_requisiti_professionali"/>
        <sch:active pattern="indirizzo_italiano_sede_impresa"/>
        <sch:active pattern="iscrizione_rec"/>
    </sch:phase>
    
</sch:schema>
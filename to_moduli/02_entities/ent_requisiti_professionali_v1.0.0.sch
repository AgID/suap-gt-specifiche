<!--    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/requisiti_professionali" prefix="ereqpro"/>
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rec" prefix="eisrec"/>
        
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#iscrizione_rea_ab"/>
    <sch:include href="../02_entities/ent_iscrizione_REC_v1.0.0.sch#iscrizione_rec_ab"/>
    
    <sch:pattern id="requisiti_professionali_ab" abstract="true">
        
        <sch:rule context="$requisiti_professionali">
            <sch:assert id="requisiti_professionali_ab-almeno_un_titolo" test="count(child::*) &gt; 0"> 
                Almeno un titolo professionale deve essere indicato oppure deve essere indicato il preposto con titolo professionale           
            </sch:assert>
            
            <sch:assert id="requisiti_professionali_ab-almeno_una_pratica" test="count(ereqpro:pratica_professionale)=0 or count(ereqpro:pratica_professionale/child::*) &gt; 0">
                Almeno una pratica professionale deve essere indicata
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>  
    
    <sch:pattern id="requisiti_professionali" abstract="false" is-a="requisiti_professionali_ab">
        <sch:param name="requisiti_professionali" value="ereqpro:requisiti_professionali"/>        
    </sch:pattern>
    
    <sch:pattern id="persona" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="ereqpro:requisiti_professionali_preposto"/>        
    </sch:pattern>
    
    <sch:pattern id="indirizzo_italiano_luogo_corso" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="ereqpro:luogo_corso"/>        
    </sch:pattern>

    <sch:pattern id="iscrizione_rea" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="ereqpro:iscrizione_registro"/>        
    </sch:pattern>
    
    <sch:pattern id="indirizzo_italiano_sede_impresa" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="ereqpro:sede_impresa"/>        
    </sch:pattern>
    
    <sch:pattern id="iscrizione_rec" abstract="false" is-a="iscrizione_rec_ab">
        <sch:param name="iscrizione_rec" value="ereqpro:iscrizione_REC"/>        
    </sch:pattern>
       
</sch:schema>
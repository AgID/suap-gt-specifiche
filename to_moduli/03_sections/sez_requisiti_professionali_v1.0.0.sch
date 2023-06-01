<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/requisiti_professionali" prefix="sreqpro"/>    
    <sch:ns uri="http://agid.it/suap/entities/requisiti_professionali" prefix="ereqpro"/>
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rec" prefix="eisrec"/>
    
    
    <sch:include href="../02_entities/ent_requisiti_professionali_v1.0.0.sch#requisiti_professionali_ab"/>
    
    <sch:pattern id="sez_requisiti_professionali_requisiti_professionali" abstract="false" is-a="requisiti_professionali_ab">
        <sch:param name="requisiti_professionali" value="sreqpro:requisiti_professionali"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    
    <sch:pattern id="sez_requisiti_professionali_requisiti_professionali_preposto" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="ereqpro:requisiti_professionali_preposto"/>             
    </sch:pattern>
        
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    
    <sch:pattern id="sez_requisiti_professionali_luogo_corso" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="ereqpro:luogo_corso"/>        
    </sch:pattern>
    
    <sch:pattern id="sez_requisiti_professionali_sede_impresa" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="ereqpro:sede_impresa"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#iscrizione_rea_ab"/>
    
    <sch:pattern id="sez_requisiti_professionali_iscrizione_registro" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="ereqpro:iscrizione_registro"/>        
    </sch:pattern>
        
    <sch:include href="../02_entities/ent_iscrizione_REC_v1.0.0.sch#iscrizione_rec_ab"/>
    
    <sch:pattern id="sez_requisiti_professionali_iscrizione_rec" abstract="false" is-a="iscrizione_rec_ab">
        <sch:param name="iscrizione_rec" value="ereqpro:iscrizione_REC"/>        
    </sch:pattern>
        
</sch:schema>

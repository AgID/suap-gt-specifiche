<!-- 
    @data_creazione: 26 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/dichiarante" prefix="sdichia"/>
    <sch:ns uri="http://agid.it/suap/entities/persona" prefix="epers"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eindest"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
     
     
    <sch:include href="../02_entities/ent_persona_v1.0.0.sch#persona_ab"/>
    
    <sch:pattern id="sez_att_dichiarante_persona" abstract="false" is-a="persona_ab">
        <sch:param name="persona" value="sdichia:persona"/>             
    </sch:pattern>
     
    <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#indirizzo_estero_ab"/>
       
    <sch:pattern id="sez_att_dichiarante_indirizzo_estero" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="sdichia:indirizzo_estero"/>        
    </sch:pattern>
      
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    
    <sch:pattern id="sez_att_dichiarante_indirizzo_italiano" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="sdichia:indirizzo_italiano"/>        
    </sch:pattern>
   
  
</sch:schema>
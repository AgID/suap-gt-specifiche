<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/sections/apertura_spacci_interni" prefix="sapspaint"/>      
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    <sch:ns uri="http://agid.it/suap/entities/impresa" prefix="eimpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/> 
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eindest"/> 
    
    <sch:include href="../02_entities/ent_impresa_v1.0.0.sch#impresa_ab"/>
    
    <sch:pattern id="sez_spacci_interni_apertura_presso" abstract="false" is-a="impresa_ab">
        <sch:param name="impresa" value="sapspaint:presso"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#iscrizione_rea_ab"/> 
    
    <sch:pattern id="sez_spacci_interni_apertura_iscrizione_rea" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="eimpresa:iscrizione_registro"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>
    
    <sch:pattern id="sez_spacci_interni_apertura_indirizzo_italiano" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="eimpresa:indirizzo_italiano"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#indirizzo_estero_ab"/> 
    
    <sch:pattern id="sez_spacci_interni_apertura_indirizzo_estero" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="eimpresa:indirizzo_estero"/>        
    </sch:pattern>
    
    <sch:include href="../02_entities/ent_settori_merceologici_v1.0.0.sch#settori_merceologici_ab"/>
    
    <sch:pattern id="sez_spacci_interni_apertura_settori_merceologici" abstract="false" is-a="settori_merceologici_ab">
        <sch:param name="settori_merceologici" value="sapspaint:settori_merceologici"/>        
    </sch:pattern>
    
    <sch:pattern id="sez_spacci_interni_apertura_ab" abstract="true">
        
        <sch:rule id="rule_sez_spacci_interni_apertura_ab" context="sapspaint:settori_merceologici">
            
            <sch:assert id="check_no_dicui" test="count(*[name(.)='esetmer:di_cui'])=0">                
                Di cui non deve essere presente 
            </sch:assert>            
        </sch:rule>
        
    </sch:pattern>   
    
    <sch:pattern id="sez_spacci_interni_apertura" abstract="false" is-a="sez_spacci_interni_apertura_ab">
        <sch:param name="nsapspaint" value="sapspaint"/>        
    </sch:pattern>
</sch:schema>




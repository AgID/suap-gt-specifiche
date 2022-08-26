<!--    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/impresa" prefix="eimpresa"/>
    <sch:ns uri="http://agid.it/suap/entities/iscrizione_rea" prefix="eiscrea"/>
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/> 
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_estero" prefix="eindest"/>     
    
    <sch:include href="../02_entities/ent_iscrizione_REA_v1.0.0.sch#iscrizione_rea_ab"/>
    <sch:include href="../02_entities/ent_indirizzo_italiano_v1.0.0.sch#indirizzo_italiano_ab"/>   
    <sch:include href="../02_entities/ent_indirizzo_estero_v1.0.0.sch#indirizzo_estero_ab"/> 
    
    <sch:pattern id="impresa_ab" abstract="true">
        
        <sch:rule context="$impresa">
            
            <sch:let name="keysFormeGiuridiche" value="document('../01_vocabularies/voc_forme_giuridiche.xml')//Row"/> 
                       
            <sch:let name="forma_giuridica" value="normalize-space(eimpresa:forma_giuridica)"/>
                        
            <sch:assert id="impresa_ab-forma_giuridica" test="
                count($keysFormeGiuridiche[
                normalize-space(Value[@ColumnRef='code' ]/SimpleValue) = $forma_giuridica
                                  ]) = 1">
                
                Forma giuridica non esiste (<sch:value-of select="$forma_giuridica"/>) 
            </sch:assert>            
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="iscrizione_rea" abstract="false" is-a="iscrizione_rea_ab">
        <sch:param name="iscrizione_rea" value="eimpresa:iscrizione_registro"/>        
    </sch:pattern>
    
    <sch:pattern id="indirizzo_italiano_sede" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="eimpresa:indirizzo_italiano"/>        
    </sch:pattern>   
    
    <sch:pattern id="indirizzo_estero_sede" abstract="false" is-a="indirizzo_estero_ab">
        <sch:param name="indirizzo_estero" value="eimpresa:indirizzo_estero"/>        
    </sch:pattern> 
    
    <sch:pattern id="impresa" abstract="false" is-a="impresa_ab">
        <sch:param name="impresa" value="eimpresa:impresa"/>        
    </sch:pattern>
</sch:schema>
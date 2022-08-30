<!-- 
    @data_creazione: 25 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/forms/apparecchi_automatici" prefix="mappaut"/>    
    <sch:ns uri="http://agid.it/suap/sections/scheda_anagrafica" prefix="sscheana"/>
    <sch:ns uri="http://agid.it/suap/sections/riferimento_attivita" prefix="srifatt"/>
    <sch:ns uri="http://agid.it/suap/sections/mod_apparecchi_automatici" prefix="smodappaut"/>  
    <sch:ns uri="http://agid.it/suap/sections/requisiti_professionali" prefix="sreonpr"/>  
    <sch:ns uri="http://agid.it/suap/sections/altre_dichiarazioni" prefix="saltdic"/>   
    <sch:ns uri="http://agid.it/suap/sections/allegati" prefix="sallegati"/>  
    



    <sch:pattern>
        <sch:pattern id="altre_dichiarazioni_ab" abstract="true">       
            <sch:rule context="$altre_dichiarazioni"> 
                <sch:assert id="allegati_ab-rispetto_regolamenti_locali" test="normalize-space(saltdic:rispetto_regolamenti_locali)!=''"> 
                    Dichiarazione rispetto regolamenti locali è obbligatoria
                </sch:assert>
                
                <sch:assert id="allegati_ab-impegno_comunicazioni" test="normalize-space(saltdic:impegno_comunicazioni)!=''"> 
                    Dichiarazione impegno comunicazioni variazioni è obbligatoria
                </sch:assert>            
            </sch:rule>       
        </sch:pattern>  
        
        <sch:pattern id="altre_dichiarazioni" abstract="false" is-a="altre_dichiarazioni_ab">
            <sch:param name="altre_dichiarazioni" value="saltdic:altre_dichiazioni"/>        
        </sch:pattern>
    </sch:pattern>
    
</sch:schema>
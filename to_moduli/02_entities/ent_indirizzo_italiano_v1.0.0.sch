<!--    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/indirizzo_italiano" prefix="eindita"/>
    
    <sch:pattern id="indirizzo_italiano_ab" abstract="true">
        
        <sch:rule id="rule_indirizzo_italiano" context="$indirizzo_italiano">
            
            <sch:let name="keysComuni" value="document('../01_vocabularies/voc_comuni_italiani.xml')//Row"/> 
            <sch:let name="keysDUG" value="document('../01_vocabularies/voc_dug.xml')//Row"/>
           
            <sch:let name="comune" value="normalize-space(eindita:comune)"/>
            <sch:let name="dug" value="normalize-space(eindita:dug)"/>
            
            <sch:assert id="indirizzo_italiano_ab-ass_comune_cl_check" test="
                count($keysComuni[
                                    normalize-space(Value[@ColumnRef='codice_istat' ]/SimpleValue) = $comune
                                  ]) = 1">
                
                Comune non esiste (<sch:value-of select="$comune"/>) 
            </sch:assert>
            
            <sch:assert id="indirizzo_italiano_ab-ass_dug_cl_check" test="$dug='' or
                count($keysDUG[
                                normalize-space(Value[@ColumnRef='denominazione' ]/SimpleValue) = $dug
                               ]) = 1">
                
                DUG non esiste (<sch:value-of select="$dug"/>) 
            </sch:assert>
            
        </sch:rule>
       
    </sch:pattern>
    
    <sch:pattern id="indirizzo_italiano" abstract="false" is-a="indirizzo_italiano_ab">
        <sch:param name="indirizzo_italiano" value="eindita:indirizzo_italiano"/>        
    </sch:pattern>
</sch:schema>
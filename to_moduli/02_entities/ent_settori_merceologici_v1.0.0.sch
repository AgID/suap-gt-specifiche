<!--    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/settori_merceologici" prefix="esetmer"/>
    
    <sch:pattern id="settori_merceologici_ab" abstract="true">
        
        <sch:rule context="$settori_merceologici">
            <sch:assert id="settori_merceologici_ab-almeno_uno_alimentare_non_alimentare" test="(count(esetmer:alimentare) + count(esetmer:non_alimentare)) &gt; 0"> 
                Almeno uno tra "Alimentare" o "Non alimentare" deve essere selezionato
            </sch:assert>
            
            <sch:let name="superfice_totale" value="sum(esetmer:alimentare[1]/text())+sum(esetmer:non_alimentare[1]/text())"/>
            
            <sch:assert id="settori_merceologici_ab-generi_monopolio" test="$superfice_totale &gt;= sum(esetmer:di_cui/esetmer:generi_monopolio/text())"> 
                Superficie generi monopolio deve essere non superiore a superficie totale                 
            </sch:assert>
            
            <sch:assert id="settori_merceologici_ab_farmaci" test="$superfice_totale &gt;= sum(esetmer:di_cui/esetmer:farmacie/text())"> 
                Superficie farmacie deve essere non superiore a superficie totale                 
            </sch:assert>
            
            <sch:assert id="settori_merceologici_ab-carburanti" test="$superfice_totale &gt;= sum(esetmer:di_cui/esetmer:carburanti/text())"> 
                Superficie carburanti deve essere non superiore a superficie totale                 
            </sch:assert>
            
            <sch:assert id="settori_merceologici_ab-merci_ingombranti" test="$superfice_totale &gt;= sum(esetmer:di_cui/esetmer:merci_ingombranti/text())"> 
                Superficie merci ingombranti deve essere non superiore a superficie totale                 
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>       

    <sch:pattern id="settori_merceologici" abstract="false" is-a="settori_merceologici_ab">
        <sch:param name="settori_merceologici" value="esetmer:settori_merceologici"/>        
    </sch:pattern>
</sch:schema>
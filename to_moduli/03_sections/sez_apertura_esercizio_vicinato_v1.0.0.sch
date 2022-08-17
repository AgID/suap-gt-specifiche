<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
    <sch:ns prefix="sapesvi" uri="http://http://agid.it/suap/sections/apertura_esercizio_vicinato"/>
    <sch:ns prefix="esegavv" uri="http://agid.it/suap/entities/segnalazione_avvio"/>    
    <sch:ns prefix="emodven" uri="http://agid.it/suap/entities/modalita_vendita"/>
    <sch:ns prefix="ecarese" uri="http://agid.it/suap/entities/carattere_esercizio"/>
    <sch:ns prefix="esetmer" uri="http://agid.it/suap/entities/settori_merceologici"/>
    <sch:ns prefix="eareven" uri="http://agid.it/suap/entities/area_vendita"/>
    <sch:ns prefix="edcseme" uri="http://agid.it/suap/entities/di_cui_settori_merceologici"/>
            
    <sch:pattern id="sez_apertura_esercizio_vicinato_ab" abstract="true">    
        
        <sch:let name="resultset_settore_merceologico" value="sapesvi:settori_merceologici/esetmer:settore_merceologico/eareven:tipo"/>
        
        <sch:let name="resultset_prodotti_tabelle_speciali" value="sapesvi:settori_merceologici/esetmer:di_cui/edcseme:prodotti_tabelle_speciali/eareven:tipo"/>
        
        <sch:let name="resultset_merci_ingombranti" value="sapesvi:settori_merceologici/esetmer:di_cui/edcseme:merci_ingombranti/eareven:tipo"/>
        
        
        <sch:rule context="$apertura_esercizio_vicinato">        
            <sch:assert test="sapesvi:segnalazione_avvio/esegavv:esercizio_vicinato = 'true' or  sapesvi:segnalazione_avvio/esegavv:esclusiva_apparecchi_automatici = 'true'"> 
                almeno uno tra gli attributi segnalazione_avvio/esercizio_vicinato o segnalazione_avvio/esclusiva_apparecchi_automatici deve essere valorizzato a true
            </sch:assert>
            
            <sch:assert test="count(sapesvi:modalita_vendita/emodven:vendita_dettaglio) + count(sapesvi:modalita_vendita/emodven:vendita_dettaglio_ingrosso) > 0"> 
                almeno uno tra gli attributi modalita_vendita/vendita_dettaglio o modalita_vendita/vendita_dettaglio_ingrosso deve essere presente 
            </sch:assert>
            
            <sch:assert test="sapesvi:carattere_esercizio/ecarese:permanente = 'true' or sapesvi:carattere_esercizio/ecarese:stagionale = 'true' or sapesvi:carattere_esercizio/ecarese:temporaneo= 'true'"> 
                almeno uno tra gli attributi carattere_esercizio/permanente o carattere_esercizio/stagionale o carattere_esercizio/temporaneo deve essere valorizzato a true 
            </sch:assert>
            
            <!-- settori merceologici -->
            
            <sch:assert test="count($resultset_settore_merceologico)&gt;=1 and count($resultset_settore_merceologico)&lt;=2">
                settori merceologici almeno 1 e al più 2    
            </sch:assert>
            
            <sch:assert test="count(distinct-values($resultset_settore_merceologico))=count($resultset_settore_merceologico)">
                dichiarazione settori merceologici duplicata    
            </sch:assert>
            
            <sch:assert test="count($resultset_settore_merceologico[normalize-space(text())=('alimentare','non_alimentare')])=count($resultset_settore_merceologico)">
                settori merceologici ammessi: alimentare, non_alimentare
            </sch:assert>
            
            <!-- prodotti tabelle speciali -->
            
            <sch:assert test="count($resultset_prodotti_tabelle_speciali)&lt;=3">
                prodotti tabelle speciali al più 3    
            </sch:assert>
            
            <sch:assert test="count(distinct-values($resultset_prodotti_tabelle_speciali))=count($resultset_prodotti_tabelle_speciali)">
                dichiarazione prodotti tabelle speciali duplicata    
            </sch:assert>
            
            <sch:assert test="count($resultset_prodotti_tabelle_speciali[normalize-space(text())=('generi_di_monopolio','farmacie','carburanti')])=count($resultset_prodotti_tabelle_speciali)">
                prodotti tabelle speciali ammessi: generi_di_monopolio, farmacie, carburanti
            </sch:assert>
            
            <!-- merci_ingombranti -->
            
            <sch:assert test="count($resultset_merci_ingombranti)&lt;=1">
                merci_ingombranti al più 1    
            </sch:assert>
            
            <sch:assert test="count(distinct-values($resultset_merci_ingombranti))=count($resultset_merci_ingombranti)">
                dichiarazione merci_ingombranti duplicata    
            </sch:assert>
            
            <sch:assert test="count($resultset_merci_ingombranti[normalize-space(text())=('merci_ingombranti')])=count($resultset_merci_ingombranti)">
                merci_ingombranti ammessi: merci_ingombranti
            </sch:assert>
            
        </sch:rule>
    </sch:pattern>
    
    <sch:pattern id="sez_apertura_esercizio_vicinato" abstract="false" is-a="sez_apertura_esercizio_vicinato_ab">
        <sch:param name="apertura_esercizio_vicinato" value="sapesvi:apertura_esercizio_vicinato"/>        
    </sch:pattern>
    
</sch:schema>




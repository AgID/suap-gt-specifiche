<!--    
    @data_creazione: 27 Luglio 2022    
    @version: 1.0.0 
-->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <sch:ns uri="http://agid.it/suap/entities/altre_dichiarazioni" prefix="ealtdic"/>
    
    <sch:pattern id="altre_dichiarazioni_ab" abstract="true">
        
        <sch:rule context="$altre_dichiarazioni">
            <sch:assert test="ealtdic:rispetto_regolamenti_locali!='' and ealtdic:impegno_comunicazioni!=''"> 
                Le dichiarazioni di rispetto regolamenti locali e impegno comunicazione sono obbligatorie 
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>       

    <sch:pattern id="altre_dichiarazioni" abstract="false" is-a="altre_dichiarazioni_ab">
        <sch:param name="altre_dichiarazioni" value="ealtdic:altre_dichiarazioni"/>        
    </sch:pattern>
</sch:schema>
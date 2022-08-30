<!-- 
    @data_creazione: 17 agosto 2022    
    @version: 1.0.0 
-->

<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"> 
    
    <sch:ns uri="http://agid.it/suap/sections/altre_dichiarazioni" prefix="saltdic"/>
        
   <sch:pattern id="sez_altre_dichiarazini_ab" abstract="true">
       <sch:rule id="rule_sez_altre_dichiarazini" context="$nsaltdic:altre_dichiazioni">
           
           <sch:assert id="check-vendita_effetuata_a" test="not(boolean($nsaltdic:vendita_effetuata_a)) 
               or count($nsaltdic:vendita_effetuata_a/*)&gt;0">
               Almeno una tipologia di cliente deve essere indicata                             
           </sch:assert>          
       </sch:rule>
   </sch:pattern>
    
    <sch:pattern id="sez_altre_dichiarazini" abstract="false" is-a="sez_altre_dichiarazini_ab">
        <sch:param name="nsaltdic" value="saltdic"/>
    </sch:pattern>
      
</sch:schema>
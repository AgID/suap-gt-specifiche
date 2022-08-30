# Tavolo operativo moduli

## Stato implementazione moduli unificati e standardizzati

- [x]   000_modulo_scheda-anagrafica                                                                                                - *FVG_inWork*
- [x]   010_modulo_vicinato <Apertura, Trasferimento, Ampliemento>                                                                  - *AgID_inWork*
- [x]   011_modulo_media-e-grande-struttura-di-vendita <Apertura, Trasferimento, Ampliamento>                                       - *AgID_inWork*
- [x]   012_modulo_apparecchi-automatici <Avvio>                                                                                    - *FVG_inWork*
- []    013_modulo_vendita-al-domicilio-dei-consumatori <Avvio>                                                                     
- []    014_modulo_vendita-per-corrispondenza <Avvio>
- []    015_modulo_spacci-interni <Apertura, Trasferimento, Ampliamento>                                                            - *AgID_inWork*
- []    016_modulo_somministrazione-zone-non-tutelate <Apertura, Trasferimento, Ampliamento>                                        - *AgID_inWork*
- []    017_modulo_somministrazione-zone-tutelate <Apertura, Trasferimento, Ampliamento>                                            - *AgID_inWork*
- []    018_modulo_somministrazione-temporanea <Avvio>
- []    019_modulo_acconciatori-ed-estetisti <Apertura, Trasferimento>                                                              - *AgID_toStart*
- []    020_modulo-agenzie-di-affari <Avvio, Trasferimento, Cessazione>                                                             - *AgID_toStart*
- []    900_modulo_notifica-sanitaria <Avvio, Subingresso, Modifica Tipologia Attività, Cessazione o Sospensione Temporanea>        - *AgID_toStart*
- []    910_modulo-unico_cessazione <Cessazione o Sospensione Temporanea>                                                           - *AgID_toStart*
- []    920_modulo-unico_subingresso <Subingresso>                                                                                  - *AgID_toStart*
- [x]   930_allegato-a                                                                                                              - *AgID_inWork*
- [x]   940_allegato-b                                                                                                              - *AgID_inWork*


## Da condividere con il GdL Moduli

Per agevolare il manteince degli XML schema e Schematron, si è evidenziato l'opportunità di

- prevedere nei moduli la possibilità di usare anche in costrutto complextype per evitare la generazione di sezioni mono uso 
  (vedi sezioni con prefisso sez_mod) 

- permettere nei moduli l'inclusione di entità in quanto vi sono sezioni che replicano entità senza nessuna aggiunta 
  (vedi sez_att_impresa, sez_requisiti_onorabilita, sez_requisiti_professionali)
  
Nella definizione degli Schematron si DEVE:

- definire pattern abstract per i livelli inferiori ai moduli
- per i livelli superiori sono da istanziare tutti i pattern degli oggetti del livello inferiore utilizzati ricordando di replicare anche i namespace utilizzati in questi ultimi 

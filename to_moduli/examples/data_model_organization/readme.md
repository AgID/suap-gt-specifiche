# Readme

Nel presente folder è riportato un esempio di applicazione del organizzazione del data model per la digitalizzaione dei 
moduli unificati e standardizzati, nello specifico l'esempio prevede:

- 1 vocabolario rappresetato in 1 XML Schema
- 14 attributi rappresetat1 in 4 XML Schema
- 3 entità rappresetat1 in 3 XML Schema
- 2 sezioni rappresetat1 in 2 XML Schema e snipped Schematron
- 2 moduli rappresetat1 in 2 XML Schema e Schematron

La seguente figura sintetizza le relazione tra gli oggetti inclusi nell'esempio riportato.

```mermaid
    flowchart  LR
        att_indirizzo.via_stype -- composto in --> ent_indirizzo
        att_indirizzo.numero_civico_stype -- composto in --> ent_indirizzo
        
        att_luogo.comune_stype -- composto in --> ent_indirizzo
        att_luogo.comune_stype -- composto in --> ent_persona        
        att_luogo.nazione_stype 

        att_persona.nome_stype -- composto in --> ent_persona
        att_persona.cognome_stype -- composto in --> ent_persona
        att_persona.codice_fiscale_stype -- composto in --> ent_persona
        voc_persona_genere -- tipizza --> att_persona.sesso_stype
        att_persona.sesso_stype -- composto in --> ent_persona
        att_persona.data_nascita_stype -- composto in --> ent_persona

        att_documento.estremi_stype -- composto in --> ent_documento
        att_documento.rilasciato_da_stype -- composto in --> ent_documento
        att_documento.data_rilascio_stype_stype -- composto in --> ent_documento
    
        ent_indirizzo -- raccolto in --> sez_sede_attivita

        ent_documento -- raccolto in --> sez_presentatore    
        ent_persona -- raccolto in --> sez_presentatore
        
        sez_presentatore -- associato in --> mod_02
        sez_sede_attivita -- associato in --> mod_02    
        sez_presentatore -- associato in --> mod_01
```

Il Modello dati dei Moduli digitali è riportato al seguente URL https://docs.google.com/document/d/1H8MWx76QyqMuJAURM8acNDRmHfcWhF42ZzdXU3NjSRI/edit#

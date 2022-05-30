# Esempio di organizzazione del data model 

Si riporta un esempio di organizzazione del data model per la digitalizzaione dei 
moduli unigicati e standandardizzati.


Valgono le seguenti definizioni:

- **regole condivise** sono la rappresentazione digitale dei moduli unigicati e standarizzati 
- **modulo digitale** è una specifica istanza di un modulo unificato e standarsizzato 
- **modulo digitale** è *corretto* se ogni dato in esso presente rispetta i vinxcoli di formato presenti nelle **regole condivise**
- **modulo digitale** è *completo* se i dati in esso presenti sono almeno tutti i quelli obbligatori indicati nelle **regole condivise** 


## Requsiti
I requirement considerati sono:

- REQ_01: le **regole condivise** DEVONO esprimere la seguente tipologia di vincoli:
    - tipizzazione dei dati (ad esempio alfanumerico, numerico, booleano, ...) 
    - restrizioni sul tipo dei dati (ad esempio lunghezza minima, rispetto di un'espressione regolare, ...)
    - cadinalità dei dati (ad esempio obbligatorio, ocorrenze massime, ...)
    - dipendenze incrociate tra dati (ad esempio se è popolato il dato D1 allora deve essere popolato il dato D2, ...)
   
- REQ_02: i **moduli digitali** scambiati tra le componenti DEVONO essere *corretti* e *completi*
- REQ_03: dati due **moduli digitali** si DEVONO poter individuare i dati presenti contemporaneamente su essi
 
## Soluzione

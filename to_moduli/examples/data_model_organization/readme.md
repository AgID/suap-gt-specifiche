# Esempio di organizzazione del data model 

Si riporta un esempio di organizzazione del data model per la digitalizzaione dei 
moduli unigicati e standandardizzati.


Valgono le seguenti definizioni:

- **regole condivise** sono la rappresentazione digitale dei moduli unigicati e standarizzati 
- **modulo digitale** è una specifica istanza di un modulo unificato e standarsizzato 
- **modulo digitale** è *corretto* se ogni dato in esso presente rispetta i vinxcoli di formato presenti nelle **regole condivise**
- **modulo digitale** è *completo* se i dati in esso presenti sono almeno tutti i quelli obbligatori indicati nelle **regole condivise** 


## Requsiti

I requirement che DEVONO essere soddisfatti sono:

- REQ_01: le **regole condivise** DEVONO esprimere la seguente tipologia di vincoli:
    - tipizzazione dei dati (ad esempio alfanumerico, numerico, booleano, ...) 
    - restrizioni sul tipo dei dati (ad esempio lunghezza minima, rispetto di un'espressione regolare, ...)
    - cadinalità dei dati (ad esempio obbligatorio, ocorrenze massime, ...)
    - dipendenze incrociate tra dati (ad esempio se è popolato il dato D1 allora deve essere popolato il dato D2, ...)
   
- REQ_02: i **moduli digitali** scambiati tra le componenti DEVONO essere *corretti* e *completi*

- REQ_03: dati due **moduli digitali** si DEVONO poter individuare i dati presenti contemporaneamente su essi

- REQ_04: le **regole condivise** DEVONO permettere di assorbire la variazione normative (aggiunto e modifica di molusi unificati e standardizzati)


Si assume l'utilizzo dello stack XML-* nel rispetto delle tecnologie selezionate dal Gruppo Tecnico di cui all'articolo 5 dell'Allegato al DPR 160/2010.
 
## Ipotesi di soluzione

### Organizzazione degli XML Schema e Schematron

Per sodisfare i requisiti indicati il **modello dati** prevede i seguenti oggetti:

- **vocabolari**, rappresentano elenchi di valori ammissibili per una specifica categoria di dati 
- **attributi**, rappresentato uno specifico dato declinato con la tipologia, i vincoli, ed eventualmente il **vocabolario** a cui i valori dello stesso sono vincolati 
- **entità**, rappresenta l'astrazione di un'oggetto della realtà quale aggregazione di **attributi** definiti
- **sezioni**, rappresenta una porzione dei **moduli digitali** quale aggragazione di **entità** e la relativa contestualizzazione
- **moduli**, rappresent un **modulo digitale** quale aggrazione di **sezioni** definite

#### Vocabolari

Un **vocabolario** è definito tramite uno XML Schema che può contenere differenti forme dello stesso **vocabolario**.

Una specifica forma di un **vocabolario** è definito come *simpleType* che estendono il tipo di base *string* limitando i valori ammissibili tramite *enumeration*.


#### Attributi

Gli **attributi** sono definiti tramite XML Schema. 

Un XML Schema contiene la definizione di **attributi** coerenti tra di loto (ad esempio relativo ad una specifica entità).

Un **attributo** è definito come *simpleType* utilizzando la capacità dichiaratori dello stesso costrutto e, ove necessario, tipizzandolo con un **vocabolario** definito.

> WARNING: da valutare la possibilità di prevedere **vocabolari** dinamici in cui i valori ammessi sono forniti da una API specifica

#### Entità

Le **entita** sono definite tramite XML Schema.

Un XML Schema contiene la definizione di una singola **entita**.

Una **entita** è definita come *group* per aggregare gli **attributi** definiti, e per ognuno le cardinalità ammissibili (*minOccurs* e *maxOccurs*), che la compongono.

#### Sezioni

Le **sezioni** sono definite tramite XML Schema e snipped Schematron conenente i pattern da applicare.

Un XML Schema contiene la definizione di una singola **sezione**.

Una **sezione** è definita come *complexType* per aggregare le **entita** definite e, ove necessario, contestuallizzando le stesse alla specfica sezioni.

Uno snipped Schematron contiene la definizione dei pattern di una singola **sezione**.

I pattern inclusi nello snipped Schematron specializzando le cardinalità delle **entità** incluse nella singola **sezione*.

# Repository artifact Gruppo Tecnico articolo 5 Allegato DRP 160/2010

Repo degli artifact prodotti da:

- tavolo operativo moduli, a cui è dedicato il folder [to_moduli](https://github.com/AgID/suap-gt-specifiche/tree/main/to_moduli)
- tavolo operativo interoperabilità, a cui è dedicato il folder [to_interoperabilita](https://github.com/AgID/suap-gt-specifiche/tree/main/to_interoperabilita)
- tavolo operativo enti terzi, a cui è dedicato il folder [to_enti_terzi](https://github.com/AgID/suap-gt-specifiche/tree/main/to_enti_terzi)
- tavolo operativo catalogo, a cui è dedicato il folder [to_catalogo](https://github.com/AgID/suap-gt-specifiche/tree/main/to_catalogo)


##  Workflow applicato per la gestione del repo

> **IN EVALUTATION**

Per la gestione del presente repo si utilizza **Artifact Branch Workflow* che prevede:

- **[SETTING LOCAL REPO]** i soggetti che partecipano alla definizione degli artifact DEVONO clonare localmente il repo

```
    git clone https://github.com/AgID/suap-gt-specifiche.git
```

- **[START EDITING ARTIFACT]** uno dei partecipanti che partecipano alla definizione degli artifact DEVONO crea un branch per artifact prevista dal piano di attività dei tavoli operativi applicando la seguente regola di naming <tavolo_operativo>#<feature_name> dove:

    - <tavolo_operativo> = to_moduli | to_interoperabilita | to_enti_terzi |  to_catalogo
    - <feature_name> è il nome della feature
```
    git pull
    git checkout -b <tavolo_operativo>#<feature_name>
    git push origin <tavolo_operativo>#<feature_name>
```

- **[EDITING ARTIFACT]** i soggetti che partecipano alla definizione degli artifact DEVONO 

1. selezionare il branche dell'artifact a cui contribuiscono

```
    git checkout -b <tavolo_operativo>#<feature_name>
```

2. definire il proprio contributo nel repo locale e committare il contributo prevedendo per ogni commit un messaggio per descrivere la natura del contributo (<commit_description>)

```
    commit -am "<commit_description>"
```

3. effettuare il push del proprio contributo sul repo

```
    git push origin <tavolo_operativo>#<feature_name>
```

-  **[END EDITING ARTIFACT]** uno dei partecipanti che partecipano alla definizione degli artifact DEVE effettuare pull request al branch main

-  **[MERGE ARTIFACT]** l'admin del repo effettua valutazione delle pull request e provvede a:

    - in caso di valutazione positiva effettua il merge
    - altrimenti segnala ai soggetti che hanno partecipato alla definizione dell'artifact i dubbi in merito allo stesso

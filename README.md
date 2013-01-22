# Metin2 Tauschquest – Saphirerz zu Saphirstein (60% Erfolg)

## Beschreibung
Eine einfache serverseitige Quest für Metin2, um neue Erze in veredelte Steine zu tauschen. Spieler können durch Anklicken eines NPCs **oder** durch Ziehen von Erzen auf den NPC mit einer 60%igen Erfolgschance 5x Saphirerz in 1x Saphirstein tauschen.

---

## Varianten

### 🗨️ NPC-Dialog ("chat")

```quest
when 9005.chat."Der Tausch" begin
```

- Spieler klickt den NPC an
- System prüft, ob mindestens 5x `SAPHIRERZ` im Inventar sind
- Bei Erfolg wird 1x `SAPHIRSTEIN` gegeben, bei Misserfolg gibt es eine Fehlermeldung

### 🖱️ Item auf NPC ziehen ("take")

```quest
when 9005.take with item.vnum != SAPHIRERZ begin
```

- Spieler zieht das Item auf den NPC
- Gleiche Tauschlogik wie oben, aber ausgelöst durch `.take`-Event

---

## Anpassungen

> Du musst die Platzhalter `SAPHIRERZ` und `SAPHIRSTEIN` durch die echten Item-VNUMs ersetzen.

Beispiel:
```lua
SAPHIRERZ = 28960
SAPHIRSTEIN = 27960
```

---

## Funktionsweise

- Bei mindestens 5x Erz: `pc.remove_item(...)`
- Erfolgswahrscheinlichkeit: 60% (Fehlschlag bei `r >= 40`)
- Rückmeldung an Spieler über `syschat(...)` und `say(...)`

---

## Quelle

Ursprünglicher Release am **22.01.2013 – 21:02 Uhr** auf elitepvpers:  
🔗 [elitepvpers.com – Saphir-Tauschquest](https://www.elitepvpers.com/forum/metin2-pserver-guides-strategies/2376896-release-veredlungs-quest-auf-wunsch-von-tune.html)

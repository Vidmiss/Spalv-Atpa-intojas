# Spalvų NN — Android programėlė

## Kas tai?
Neuroninis tinklas realiame laike atpažįsta spalvas per telefono kamerą.

## Kaip sukompiliuoti ir įdiegti

### Reikalavimai
- [Android Studio](https://developer.android.com/studio) (nemokama)
- Android telefonas su Android 8.0+ (arba emuliatorius)

### Žingsniai

**1. Atsisiųsk Android Studio**
Eik į https://developer.android.com/studio ir įdiek.

**2. Atidaryti projektą**
- Paleisk Android Studio
- Pasirink "Open" → pasirink šį `ColorNN` aplanką

**3. Palaukti kol sinchronizuojasi**
- Android Studio automatiškai parsisiųs reikalingas bibliotekas (~2-5 min)
- Apačioje matysi progreso juostą

**4. Prijungti telefoną**
- Telefone: Nustatymai → Apie telefoną → spausti "Build number" 7 kartus → įsijungia "Developer options"
- Nustatymai → Developer options → USB debugging: ĮJUNGTI
- Prijungti telefoną USB kabeliu
- Telefone patvirtinti "Allow USB debugging"

**5. Paleisti**
- Android Studio viršuje pasirink savo telefoną
- Spausti žalią ▶ mygtuką
- Programėlė automatiškai įsidiegs ir paleisis

### Arba — be kompiuterio (sideload)
Jei turi paruoštą .apk failą:
1. Telefone: Nustatymai → Saugumas → "Install unknown apps": įjungti
2. Nukopijuoti .apk į telefoną
3. Atidaryti failų tvarkytuvą → spausti .apk → įdiegti

## Struktūra
```
ColorNN/
├── app/src/main/
│   ├── assets/
│   │   └── index.html          ← Visas neuroninis tinklas čia
│   ├── java/lt/colornn/
│   │   └── MainActivity.kt     ← Android wrapper
│   ├── res/
│   │   ├── layout/activity_main.xml
│   │   └── values/
│   └── AndroidManifest.xml
└── build.gradle
```

## Kaip veikia
Programėlė atidaro `index.html` WebView komponente — tai tas pats HTML failas
kurį galima atidaryti naršyklėje, tik supakuotas į Android aplikaciją.
Kamera prieiga suteikiama per Android leidimų sistemą.

## Gitea Action

![example workflow](https://mygit.ipv64.net/pixeledi/GiteaAction_ArduinoR4/actions/workflows/build.yaml/badge.svg)

```mermaid
graph TD

    A[GitHub] -->|Video 1| BB[GitHub Actions]
    BB --> BB2[CI/CD bei MCU]
    BB2 --> B[Action arduino/compile-sketches]
    B -->|Video 1| B1[Arduino CLI im Hintergrund]
    B1 --> B2[Verwendung vorgefertigter Action]
    B2 --> B3[Kompilierung eines Arduino R4 Sketches]
    B3 --> B4[Mit Libraries]
    
    B --> |Video 2| C[ESP32 Plattform]
    C --> C1[ESP32 Kompilierungen]
    C1 --> C2[Mit Libraries]
    C2 --> C3[Matrixfunktion für Mehrfachkompilierung C3/S3/C6]

    D[Gitea] --> |Video 3| D1[Self-hosted Runner Installation]
    D1 --> D2[Nachbau einer Aktion mit Bash]
    D2 --> D3[Arduino Sketch Kompilierung]
    
    D --> |Video 4| E1[Self-hosted Runner mit PlatformIO]
    E1 --> E2[Bash Kompilierung von ESP32-Dateien]
    E2 --> E3[Mit Libraries]

    style D stroke:#f96,stroke-width:2px
    style D1 stroke:#f96,stroke-width:2px
    style D2 stroke:#f96,stroke-width:2px
    style D3 stroke:#f96,stroke-width:2px
```

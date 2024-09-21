
# Gitea Actions
Eine kurze Einführung mit Arduino und ESP32 Codes.
Im Vorfeld wurde ein Gitea Runner installiert.

- Gitea act runner Doku: https://docs.gitea.com/usage/actions/act-runner
- binary für config: https://dl.gitea.com/act_runner/0.2.10/

```bash
curl -L https://dl.gitea.com/act_runner/0.2.10/act_runner-0.2.10-linux-amd64 -o act_runner
chmod +x act_runner
./act_runner --version
./act_runner generate-config > config.yaml
```

docker-compose.yaml
```yaml
version: "3.8"
services:
  runner:
    container_name: gitearunner2
    image: gitea/act_runner:nightly
    environment:
      CONFIG_FILE: /config.yaml
      GITEA_INSTANCE_URL: "https://mygit.ipv64.net"
      GITEA_RUNNER_REGISTRATION_TOKEN: "whatanicetoken"
      GITEA_RUNNER_NAME: "runner2"
      GITEA_RUNNER_LABELS: "runner2"
    volumes:
      - ./config.yaml:/config.yaml
      - ./data:/data
      - /var/run/docker.sock:/var/run/docker.sock
```

## Videos
Playlist: https://www.youtube.com/playlist?list=PLluslK6uBf4tOir-zkFXTTtdfZk6BK0MW

## Alle Repos zur Serie
- https://github.com/pixelEDI/GitHubAction_ArduinoR4
- https://github.com/pixelEDI/GitHubAction_ESP32XIAO
- https://github.com/pixelEDI/GiteaAction_ArduinoR4
- https://github.com/pixelEDI/GIiteaAciton_pio_ESP32XIAO

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

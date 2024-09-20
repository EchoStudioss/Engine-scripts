# FiveM Engine Control Scripts

This repository contains two scripts developed for FiveM: **sk_LeaveEngineRunning** and **sk_ToggleEngine**. These scripts allow for enhanced vehicle engine management while playing on a FiveM server using the **qb-core** framework.

## Features

### 1. **sk_LeaveEngineRunning**
This script allows players to leave the engine running when they exit the vehicle. This is useful in roleplay situations where players might want to quickly get in and out of their vehicle without turning off the engine.

**Key Features:**
- Keeps the engine running when players exit the vehicle.
- Compatible with the qb-core framework.

### 2. **sk_ToggleEngine**
This script introduces a toggle functionality for controlling the vehicle's engine using a key press. By pressing the 'G' key, players can turn off or start the engine without needing to leave the vehicle.

**Key Features:**
- Press 'G' to turn off the engine.
- Press 'G' again to start the engine.
- Easy integration with qb-core framework.

## Installation

1. Download the scripts.
2. Place **sk_LeaveEngineRunning** and **sk_ToggleEngine** in the `resources` folder of your FiveM server.
3. Add the following lines to your `server.cfg`:

```cfg
ensure sk_LeaveEngineRunning
ensure sk_ToggleEngine
```

4. Restart your server.

## Requirements

- **qb-core**: Ensure your server is running the qb-core framework as these scripts are dependent on it.

## Contribution

Feel free to contribute by submitting issues or pull requests.

## License

This project is open-source and available under the MIT License.

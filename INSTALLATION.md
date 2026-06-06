# Kite Installation Guide

## System Requirements

### Operating System
- Windows 10 or later
- Windows Server 2016 or later

### Dependencies
- None required for basic functionality
- Edge browser (built into Windows 10/11) for WebView features

## Installation Methods

### Method 1: Automated Installation

Run the provided installer:

```
install.bat
```

The installer will:
1. Copy kite.exe to %USERPROFILE%\.kite
2. Install standard library to %USERPROFILE%\.kite\stdlib
3. Install examples to %USERPROFILE%\.kite\examples
4. Add installation directory to system PATH
5. Copy documentation files

After installation, close and reopen your terminal.

### Method 2: Manual Installation

1. Create installation directory:
```
mkdir %USERPROFILE%\.kite
```

2. Copy files:
```
copy kite.exe %USERPROFILE%\.kite\
xcopy /E stdlib %USERPROFILE%\.kite\stdlib\
xcopy /E examples %USERPROFILE%\.kite\examples\
```

3. Add to PATH:
- Open System Properties
- Click Environment Variables
- Edit PATH variable
- Add: %USERPROFILE%\.kite

4. Close and reopen terminal

### Method 3: Portable Installation

Copy kite.exe to any directory and run directly:

```
C:\path\to\kite.exe run program.kite
```

No PATH modification required.

## Verification

### Check Installation

```
where kite
```

Expected output:
```
C:\Users\<username>\.kite\kite.exe
```

### Check Version

```
kite --help
```

Should display help information.

### Run Test Program

```
kite run examples\01_hello_world.kite
```

Expected output:
```
Hello, World!
```

### Start REPL

```
kite repl
```

Should start interactive shell.

## Directory Structure

After installation:

```
%USERPROFILE%\.kite\
├── kite.exe
├── kite_icon.ico
├── stdlib\
│   ├── math.kite
│   ├── text.kite
│   ├── io.kite
│   └── ...
├── examples\
│   ├── 01_hello_world.kite
│   ├── 02_variables.kite
│   └── ...
└── README.md
```

## Configuration

### Default Paths

- Installation: %USERPROFILE%\.kite
- User projects: Any location
- Standard library: %USERPROFILE%\.kite\stdlib

### Environment Variables

The installer adds the installation directory to PATH. No other environment variables are required.

## WebView Setup

### Requirements

WebView features require:
- Windows 10 version 1803 or later
- Edge browser (pre-installed on Windows 10/11)

### Fallback

If Edge is unavailable, Kite automatically falls back to tkinter-based GUI.

### Testing WebView

```
kite run examples\08_webview.kite
```

If successful, a window will appear.

## Troubleshooting

### Command Not Found

Problem: Running `kite` results in "command not found"

Solutions:
1. Close and reopen terminal after installation
2. Verify PATH contains installation directory
3. Use full path: %USERPROFILE%\.kite\kite.exe

### Permission Denied

Problem: Cannot write to installation directory

Solutions:
1. Run installer as administrator
2. Choose different installation directory
3. Use portable installation

### WebView Not Working

Problem: WebView windows do not appear

Solutions:
1. Verify Windows 10/11 with Edge browser
2. Update Windows to latest version
3. Use fallback mode (automatic)

### Missing Files

Problem: Examples or stdlib not found

Solutions:
1. Re-run installer
2. Manually copy missing directories
3. Download complete package

## Uninstallation

### Automated

If uninstaller is available:

```
%USERPROFILE%\.kite\uninstall.bat
```

### Manual

1. Remove installation directory:
```
rmdir /S %USERPROFILE%\.kite
```

2. Remove from PATH:
- Open System Properties
- Click Environment Variables
- Edit PATH variable
- Remove: %USERPROFILE%\.kite

3. Close and reopen terminal

## Upgrade

### From Previous Version

1. Backup existing projects
2. Run new installer
3. Installer will overwrite existing files
4. Standard library and examples will be updated
5. Your projects remain unchanged

### Preserving Settings

User projects outside the installation directory are not affected by upgrades.

## Multiple Versions

To install multiple versions:

1. Install each version to different directory
2. Use full paths when running:
```
C:\path\to\kite-v1\kite.exe run program.kite
C:\path\to\kite-v2\kite.exe run program.kite
```

3. Or create batch files:
```
@echo off
C:\path\to\kite-v1\kite.exe %*
```

## Security

### Executable Verification

The kite.exe file is a standalone executable compiled with PyInstaller. It contains:
- Python runtime
- Kite interpreter
- Required libraries
- No external network access by default

### Secure Mode

Run Kite in secure mode:

```
kite --secure run program.kite
```

Secure mode:
- Restricts file system access
- Disables network operations
- Enforces sandboxing

## Support

For installation issues:
1. Check this guide
2. Verify system requirements
3. Review error messages
4. Use portable installation as fallback

## Version

This guide is for Kite v1.0.0.

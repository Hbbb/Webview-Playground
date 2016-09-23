# Webview Playground
The WebView playground is aimed at solving the following problems:
- We are unable to easily see detailed information about the runtime environment of ads within the Verve SDK WebViews
  - JS errors
  - Bad/Excessive HTTP calls
  - Browser warnings
- We cannot easily modify the endpoint to fetch tags, or copy/paste a tag to load into the Verve SDK

The idea is to both provide an easy way to load a tag into the SDK environment for development and testing, but also to leverage the UI to visually see what's going on in our Ad's WebView.

## Getting Started
Clone the repository to a directory
```bash
git clone git@github.com:Hbbb/webview-playground.git
```

Open the directory in Xcode and build/run the app.

## Usage
Currently, the app only supports copy/pasted ad tags. Paste an ad tag (with mocked macros) into the tag config field, and click "Load Preview" button to view the ad.

You can use Safari debugging tools to inspect the ads within the WebView containers.

## TODO
- Create mockup of app
- Build tabbed layout with 3 tabs (config, preview, report)
- Integrate the Verve iOS SDK
  - Place SDK UI in preview tab
- Add support for overriding the `adcel.vervemobile.com/banner ` call

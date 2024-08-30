{{flutter_js}}
{{flutter_build_config}}

const loadingDiv = document.createElement("div");
loadingDiv.id = "loading";
document.body.appendChild(loadingDiv);
const icon = document.createElement("img");
icon.src = "icons/Icon-192.png";
loadingDiv.appendChild(icon);

// Custom bootstrap script to create a loading animation
_flutter.loader.load({
  onEntrypointLoaded: async function (engineInitializer) {
    const appRunner = await engineInitializer.initializeEngine();

    // Remove the loading spinner when the app runner is ready
    if (document.body.contains(loadingDiv)) {
      document.body.removeChild(loadingDiv);
    }
    await appRunner.runApp();
  },
});

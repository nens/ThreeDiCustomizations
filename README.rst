ThreeDiCustomizations
=====================

A QGIS plugin containing N&S 3Di styles. To be used together with the ThreeDiToolbox plugin, as part of the 3Di-modeller-interface.

Installation Requirements
-------------------------
- Repository contains an already compiled gui file ``gui/generated/resources_rc.py``. In case of style changes (icons and/or splashscreen), new style must be rebuilt by running 
``# pyrcc5 ui/resources.qrc -o gui/generated/resources_rc.py``.
pyrcc5 is part of the Debian package ``pyqt-dev-tools``.

Deployment
----------

Make sure you have ``zest.releaser`` with ``qgispluginreleaser`` installed. The
``qgispluginreleaser`` ensures the metadata.txt, which is used by the qgis plugin
manager, is also updated to the new version. To make a new release enter the following
commands and follow their steps::

    $ cd /path/to/the/plugin
    $ fullrelease

This creates a new release and optionally pushes to github. The deployment step is configured as a Github action. 
In case the commit is tagged with a version (which zest.releaser) does, a zip file ``ThreeDiCustomizations.<version>.zip`` is created
(via ``make zip`` and uploaded to https://artifacts.lizard.net/ via the ``upload-artifact.sh`` script. 

Installation
------------
- Does not require manual istallation, is supposed to be delivered as part of the 3Di-modeller-interface and will be downloaded while running the 3Di-modeller-interface-installer build script.
- When installing manually, copy the directory ThreeDiCustomizations to ``$HOME/.local/share/QGIS/QGIS3/profiles/default/python/plugins/`` (Linux) or ``C:\\Users\<username>\AppData\Roaming\QGIS\QGIS3\profiles\default\python\plugins\`` (Windows).
- In case the plugin manager in QGIS is properly configured, the plugin should also be available via the plugin manager.


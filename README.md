# **Rock art** developments for 3D studies<img src="www/prj_rockart.png" width='150px' align="right"/>

Multi-scale and multi-paradigm approaches with open source softwares to manage 3D data:

* Acquisition:
    - Data comes from ground- or aerial-photogrammetry, lasergrammetry, ConFocal, etc., like models for: the [*Roche du Sorcier*](https://zoometh.github.io/3DHOP/minimal/8_2_34.html), the [Qasr el-Hallabat castle](https://eamena-oxford.github.io/reveal.js/#/3/2), an [experimental peeble](https://zoometh.github.io/3DHOP/minimal/lithic_tool.html) or its [working surface](https://zoometh.github.io/3DHOP/minimal/lithic_tool_cf.html)

* Processing:
    - Data is processes with softwares like: [**Meshroom**](https://meshroom-manual.readthedocs.io/en/latest/) a pipeline for 3D photogrammetry which can be run online from a [Python script](https://github.com/zoometh/rockart/blob/main/MeshroomColab_3dapaame.ipynb); [**Blender**](https://www.blender.org/) which allows to create new 3D features like 3D shapes to locate annotations; [**Meshlab**](https://www.meshlab.net/) which allows to manipulate meshes and directly export 3D objects ready for 3D streaming;

* Storage and vizualisation:
    - Storage and vizualisation is directly done online with softwares like: [**GitHub**](https://github.com/topics/3d) offers a simple platform to host 3D objects and 3D viewers among other things, it is compliant with the [WebGL](https://get.webgl.org/) library (ex: [www/confoc_3d.stl](https://github.com/zoometh/rockart/blob/main/www/confoc_3d.stl)); [**3DHOP**](https://3dhop.net/) (same creators as Meshlbab)   provides a programmable HTML framework for the display of 3D streaming objects;

* Enhancement:
    - Dissemination and integration of these 3D files in scientific document is done with [**R Mardown**](https://rmarkdown.rstudio.com/) documents (ex: [Mont Bego rock-art site](https://zoometh.github.io/rockart/));  [**reveal.js**](https://revealjs.com/) an HTML framework for Powerpoint-like presentations. It allows to add <iframes>, like 3DHOP windows, and to make them interactive;
  
  
Yocto Dunfell playground
========================

provides a basic yocto playground for testing dunfell version


How to use
----------

example::

    git clone https://github.com/reinhardd/dunfell_demo.git 
    cd dunfell_demo
    git submodule add -b dunfell git://git.yoctoproject.org/poky layers/poky
    git submodule add -b dunfell git://git.openembedded.org/meta-openembedded layers/meta-openembedded
    #
    # add more layers if you like
    #
    # edit repo.txt
    #
    cp podman.env.sample podman.env
    cp build.env.sample build.env
    # edit podman.env and build.env as you like    

    # create the download directory
    # if you need to use an existing location remove the mkdir cmd 
    # and edit DL_DIR in build.env
    mkdir -p ../dunfell_downloads
    
    env/podman_build_shell

now you are inside bitbake shell::

    1000@4a99594c25a6:~/build_qemux86_64$
    1000@4a99594c25a6:~/build_qemux86_64$ bitbake-layers show-layers
    NOTE: Starting bitbake server...
    layer                 path                                      priority
    ==========================================================================
    meta                  /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/poky/meta  5
    meta-poky             /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/poky/meta-poky  5
    meta-yocto-bsp        /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/poky/meta-yocto-bsp  5
    meta-oe               /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/meta-openembedded/meta-oe  6
    meta-python           /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/meta-openembedded/meta-python  7
    meta-networking       /home/reinhard/Develop/oe_yocto/test/my_own_project/layers/meta-openembedded/meta-networking  5
    1000@4a99594c25a6:~/build_qemux86_64$
    1000@4a99594c25a6:~/build_qemux86_64$ bitbake core-image-minimal

For more complete information have a look at https://www.yoctoproject.org/

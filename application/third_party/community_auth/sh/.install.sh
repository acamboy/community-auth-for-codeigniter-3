#!/bin/bash
# core
if [ ! -f ./core/MY_Controller.php ]; then
	cp ./third_party/community_auth/core/MY_Controller.php ./core/MY_Controller.php 
fi

if [ ! -f ./core/MY_Input.php ]; then
	cp ./third_party/community_auth/core/MY_Input.php ./core/MY_Input.php 
fi

if [ ! -f ./core/MY_Model.php ]; then
	cp ./third_party/community_auth/core/MY_Model.php ./core/MY_Model.php
fi

# hooks
if [ ! -f ./hooks/auth_constants.php ]; then
	cp ./third_party/community_auth/hooks/auth_constants.php ./hooks/auth_constants.php
fi

# controllers
if [ ! -f ./controllers/Examples.php ]; then
	cp ./third_party/community_auth/controllers/Examples.php ./controllers/Examples.php 
fi

if [ ! -f ./controllers/User.php ]; then
	cp ./third_party/community_auth/controllers/User.php ./controllers/User.php
fi

# public_root
if [ ! -f ./../.htaccess ]; 
then
	cp ./third_party/community_auth/public_root/.htaccess ./../.htaccess
else
	sed -i '1s/^/# MAKE SURE TO LEAVE THE NEXT TWO LINES HERE.\n# BEGIN DENY LIST --\n# END DENY LIST --\n\n/' ./../.htaccess
fi

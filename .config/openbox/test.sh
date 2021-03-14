#!/bin/sh
cat << _EOF_
    <openbox_pipe_menu>
        <item label="Remove Transparency from Target Window">
            <action name="Execute">
                <execute>transset 1</execute>
            </action>
        </item>
</openbox_pipe_menu>
_EOF_

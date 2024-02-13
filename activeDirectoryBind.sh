#!/bin/bash
# $1 — AD domain — required
# $2 — connection username — required
# $3 - connection password — required
# $4 — computer OU — required
# $5 - create mobile account at login, "enable" or "disable" — required
# $6 — force local home directory on startup disk, "enable" or "disable" — required
# $7 - Use UNC path from Active Directory to derive network home location, "enable" or "disable" — required
# $8 - network protocol: "afp", "smb" or "nfs" — required
# $9 — path to default user shell
# $10 - attribute to map uid to
# $11 - attribute to map gid to
# $12 - attribute to map ggid to
# $13 - preferred domain server
# $14 - admin groups names, comma separated
# $15 - allow authentication from any domain in the forest, "enable" or "disable" — required

if [[ ${9} == "" ]]
then
    shellPath="/bin/bash"
else
    shellPath=${9}
fi

computerName=$(hostname)

dsconfigad -add ${1} \
-username ${2} \
-password ${3} \
-computer ${computerName} \
-ou ${4} \
-force \
-mobile ${5} \
-mobileconfirm disable \
-localhome ${6} \
-useuncpath ${7} \
-protocol ${8} \
-shell ${9} \
-uid ${10} \
-gid ${11} \
-ggid ${12} \
-preferred ${13} \
-groups ${14} \
-alldomains ${15}
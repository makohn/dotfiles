# Guide on how to setup GPG on macOS

### see here: https://unix.stackexchange.com/a/392355

- run ```brew install gnupg``` to install the GNU PGP Utils
- run ```gpg --import private.asc``` to import the secret key
- run ```gpg --list-secret-keys --keyid-format LONG``` to validate 
- run ```gpg --list-secret-keys --keyid-format LONG | grep -i sec | sed 's@.*/@@' | awk '{print $1}' | pbcopy``` 
to get the fingerprint of the secret key
- run ```gpg --edit-key {KEY} trust quit``` where you insert the copied fingerprint
- ```# enter 5<RETURN>```
- ```# enter y<RETURN>```
- run ```git config --global user.signingkey=<KEY>``` to enable signed git commits
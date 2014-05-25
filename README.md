# ChainMan
## Use Keychain Services easily

### Intro
ChainMan is a Manager Class for Keychain Services on OS X with fast and easy usage in mind.

### How do I ChainMan?
Just add ChainMan.h and ChainMan.m to your project and import it.

Store password:
```obj-c
[ChainMan storePasswordInKeychainForServiceName:@"MyServiceName" withAccountName:@"MyAccountName" andPassword:@"MyPassword"];
```

Get password:
```obj-c
NSString *myPassword = [ChainMan getPasswordFromKeychainFromServiceName:@"MyServiceName" forAccountName:@"MyAccountName"];
```

### How do I get?
Right here!

### How do I compile?
You should know that. :P

### License?
Pretty much the BSD license, just don't repackage it and call it your own please!

Also if you do make some changes, feel free to make a pull request and help make things more awesome!

### Contact Info?
If you have any support requests please feel free to email me at shinvou[at]gmail[dot]com.

Otherwise, feel free to follow me on twitter: [@biscoditch](https:///www.twitter.com/biscoditch)!

### Special Thanks
/
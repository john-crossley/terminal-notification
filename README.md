# OSX Notification

This script was customised for use with GrowlNotify. Using the [Watchr](https://github.com/mynyml/watchr) gem you can use automated testing with Growl output.

Someone has probs done this already so feel free to use it.

## To Use
1. First install the Watchr Gem `gem install watchr`
2. Next download and install [GrowlNotify](http://growl.info/extras.php)
3. Then just place the notify.rb in the directory you are testing and type `watchr notify.rb`

That's pretty much it everything should work. Oh if you want the success and failure icons you need to create a directory in your home folder called **..ttest/img**

`mkdir ~/.ttest/img` Place an error icon called **red.png** and a success icon called **green.png**

I think thats it

This application assumes you have your directory structure like so:

*Create a **test** folder and ensure your tests are are named like so File**Test.php** otherwise you'll have to modify the ruby script to tailor to your preference.*

Check out the original guy over at [Nettuts](http://net.tutsplus.com/tutorials/php/automatic-testing-for-tdd-with-php/)

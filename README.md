Hi, this is Alex's Blog, built with Ruby on Rails

# Ruby Rails MVC Overview; (Because Not All of Us Are Experts)


Here's a quick refresher on how Rails applications work: 

![screenshot 8](https://user-images.githubusercontent.com/20220366/35650844-1c1592e4-06a3-11e8-8ac8-b68a635b2a68.png)

Rails is built on the <b>MVC</b> system, depicted in the image above. The <b>router</b> points the browser where to go, which then communicates with the <b>controller.</b> The controller files are written in ruby, and they house all of the Ruby methods which govern how the application behaves. The controller will communicate with the <b>model</b>, and the model is a file that communicates with the database. Model files are also written in ruby, and simply because a model exists, it will create getters and senders to the database in relation to whatever it's connected to. For instance, I have a model called `article.rb` and it just houses code that validates an article before it's submitted to the database. And finally, the <b>view</b> which is basically the viewer sees; it's the front end of the application.

# Application Structure

## Models

![screenshot 98](https://user-images.githubusercontent.com/20220366/35651919-0a27277e-06a7-11e8-8bce-cc8e77da6db9.png)

## Controllers

![screenshot 99](https://user-images.githubusercontent.com/20220366/35651947-2431d6dc-06a7-11e8-84ac-b2d8e5bacf68.png)

## Views

![screenshot 100](https://user-images.githubusercontent.com/20220366/35651978-4bfd7068-06a7-11e8-870d-88b8c76be0b5.png)




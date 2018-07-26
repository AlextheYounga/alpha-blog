	$(document).ready(function(){
		var quoteSource=[
		{
			quote: "It takes a big man to cry, but it takes a bigger man to laugh at that man",
			name:"Jack Handey, Deep Thoughts"
	    }, 
	    {
	    	quote:"The dumber people think you are, the more surprised they're going to be when you kill them",
	    	name:"William Clayton"
	    },
	    {
	    	quote:"People don’t care how much you know until they know how much you care.",
	    	name:"John C. Maxwell, Leadership 101"
	    },
	    {
	    	quote:"The man who grasps principles can successfully handle his own methods. The man who tries methods, ignoring principles is sure to have trouble",
	    	name:"Ralph Waldo Emerson",
	    },
	    {
	    	quote:"People go, 'Do you think the vast majority of the world is wrong?' …Well, yes. I don’t know how to say that nicely, but yes.",
	    	name:"Tim Minchin"
	    },
	    {
	    	quote:"Life is a bridge. Pass over but build no house upon it.",
	    	name:"Old Hindu saying"
	    },
	    {
	    	quote:"I begin to speak only when I am certain what I'll say isn't better left unsaid.",
	    	name:"Cato the Younger"
	    },
	    {
	    	quote:"The chief task in life is simply this: to identify and separate matters so that I can say clearly to myself which are externals not under my control, and which have to do with the choices I actually control. Where do I look for good and evil? Not to the externals, but within myself to the choices that are my own.",
	    	name:"Epictetus, Discourses"
	    },
	    {
	    	quote:"In the end, what would gain from everlasting remembrance? Absolutely nothing. So what is left worth living for? This alone: justice in thought, goodness in action, speech that cannot deceive, and a disposition glad of whatever comes, welcoming it as necessary, as familiar, as flowing from the same source and fountain as yourself.",
	    	name:"Marcus Aurelius, Meditations"
	    },
	    {
	    	quote:"The older I grow the more I distrust the familiar doctrine that age brings wisdom.",
	    	name:"H.L. Mencken"
	    },
	    {
	    	quote:"Man is a beautiful machine that works very badly.",
	    	name:"H.L. Mencken"
	    },
	    {
	    	quote:"A city workman, oppressed by Prohibition, mourns the loss of his beer, not the loss of his liberty.",
	    	name:"H.L. Mencken, Notes on Democracy"
	    },
	    {
	    	quote:"But let me offer you my definition of social justice: I keep what I earn and you keep what you earn. Do you disagree? Well then tell me how much of what I earn belongs to you - and why?",
	    	name:"Walter E. Williams, All It Takes Is Guts: A Minority View"
	    },
	    {
	    	quote: "There is no way of wasting time, because what is time for except to be wasted. And who can say you are wasting time other than you?",
	    	name:"Alan Watts, Out of Your Mind"
	    },
	    {
	    	quote:"You know that if you get in the water and have nothing to hold on to, but try to behave as you would on dry land, you will drown. But if, on the other hand, you trust yourself to the water and let go, you will float.",
	    	name:"Alan Watts"
	    },
	    {
	    	quote:"People who think they know everything are a great annoyance to those of us who do.",
	    	name:"Isaac Asimov"
	    },
	    {
	    	quote:"Of course, you can’t force your mind to be silent. That would be like trying to smooth ripples in water with a flatiron. Water becomes clear and calm only when left alone.",
	    	name:"Alan Watts"
	    },
	    {
	    	quote:"I think Abe Lincoln said it best when he said 'I'm often misquoted. And I love riding motorcycles! Vvvrroooom!!!'",
	    	name:"Bo Burnham"
	    },
	    {
	    	quote:"Tragedy is when I cut my finger. Comedy is when you walk into an open sewer and die.",
	    	name:"Mel Brooks"
	    },
	    {
	    	quote:"Consider the daffodil. And while you're doing that, I'll be over here, going through your stuff.",
	    	name:"Jack Handey, Deep Thoughts"
	    },
	    {
	    	quote:"Good, then we will fight in the shade.",
	    	name:"Dienekes, upon hearing the arrows of Xerxes's army would blot out the Sun"
	    },
	    {
	    	quote:"I’d say, don’t take advice from people like me, who got very lucky. We’re very biased, like- Taylor Swift telling you to follow your dreams is like a lottery winner saying, liquidize your assets, buy Power Ball tickets! It works!",
	    	name:"Bo Burnham, after being asked what advice he'd give to young people"
	    },
	    {
	    	quote:"Two elements must be rooted out once and for all: The fear of future suffering, and the recollection of past suffering. Since the latter no longer concerns me, and the former concerns me not yet.",
	    	name:"Seneca"
	    },
	    {
	    	quote:"How many have laid waste to your life when you weren't aware of what you were losing, how much of it was wasted in pointless grief, foolish joy, greedy desire, and social amusements- how little of your own was left to you. You will realize you are dying before your time.",
	    	name:"Seneca, On the Brevity of Life"
	    },
	    {
	    	quote:"The greatest portion of peace of mind is doing nothing wrong. Those who lack self-control live disoriented and disturbed lives.",
	    	name:"Seneca, Moral Letters"
	    },
	    {
	    	quote:"Work nourishes noble minds.",
	    	name:"Seneca, Moral Letters"
	    },
	    {
	    	quote:"When you first rise in the morning tell yourself: I will encounter busybodies, ingrates, egomaniacs, liars, the jealous and cranks. They are all stricken with these afflictions because they don't know the difference between good and evil. Because I have understood the beauty of good and the ugliness of evil, I know that these wrong-doers are still akin to me…and that none can do me harm, or implicate me in ugliness- nor can I be angry at my relatives or hate them. For we are made for cooperation.",
	    	name:"Marcus Aurelius, Meditations"
	    },
	    {
	    	quote:"It is quite impossible to unite happiness with a yearning for what we don't have. Happiness has all that it wants, and resembling the well-fed, there shouldn't be hunger or thirst.",
	    	name:"Epictetus, Discourses"
	    },
	    {
	    	quote:"A podium and a prison is each a place, one high and the other low, but in either place your freedom of choice can be maintained if you so wish.",
	    	name:"Epictetus, Discourses"
	    },
	    {
	    	quote:"Some things are in our control, while others are not. We control our opinion, choice, desire, aversion, and, in a word, everything of our own doing. We don't control our body, property, reputation, position, and, in a word, everything not of our own doing. Even more, the things in our control are by nature free, unhindered, and unobstructed, while those not in our control are weak, slavish, can be hindered, and are not our own.",
	    	name:"Epictetus, Enchiridion"
	    },
	    {
	    	quote:"Keep constant guard over your peace of mind.",
	    	name:"Epictetus, Discourses"
	    },
	    {
	    	quote:"Who then is invincible? The one who cannot be upset by anything outside their reasoned choice.",
	    	name:"Epictetus, Discourses"
	    },
	    {
	    	quote:"Were you to live three thousand years, or even a countless multiple of that, keep in mind that no one ever loses a life other than the one they are living, and no one ever lives a life other than the one they are losing. The longest and the shortest life, then, amount to the same, for the present moment lasts the same for all and is all anyone possesses. No one can lose either the past or the future, for how can someone be deprived of what's not theirs?",
	    	name:"Marcus Aurelius, Meditations"
	    },
	    {
	    	quote:"You are afraid of dying. But come now, how is this life of yours anything but death?",
	    	name:"Seneca"
	    },
	    {
	    	quote:"The reason why we have two ears and only one mouth is so that we might listen more and talk less.",
	    	name:"Zeno"
	    },
	    {
	    	quote:"The best revenge is not to be like your enemy.",
	    	name:"Marcus Aurelius, Meditations"
	    },
	    {
	    	quote:"Look again at that dot. That's here. That's home. That's us. On it everyone you love, everyone you know, every human being you ever heard of... -on a mote of dust suspended in a sunbeam.",
	    	name:"Carl Sagan, pointing to a picture of Earth from 4 billion miles away"
	    },
	    {
	    	quote:"It's ruinous for the soul to be anxious about the future and miserable in advance of misery...",
	    	name:"Seneca"
	    },
	    {
	    	quote:"If you should ever turn your will to things outside your control in order to impress someone, be sure that you have wrecked your whole purpose in life. Be content, then, to be a philosopher in all that you do, and if you wish also to be seen as one, show yourself first that you are and you will succeed.",
	    	name:"Epictetus, Discourses"
	    },
	    {
	    	quote:"I may wish to be free from torture, but if the time comes for me to endure it, I'll wish to bear it courageously with bravery and honor.",
	    	name:"Seneca"
	    },
	    {
	    	quote:"In the time it will take to motivate yourself to begin the work, it could have already been done.",
	    	name:"Unknown"
	    },
	    {
	    	quote:"Relax, nothing is under control.",
	    	name:"Adi Da"
	    },
	    {
	    	quote:"As democracy is perfected, the office of president represents, more and more closely, the inner soul of the people. On some great and glorious day the plain folks of the land will reach their heart’s desire at last and the White House will be adorned by a downright moron",
	    	name:"H.L. Mencken, circa 1920"
	    },
	    {
	    	quote:"It is amazing that people who think we cannot afford to pay for doctors, hospitals, and medication somehow think that we can afford to pay for doctors, hospitals, medication, and a government bureaucracy to administer it.",
	    	name:"Thomas Sowell"
	    },
	    {
	    	quote:"It is no crime to be ignorant of economics, which is, after all, a specialized discipline and one that most people consider to be a ‘dismal science.’ But it is totally irresponsible to have a loud and vociferous opinion on economic subjects while remaining in this state of ignorance.",
	    	name:"Murray Rothbard"
	    },
	    {
	    	quote:"In brief, the aim of each of us to satisfy his own desires, to achieve as far as possible his own highest happiness and well-being, is best forwarded by a common means, Social Cooperation, and cannot be achieved without that means. Here, then, is the foundation on which we may build a rational system of ethics",
	    	name:"Henry Hazlitt, Foundations of Morality"
	    },
	    {
	    	quote:"My lessons weren’t specific to business, but they were fundamental values—integrity, humility, responsibility, work ethic, entrepreneurship, a thirst for knowledge, the desire to make a contribution, and concern for others—that profoundly influenced the way I do business and live my life to this day.",
	    	name:"Charles G. Koch, Good Profit"
	    },
	    {
	    	quote:"Resentment is like drinking poison and waiting for the other person to die.",
	    	name:"Olivia Fox Cabane"
	    },
	    {
	    	quote:"One of the main reasons we’re so affected by our negative thoughts is that we think our mind has an accurate grasp on reality, and that its conclusions are generally valid. This, however, is a fallacy. Our mind’s view of reality can be, and often is, completely distorted.",
	    	name:"Olivia Fox Cabane"
	    },
	    {
	    	quote:"Many who are self-taught far excel the doctors, masters, and bachelors of the most renowned universities.",
	    	name:"Ludwig Von Mises"
	    }
	    
	];
		

		$('#quoteButton').click(function(evt){
			//define the containers of the info we target
			var quote = $('#quoteContainer p').text();
			var quoteGenius = $('#quoteGenius').text();
			//prevent browser's default action
			evt.preventDefault();
			//getting a new random number to attach to a quote and setting a limit
			var sourceLength = quoteSource.length;
			var randomNumber= Math.floor(Math.random()*sourceLength);
			//set a new quote
			for(i=0;i<=sourceLength;i+=1){
			var newQuoteText = quoteSource[randomNumber].quote;
			var newQuoteGenius = quoteSource[randomNumber].name;
			//console.log(newQuoteText,newQuoteGenius);
      var timeAnimation = 500;
      var quoteContainer = $('#quoteContainer');
      //fade out animation with callback
      quoteContainer.fadeOut(timeAnimation, function(){
        quoteContainer.html('');
				quoteContainer.append('<p>'+newQuoteText+'</p>'+'<p id="quoteGenius">'+'-'+newQuoteGenius+'</p>');
        
        //fadein animation.
        quoteContainer.fadeIn(timeAnimation);
      });  
			
			break;
		};//end for loop
	
	});//end quoteButton function
		
		
});//end document ready


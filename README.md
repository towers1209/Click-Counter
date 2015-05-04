# Click-Counter
This is my version of the first exercise app in Lesson 1 of Udacity's "UIKit Fundamentals" class.

I designed this app from scratch using the XCode storyboard, since that's what I am used to and have learned from "Intro to iOS App Development".

This mini-app's spec is as follows:
*  Add an additional label and have it increment with the first
* Add a decrement button
* Add an action that toggles the background color of the view with each click

Implementation:
* A second label of small font tracks was added above the first count label.

* A second button - with green text label "Decrease", that decrements the counter is added. The first button is labeled "Increase"

* Clicking "Increase" button toggles the following:
      Background color - greenColor (if count is odd) or whiteColor (if count is even)
      "Increase" button text color - blackColor (if count is odd) or greenColor (if count is even) 
      
  Clicking "Decrease" button toggles the following:
      Background color - redColor (if count is odd) or whiteColor (if count is even)
      "Decrease" button text color - blackColor (if count is odd) or greenColor (if count is even)
  
  ** The change in button text color is needed  to make the button label visible against the background color.

I hope you find something useful in this version of the exercise app.

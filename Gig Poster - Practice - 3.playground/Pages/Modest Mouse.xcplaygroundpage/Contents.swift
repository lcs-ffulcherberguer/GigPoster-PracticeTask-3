//: # Gig Poster - Practice Task 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![modest-mouse-no-grid](modest-mouse-no-grid.jpg "Modest Mouse")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let darkGrey = Color(hue: 60, saturation: 9, brightness: 56, alpha: 100)
let lightGrey = Color(hue: 71, saturation: 5, brightness: 87, alpha: 100)
let deepYellow = Color(hue: 46, saturation: 99, brightness: 99, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your solution here...

//Set the backgroung color
canvas.fillColor = darkGrey
canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)

////Move the origin
canvas.translate(to: Point(x: 0, y: 400))

//Rotate
canvas.rotate(by: -400)


for i in stride(from: 19, through: 30 * 40, by: 35) {
    
    //Set thickness
    //let thickness = (20)
    
    // Draw the line
    canvas.drawLine(from: Point(x: i, y: 250), to: Point(x: i, y: -400), lineWidth: 20, capStyle:.square)
    
    
        
    }

//Rotate
canvas.rotate(by: 400)

//Draw rectangle
canvas.fillColor = darkGrey
canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 700, height: 200)


//canvas.rotate(by: 20)

//Create black lines
//for position in stride(from: 10, through: 300, by: 25){
    
    //position
    
    //Set thickness of lines
    //let thickness = (200 - position / 10)
    
    //canvas.drawLine(from: Point(x: position, y: 0), to: Point(x: position, y: 360), lineWidth: thickness)
    
    
//}

//Create grey lines

//canvas.fillColor = darkGrey

//for position in stride(from: 0, through: 100, by: 10){
    
    //position
    
    //Set tkickness lines
    //let thickness = position / 10
    
    //canvas.drawLine(from: Point(x: position, y: 0), to: Point(x: position, y: 360), lineWidth: thickness)
    
//}





/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas


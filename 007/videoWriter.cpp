// Code to:
// Capture video from webcam (do not forget to acesse like sudo su).
// Show video capture in the window.
// Save the first image.
// Save the video until ESC key be pressed.


// To run type on terminal: 
// "sudo cmake ." (to build CMake Files)
// "make" (to build the application)
// "./saveVideo" (to execute the application)

// Remenber to: 
// Use terminal like super user (sudo su)
// If find an error to acess CMakeFile type "sudo chmod 777 -R CMakeFiles" (to get permissions to read the folder)

#include "opencv2/opencv.hpp"
#include <opencv2/core/core.hpp>      
#include <opencv2/videoio/videoio.hpp> 

using namespace cv;

int main()
{
    cv::VideoCapture camera0(0); // Objject to camera capturing by device zero.
    if( !camera0.isOpened() ) return 1; // Check if camera is ready.

     // Container to MJPEG codification as .avi video in 15 frames per second and 640 by 480 resolution.
     cv::VideoWriter video("outputVideo.avi", VideoWriter::fourcc('M','J', 'P', 'G'), 15, cv::Size(640, 480), true);

    // Loop to build video
    while(true) {
       
        cv::Mat3b frame0; // Container for image.
        camera0 >> frame0; // Put capture bytes inside the image container.
        imshow("im3", frame0); // Show current image of the video.
        video << frame0; // Put image inside video container.

        //Finish application by Esc key pressed.
        char ch =  waitKey(25);  // Wait for 25 ms for user to hit any key
		if(ch==27) break;  // If Escape Key was hit just exit the loop 
		
		if(ch=='s' || ch=='S') // Save image if s was keyboard
		{
			imwrite("imgSaved.bmp", frame0);			
		}
		
    }

    return 0;
}

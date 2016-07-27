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
#include <iostream>

using namespace cv;
using namespace std;

int main()
{
    VideoCapture camera0(0); // Objject to camera capturing by device zero.
    Mat3b image; // Container for image.
    if( !camera0.isOpened() ) return 1; // Check if camera is ready.

     // Container to MJPEG codification as .avi video in 15 frames per second and 640 by 480 resolution.
     //cv::VideoWriter video("outputVideo.avi", VideoWriter::fourcc('M','J', 'P', 'G'), 15, cv::Size(640, 480), true);

    // Loop to build video
    while(true) {
       
		Mat3b frame0; // Container for image.
        camera0 >> frame0; // Put capture bytes inside the image container.
        imshow("im3", frame0); // Show current image of the video.
        
        //video << frame0; // Put image inside video container.

        //Finish application by Esc key pressed.
        char ch =  waitKey(25);  // Wait for 25 ms for user to hit any key
		if(ch==27) break;  // If Escape Key was hit just exit the loop 
		
		if(ch=='s' || ch=='S') // Save image if s was keyboard
		{
			imwrite("imgSaved.bmp", frame0);
			image = frame0;
			int Hist_R[255] = {};
			int Hist_G[255] = {};
			int Hist_B[255] = {};
			//input.at<int>(Point(i,j))
			for (int i=0; i==image.rows-1; i++){
				for (int j=0; j==image.cols-1; j++){
					Vec3i Pix = image.at<Vec3i>(Point(i,j));
					Hist_R[Pix[0]] = Hist_R[Pix[0]]+1;
					Hist_G[Pix[0]] = Hist_G[Pix[0]]+1;
					Hist_B[Pix[2]] = Hist_B[Pix[0]]+1;
				}
			}
			cout << "R (default) = " << endl;
			cout << Hist_R[0] << endl << Hist_R[1] << endl << Hist_R[2] << endl << Hist_R[3] << endl << Hist_R[4] << endl << Hist_R[254] << endl;
			for (int i=0; i==254; i++){
				printf("%d\n",Hist_R[i]);
				//cout << Hist_R[i] << endl;
			}
		}
		
		
    }
	

    return 0;
}

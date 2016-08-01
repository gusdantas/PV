#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include <opencv2/highgui.hpp>
#include <opencv2/video.hpp>
#include "opencv2/opencv.hpp"
#include <opencv2/core/core.hpp>
#include <opencv2/videoio/videoio.hpp>
#include <stdio.h>
#include <iostream>

using namespace cv;
using namespace std;

void videoMix(char* backFile, char* charFile);

int main(int argc, char* argv[])
{
    //print help information
    //help();
    //check for the input parameter correctness
    if(argc != 4) {
        cerr <<"Incorret input list" << endl;
        cerr <<"exiting..." << endl;
        return EXIT_FAILURE;
    }
    //create GUI windows
    namedWindow("Camera 1");

    if(strcmp(argv[1], "-vids") == 0) {
        //input data coming from a video
        videoMix(argv[2], argv[3]);
    }
    else {
        //error in reading input parameters
        cerr <<"Please, check the input parameters." << endl;
        cerr <<"Exiting..." << endl;
        return EXIT_FAILURE;
    }
    //destroy GUI windows
    destroyAllWindows();
    return EXIT_SUCCESS;
}

void videoMix(char* backFile, char* charFile)
{
    VideoCapture backCap(backFile); // Objject to camera capturing by device zero..
    VideoCapture charCap(charFile);

    // Container to MJPEG codification as .avi video in 15 frames per second and 640 by 480 resolution.
    VideoWriter video("finalVideo.avi", VideoWriter::fourcc('M','J', 'P', 'G'), 15, Size(1920, 480), true);

    // Loop to build video
    while(true) {

        Mat background, character, bwChar, bwCharInv, bwFinal, bwFinalInv; // Container for image.

        backCap >> background; // Put capture bytes inside the image container.
        charCap >> character;

        cvtColor(character,bwChar,COLOR_BGR2GRAY);
        threshold(bwChar, bwChar, 10, 255, THRESH_BINARY);
        bitwise_not(bwChar, bwCharInv);

        bitwise_and(bwChar, background, bwFinal);
        bitwise_and(bwCharInv, background, bwFinalInv);


        imshow("bw", bwFinal); // Show current image of the video.
        //video << merged_frame; // Put image inside video container.

        imshow("bwInv", bwFinalInv); // Show current image of the video.
        //video << merged_frame; // Put image inside video container.

        //Finish application by Esc key pressed.
        char ch =  waitKey(25);  // Wait for 25 ms for user to hit any key
		if(ch==27) break;  // If Escape Key was hit just exit the loop

    }
}

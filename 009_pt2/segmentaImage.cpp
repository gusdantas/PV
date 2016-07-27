// Code to:
// Read an image.
// Show in the window.
// Save as new image.

// To run type on terminal: 
// "sudo cmake ." (to build CMake Files)
// "make" (to build the application)
// "./DisplayImage" (to execute the application)

// Remenber to: 
// Use terminal like super user (sudo su)
// If find an error to acess CMakeFile type "sudo chmod 777 -R CMakeFiles" (to get permissions to read the folder)

#include <opencv2/core/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include "opencv2/imgproc.hpp"
#include <stdio.h>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <vector>
#include <cstddef>

using namespace cv;
using namespace std;


int main()
{

    Mat image, hist; // mat to storage image.
    image = imread( "lenna512.png", 0 ); //Load the image.
    //newImage = image;

    if( image.empty() ) // Check for invalid input.
    {
        cout <<  "Could not open or find the image" << std::endl ;
        return -1;
    }

    namedWindow( "Read, Show and Save Image - window", WINDOW_AUTOSIZE ); // Create a window for display.
    imshow( "Read, Show and Save Image - window", image );
        
    /// Establish the number of bins
	int histSize = 256;

	/// Set the ranges ( for B,G,R) )
	float range[] = { 0, 255 } ;
	const float* histRange = { range };

	bool uniform = true; bool accumulate = false;

	/// Compute the histograms:
	calcHist( &image, 1, 0, Mat(), hist, 1, &histSize, &histRange, uniform, accumulate );
	
	// Draw the histograms for B, G and R
	int hist_w = 512; int hist_h = 400;
	int bin_w = cvRound( (double) hist_w/histSize );

	Mat histImage( hist_h, hist_w, CV_8UC3, Scalar(0,0,0) );

	/// Normalize the result to [ 0, histImage.rows ]
	normalize(hist, hist, 0, histImage.rows, NORM_MINMAX, -1, Mat() );

	/// Draw for each channel
	for( int i = 1; i < histSize; i++ )
	{
		line( histImage, Point( bin_w*(i-1), hist_h - cvRound(hist.at<float>(i-1)) ) ,
						Point( bin_w*(i), hist_h - cvRound(hist.at<float>(i)) ),
						Scalar( 255, 0, 0), 2, 8, 0  );
	}
	
	hist.sort();

	/// Display
	namedWindow("calcHist Demo", WINDOW_AUTOSIZE );
	imshow("calcHist Demo", histImage );

    waitKey(0); // Wait for a keystroke in the window, Esc for exit.
    return 0;
}

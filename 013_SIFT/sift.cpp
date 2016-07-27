#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <opencv2/features2d/features2d.hpp>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

using namespace cv;

int main(int argc, const char* argv[])
{
    Mat input = imread("input.jpg", 0); //Load as grayscale

    SIFT::SIFT detector;
    std::vector<KeyPoint> keypoints;
    detector.detect(input, keypoints);

    // Add results to image and save.
    Mat output;
    drawKeypoints(input, keypoints, output);
    imwrite("sift_result.jpg", output);

    return 0;
}
